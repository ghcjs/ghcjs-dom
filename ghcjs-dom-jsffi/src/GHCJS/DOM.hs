{-# LANGUAGE CPP, ForeignFunctionInterface, OverloadedStrings #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM (
  globalThis
, globalThisUnchecked
, currentWindow
, currentWindowUnchecked
, currentDocument
, currentDocumentUnchecked
, syncPoint
, syncAfter
, waitForAnimationFrame
, nextAnimationFrame
, AnimationFrameHandle
, inAnimationFrame
, inAnimationFrame'
, catch
, bracket
) where

import Control.Applicative ((<$>))
import Control.Exception (catch, bracket)

import Data.Maybe (fromJust)

import GHCJS.Concurrent (OnBlocked(..))
import JavaScript.Web.AnimationFrame (waitForAnimationFrame, AnimationFrameHandle, inAnimationFrame)

import GHCJS.DOM.Types

foreign import javascript unsafe "$r = globalThis"
  ghcjs_globalThis :: IO (Nullable GlobalThis)
foreign import javascript unsafe "$r = window"
  ghcjs_currentWindow :: IO (Nullable Window)
foreign import javascript unsafe "$r = document"
  ghcjs_currentDocument :: IO (Nullable Document)

globalThis :: MonadDOM m => m (Maybe GlobalThis)
globalThis = liftDOM $ nullableToMaybe <$> ghcjs_globalThis
globalThisUnchecked :: MonadDOM m => m GlobalThis
globalThisUnchecked = liftDOM $ fromJust <$> globalThis
currentWindow :: MonadDOM m => m (Maybe Window)
currentWindow = liftDOM $ nullableToMaybe <$> ghcjs_currentWindow
currentWindowUnchecked :: MonadDOM m => m Window
currentWindowUnchecked = liftDOM $ fromJust <$> currentWindow
currentDocument :: MonadDOM m => m (Maybe Document)
currentDocument = liftDOM $ nullableToMaybe <$> ghcjs_currentDocument
currentDocumentUnchecked :: MonadDOM m => m Document
currentDocumentUnchecked = liftDOM $ fromJust <$> currentDocument

syncPoint :: IO ()
syncPoint = return ()

syncAfter :: IO () -> IO ()
syncAfter = id

nextAnimationFrame :: (Double -> JSM a) -> JSM a
nextAnimationFrame f = waitForAnimationFrame >>= f

{- |
     Run the action in an animationframe callback. The action runs in a
     synchronous thread, and is passed the high-performance clock time
     stamp for that frame.  On GHCJS this version will continue
     asynchronously if it is not possible to complete the callback
     synchronously.
 -}
inAnimationFrame' :: (Double -> JSM ())  -- ^ the action to run
                 -> JSM AnimationFrameHandle
inAnimationFrame' = inAnimationFrame ContinueAsync
