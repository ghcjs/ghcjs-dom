{-# LANGUAGE CPP, ForeignFunctionInterface, OverloadedStrings #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM (
  currentWindow
, currentDocument
, run
, postGUISync
, postGUIAsync
) where

import Control.Applicative ((<$>))

import GHCJS.DOM.Types

postGUIAsync :: IO () -> IO ()
postGUIAsync = id

postGUISync :: IO a -> IO a
postGUISync = id

foreign import javascript unsafe "$r = window"
  ghcjs_currentWindow :: IO (Nullable Window)
foreign import javascript unsafe "$r = document"
  ghcjs_currentDocument :: IO (Nullable Document)

currentWindow :: IO (Maybe Window)
currentWindow = nullableToMaybe <$> ghcjs_currentWindow
currentDocument :: IO (Maybe Document)
currentDocument = nullableToMaybe <$> ghcjs_currentDocument

run :: Int -> IO () -> IO ()
run _ = id
