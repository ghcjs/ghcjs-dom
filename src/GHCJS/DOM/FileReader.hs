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
        fileReaderAbort, ghcjs_dom_file_reader_dispatch_event,
        fileReaderDispatchEvent, cEMPTY, cLOADING, cDONE,
        ghcjs_dom_file_reader_get_ready_state, fileReaderGetReadyState,
        ghcjs_dom_file_reader_get_result, fileReaderGetResult,
        ghcjs_dom_file_reader_get_error, fileReaderGetError,
        fileReaderOnloadstart, fileReaderOnprogress, fileReaderOnload,
        fileReaderOnabort, fileReaderOnerror, fileReaderOnloadend,
        FileReader, IsFileReader, castToFileReader, gTypeFileReader,
        toFileReader)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"FileReader\"]()"
        ghcjs_dom_file_reader_new :: IO (JSRef FileReader)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader Mozilla FileReader documentation> 
fileReaderNew :: IO FileReader
fileReaderNew = ghcjs_dom_file_reader_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        ghcjs_dom_file_reader_read_as_array_buffer ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsArrayBuffer Mozilla FileReader.readAsArrayBuffer documentation> 
fileReaderReadAsArrayBuffer ::
                            (IsFileReader self, IsBlob blob) => self -> Maybe blob -> IO ()
fileReaderReadAsArrayBuffer self blob
  = ghcjs_dom_file_reader_read_as_array_buffer
      (unFileReader (toFileReader self))
      (maybe jsNull (unBlob . toBlob) blob)
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        ghcjs_dom_file_reader_read_as_binary_string ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsBinaryString Mozilla FileReader.readAsBinaryString documentation> 
fileReaderReadAsBinaryString ::
                             (IsFileReader self, IsBlob blob) => self -> Maybe blob -> IO ()
fileReaderReadAsBinaryString self blob
  = ghcjs_dom_file_reader_read_as_binary_string
      (unFileReader (toFileReader self))
      (maybe jsNull (unBlob . toBlob) blob)
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        ghcjs_dom_file_reader_read_as_text ::
        JSRef FileReader -> JSRef Blob -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsText Mozilla FileReader.readAsText documentation> 
fileReaderReadAsText ::
                     (IsFileReader self, IsBlob blob, ToJSString encoding) =>
                       self -> Maybe blob -> encoding -> IO ()
fileReaderReadAsText self blob encoding
  = ghcjs_dom_file_reader_read_as_text
      (unFileReader (toFileReader self))
      (maybe jsNull (unBlob . toBlob) blob)
      (toJSString encoding)
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        ghcjs_dom_file_reader_read_as_data_url ::
        JSRef FileReader -> JSRef Blob -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readAsDataURL Mozilla FileReader.readAsDataURL documentation> 
fileReaderReadAsDataURL ::
                        (IsFileReader self, IsBlob blob) => self -> Maybe blob -> IO ()
fileReaderReadAsDataURL self blob
  = ghcjs_dom_file_reader_read_as_data_url
      (unFileReader (toFileReader self))
      (maybe jsNull (unBlob . toBlob) blob)
 
foreign import javascript unsafe "$1[\"abort\"]()"
        ghcjs_dom_file_reader_abort :: JSRef FileReader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.abort Mozilla FileReader.abort documentation> 
fileReaderAbort :: (IsFileReader self) => self -> IO ()
fileReaderAbort self
  = ghcjs_dom_file_reader_abort (unFileReader (toFileReader self))
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_file_reader_dispatch_event ::
        JSRef FileReader -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.dispatchEvent Mozilla FileReader.dispatchEvent documentation> 
fileReaderDispatchEvent ::
                        (IsFileReader self, IsEvent evt) => self -> Maybe evt -> IO Bool
fileReaderDispatchEvent self evt
  = ghcjs_dom_file_reader_dispatch_event
      (unFileReader (toFileReader self))
      (maybe jsNull (unEvent . toEvent) evt)
cEMPTY = 0
cLOADING = 1
cDONE = 2
 
foreign import javascript unsafe "$1[\"readyState\"]"
        ghcjs_dom_file_reader_get_ready_state ::
        JSRef FileReader -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.readyState Mozilla FileReader.readyState documentation> 
fileReaderGetReadyState :: (IsFileReader self) => self -> IO Word
fileReaderGetReadyState self
  = ghcjs_dom_file_reader_get_ready_state
      (unFileReader (toFileReader self))
 
foreign import javascript unsafe "$1[\"result\"]"
        ghcjs_dom_file_reader_get_result ::
        JSRef FileReader -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.result Mozilla FileReader.result documentation> 
fileReaderGetResult :: (IsFileReader self) => self -> IO (JSRef a)
fileReaderGetResult self
  = ghcjs_dom_file_reader_get_result
      (unFileReader (toFileReader self))
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_file_reader_get_error ::
        JSRef FileReader -> IO (JSRef FileError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.error Mozilla FileReader.error documentation> 
fileReaderGetError ::
                   (IsFileReader self) => self -> IO (Maybe FileError)
fileReaderGetError self
  = (ghcjs_dom_file_reader_get_error
       (unFileReader (toFileReader self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadstart Mozilla FileReader.onloadstart documentation> 
fileReaderOnloadstart ::
                      (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnloadstart = (connect "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onprogress Mozilla FileReader.onprogress documentation> 
fileReaderOnprogress ::
                     (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnprogress = (connect "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onload Mozilla FileReader.onload documentation> 
fileReaderOnload ::
                 (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnload = (connect "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onabort Mozilla FileReader.onabort documentation> 
fileReaderOnabort ::
                  (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnabort = (connect "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onerror Mozilla FileReader.onerror documentation> 
fileReaderOnerror ::
                  (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnerror = (connect "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReader.onloadend Mozilla FileReader.onloadend documentation> 
fileReaderOnloadend ::
                    (IsFileReader self) => Signal self (EventM UIEvent self ())
fileReaderOnloadend = (connect "loadend")
#else
module GHCJS.DOM.FileReader (
  ) where
#endif
