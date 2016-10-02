{-# LANGUAGE CPP, ForeignFunctionInterface, OverloadedStrings #-}
{-# LANGUAGE JavaScriptFFI #-}
module GHCJS.DOM (
  currentWindow
, currentDocument
, run
, syncPoint
, syncAfter
, catch
, bracket
) where

import Control.Applicative ((<$>))
import Control.Exception (catch, bracket)

import GHCJS.DOM.Types

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

syncPoint :: IO ()
syncPoint = return ()

syncAfter :: IO () -> IO ()
syncAfter = id
