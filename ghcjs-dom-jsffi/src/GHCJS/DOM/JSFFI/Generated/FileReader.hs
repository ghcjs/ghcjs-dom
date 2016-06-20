{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FileReader
       (js_newFileReader, newFileReader, js_readAsArrayBuffer,
        readAsArrayBuffer, js_readAsBinaryString, readAsBinaryString,
        js_readAsText, readAsText, js_readAsDataURL, readAsDataURL,
        js_abort, abort, pattern EMPTY, pattern LOADING, pattern DONE,
        js_getReadyState, getReadyState, js_getResult, getResult,
        js_getError, getError, loadStart, progress, load, abortEvent,
        error, loadEnd, FileReader, castToFileReader, gTypeFileReader)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"FileReader\"]()"
        js_newFileReader :: IO FileReader

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation> 
newFileReader :: (MonadIO m) => m FileReader
newFileReader = liftIO (js_newFileReader)
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        js_readAsArrayBuffer :: FileReader -> Nullable Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsArrayBuffer Mozilla FileReader.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadIO m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsArrayBuffer self blob
  = liftIO
      (js_readAsArrayBuffer (self) (maybeToNullable (fmap toBlob blob)))
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        js_readAsBinaryString :: FileReader -> Nullable Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsBinaryString Mozilla FileReader.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadIO m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsBinaryString self blob
  = liftIO
      (js_readAsBinaryString (self) (maybeToNullable (fmap toBlob blob)))
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        js_readAsText :: FileReader -> Nullable Blob -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsText Mozilla FileReader.readAsText documentation> 
readAsText ::
           (MonadIO m, IsBlob blob, ToJSString encoding) =>
             FileReader -> Maybe blob -> encoding -> m ()
readAsText self blob encoding
  = liftIO
      (js_readAsText (self) (maybeToNullable (fmap toBlob blob))
         (toJSString encoding))
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        js_readAsDataURL :: FileReader -> Nullable Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsDataURL Mozilla FileReader.readAsDataURL documentation> 
readAsDataURL ::
              (MonadIO m, IsBlob blob) => FileReader -> Maybe blob -> m ()
readAsDataURL self blob
  = liftIO
      (js_readAsDataURL (self) (maybeToNullable (fmap toBlob blob)))
 
foreign import javascript unsafe "$1[\"abort\"]()" js_abort ::
        FileReader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.abort Mozilla FileReader.abort documentation> 
abort :: (MonadIO m) => FileReader -> m ()
abort self = liftIO (js_abort (self))
pattern EMPTY = 0
pattern LOADING = 1
pattern DONE = 2
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: FileReader -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readyState Mozilla FileReader.readyState documentation> 
getReadyState :: (MonadIO m) => FileReader -> m Word
getReadyState self = liftIO (js_getReadyState (self))
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        FileReader -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
getResult :: (MonadIO m) => FileReader -> m JSVal
getResult self = liftIO (js_getResult (self))
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        FileReader -> IO (Nullable FileError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.error Mozilla FileReader.error documentation> 
getError :: (MonadIO m) => FileReader -> m (Maybe FileError)
getError self = liftIO (nullableToMaybe <$> (js_getError (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadstart Mozilla FileReader.onloadstart documentation> 
loadStart :: EventName FileReader ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onprogress Mozilla FileReader.onprogress documentation> 
progress :: EventName FileReader ProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onload Mozilla FileReader.onload documentation> 
load :: EventName FileReader UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onabort Mozilla FileReader.onabort documentation> 
abortEvent :: EventName FileReader UIEvent
abortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onerror Mozilla FileReader.onerror documentation> 
error :: EventName FileReader UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadend Mozilla FileReader.onloadend documentation> 
loadEnd :: EventName FileReader ProgressEvent
loadEnd = unsafeEventName (toJSString "loadend")