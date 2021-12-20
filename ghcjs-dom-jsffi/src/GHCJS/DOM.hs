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

-- This type is used to access the `globalThis` (see https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/globalThis)
newtype GlobalThis = GlobalThis { unGlobalThis :: JSVal }

instance Eq (GlobalThis) where
  (GlobalThis a) == (GlobalThis b) = js_eq a b

instance PToJSVal GlobalThis where
  pToJSVal = unGlobalThis
  {-# INLINE pToJSVal #-}

instance PFromJSVal GlobalThis where
  pFromJSVal = GlobalThis
  {-# INLINE pFromJSVal #-}

instance ToJSVal GlobalThis where
  toJSVal = return . unGlobalThis
  {-# INLINE toJSVal #-}

instance FromJSVal GlobalThis where
  fromJSVal = return . fmap GlobalThis . maybeJSNullOrUndefined
  {-# INLINE fromJSVal #-}

instance IsEventTarget GlobalThis
instance IsWindowOrWorkerGlobalScope GlobalThis
instance IsGlobalPerformance GlobalThis
instance IsGlobalEventHandlers GlobalThis
instance IsGlobalCrypto GlobalThis
noGlobalThis :: Maybe GlobalThis
noGlobalThis = Nothing
{-# INLINE noGlobalThis #-}

foreign import javascript unsafe "$r = globalThis"
  ghcjs_globalThis :: IO (Nullable GlobalThis)
foreign import javascript unsafe "$r = window"
  ghcjs_currentWindow :: IO (Nullable Window)
foreign import javascript unsafe "$r = document"
  ghcjs_currentDocument :: IO (Nullable Document)

globalThis :: MonadDOM m => m (Maybe GlobalThis)
globalThis = liftDOM $ nullableToMaybe <$> ghcjs_currentGlobalThis
globalThisUnchecked :: MonadDOM m => m GlobalThis
globalThisUnchecked = liftDOM $ fromJust <$> currentGlobalThis
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
