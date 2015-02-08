{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileReader
       (ghcjs_dom_file_reader_new, fileReaderNew,
        ghcjs_dom_file_reader_read_as_array_buffer,
        fileReaderReadAsArrayBuffer,
        ghcjs_dom_file_reader_read_as_binary_string,
        fileReaderReadAsBinaryString, ghcjs_dom_file_reader_read_as_text,
        fileReaderReadAsText, ghcjs_dom_file_reader_read_as_data_url,
        fileReaderReadAsDataURL, ghcjs_dom_file_reader_abort,
        fileReaderAbort, cEMPTY, cLOADING, cDONE,
        ghcjs_dom_file_reader_get_ready_state, fileReaderGetReadyState,
        ghcjs_dom_file_reader_get_result, fileReaderGetResult,
        ghcjs_dom_file_reader_get_error, fileReaderGetError,
        fileReaderLoadStart, fileReaderProgress, fileReaderLoad,
        fileReaderAbortEvent, fileReaderError, fileReaderLoadEnd,
        FileReader, IsFileReader, castToFileReader, gTypeFileReader,
        toFileReader)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"FileReader\"]()"
        ghcjs_dom_file_reader_new :: IO (JSRef FileReader)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation> 
fileReaderNew :: (MonadIO m) => m FileReader
fileReaderNew
  = liftIO (ghcjs_dom_file_reader_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        ghcjs_dom_file_reader_read_as_array_buffer ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsArrayBuffer Mozilla FileReader.readAsArrayBuffer documentation> 
fileReaderReadAsArrayBuffer ::
                            (MonadIO m, IsFileReader self, IsBlob blob) =>
                              self -> Maybe blob -> m ()
fileReaderReadAsArrayBuffer self blob
  = liftIO
      (ghcjs_dom_file_reader_read_as_array_buffer
         (unFileReader (toFileReader self))
         (maybe jsNull (unBlob . toBlob) blob))
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        ghcjs_dom_file_reader_read_as_binary_string ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsBinaryString Mozilla FileReader.readAsBinaryString documentation> 
fileReaderReadAsBinaryString ::
                             (MonadIO m, IsFileReader self, IsBlob blob) =>
                               self -> Maybe blob -> m ()
fileReaderReadAsBinaryString self blob
  = liftIO
      (ghcjs_dom_file_reader_read_as_binary_string
         (unFileReader (toFileReader self))
         (maybe jsNull (unBlob . toBlob) blob))
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        ghcjs_dom_file_reader_read_as_text ::
        JSRef FileReader -> JSRef Blob -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsText Mozilla FileReader.readAsText documentation> 
fileReaderReadAsText ::
                     (MonadIO m, IsFileReader self, IsBlob blob, ToJSString encoding) =>
                       self -> Maybe blob -> encoding -> m ()
fileReaderReadAsText self blob encoding
  = liftIO
      (ghcjs_dom_file_reader_read_as_text
         (unFileReader (toFileReader self))
         (maybe jsNull (unBlob . toBlob) blob)
         (toJSString encoding))
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        ghcjs_dom_file_reader_read_as_data_url ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsDataURL Mozilla FileReader.readAsDataURL documentation> 
fileReaderReadAsDataURL ::
                        (MonadIO m, IsFileReader self, IsBlob blob) =>
                          self -> Maybe blob -> m ()
fileReaderReadAsDataURL self blob
  = liftIO
      (ghcjs_dom_file_reader_read_as_data_url
         (unFileReader (toFileReader self))
         (maybe jsNull (unBlob . toBlob) blob))
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_file_reader_abort :: JSRef FileReader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.abort Mozilla FileReader.abort documentation> 
fileReaderAbort :: (MonadIO m, IsFileReader self) => self -> m ()
fileReaderAbort self
  = liftIO
      (ghcjs_dom_file_reader_abort (unFileReader (toFileReader self)))
cEMPTY = 0
cLOADING = 1
cDONE = 2
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_file_reader_get_ready_state ::
        JSRef FileReader -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readyState Mozilla FileReader.readyState documentation> 
fileReaderGetReadyState ::
                        (MonadIO m, IsFileReader self) => self -> m Word
fileReaderGetReadyState self
  = liftIO
      (ghcjs_dom_file_reader_get_ready_state
         (unFileReader (toFileReader self)))
 
foreign import javascript unsafe "$1[\"result\"]"
        ghcjs_dom_file_reader_get_result ::
        JSRef FileReader -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
fileReaderGetResult ::
                    (MonadIO m, IsFileReader self) => self -> m (JSRef a)
fileReaderGetResult self
  = liftIO
      (ghcjs_dom_file_reader_get_result
         (unFileReader (toFileReader self)))
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_file_reader_get_error ::
        JSRef FileReader -> IO (JSRef FileError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.error Mozilla FileReader.error documentation> 
fileReaderGetError ::
                   (MonadIO m, IsFileReader self) => self -> m (Maybe FileError)
fileReaderGetError self
  = liftIO
      ((ghcjs_dom_file_reader_get_error
          (unFileReader (toFileReader self)))
         >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.loadStart Mozilla FileReader.loadStart documentation> 
fileReaderLoadStart ::
                    (IsFileReader self, IsEventTarget self) =>
                      EventName self ProgressEvent
fileReaderLoadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.progress Mozilla FileReader.progress documentation> 
fileReaderProgress ::
                   (IsFileReader self, IsEventTarget self) =>
                     EventName self ProgressEvent
fileReaderProgress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.load Mozilla FileReader.load documentation> 
fileReaderLoad ::
               (IsFileReader self, IsEventTarget self) => EventName self UIEvent
fileReaderLoad = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.abortEvent Mozilla FileReader.abortEvent documentation> 
fileReaderAbortEvent ::
                     (IsFileReader self, IsEventTarget self) => EventName self UIEvent
fileReaderAbortEvent = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.error Mozilla FileReader.error documentation> 
fileReaderError ::
                (IsFileReader self, IsEventTarget self) => EventName self UIEvent
fileReaderError = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.loadEnd Mozilla FileReader.loadEnd documentation> 
fileReaderLoadEnd ::
                  (IsFileReader self, IsEventTarget self) =>
                    EventName self ProgressEvent
fileReaderLoadEnd = unsafeEventName (toJSString "loadend")
#else
module GHCJS.DOM.FileReader (
  ) where
#endif
