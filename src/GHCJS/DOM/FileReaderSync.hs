{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileReaderSync
       (ghcjs_dom_file_reader_sync_new, fileReaderSyncNew,
        ghcjs_dom_file_reader_sync_read_as_array_buffer,
        fileReaderSyncReadAsArrayBuffer,
        ghcjs_dom_file_reader_sync_read_as_binary_string,
        fileReaderSyncReadAsBinaryString,
        ghcjs_dom_file_reader_sync_read_as_text, fileReaderSyncReadAsText,
        ghcjs_dom_file_reader_sync_read_as_data_url,
        fileReaderSyncReadAsDataURL, FileReaderSync, IsFileReaderSync,
        castToFileReaderSync, gTypeFileReaderSync, toFileReaderSync)
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

 
foreign import javascript unsafe "new window[\"FileReaderSync\"]()"
        ghcjs_dom_file_reader_sync_new :: IO (JSRef FileReaderSync)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
fileReaderSyncNew :: IO FileReaderSync
fileReaderSyncNew
  = ghcjs_dom_file_reader_sync_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        ghcjs_dom_file_reader_sync_read_as_array_buffer ::
        JSRef FileReaderSync -> JSRef Blob -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
fileReaderSyncReadAsArrayBuffer ::
                                (IsFileReaderSync self, IsBlob blob) =>
                                  self -> Maybe blob -> IO (Maybe ArrayBuffer)
fileReaderSyncReadAsArrayBuffer self blob
  = (ghcjs_dom_file_reader_sync_read_as_array_buffer
       (unFileReaderSync (toFileReaderSync self))
       (maybe jsNull (unBlob . toBlob) blob))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        ghcjs_dom_file_reader_sync_read_as_binary_string ::
        JSRef FileReaderSync -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
fileReaderSyncReadAsBinaryString ::
                                 (IsFileReaderSync self, IsBlob blob, FromJSString result) =>
                                   self -> Maybe blob -> IO result
fileReaderSyncReadAsBinaryString self blob
  = fromJSString <$>
      (ghcjs_dom_file_reader_sync_read_as_binary_string
         (unFileReaderSync (toFileReaderSync self))
         (maybe jsNull (unBlob . toBlob) blob))
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        ghcjs_dom_file_reader_sync_read_as_text ::
        JSRef FileReaderSync -> JSRef Blob -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
fileReaderSyncReadAsText ::
                         (IsFileReaderSync self, IsBlob blob, ToJSString encoding,
                          FromJSString result) =>
                           self -> Maybe blob -> encoding -> IO result
fileReaderSyncReadAsText self blob encoding
  = fromJSString <$>
      (ghcjs_dom_file_reader_sync_read_as_text
         (unFileReaderSync (toFileReaderSync self))
         (maybe jsNull (unBlob . toBlob) blob)
         (toJSString encoding))
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        ghcjs_dom_file_reader_sync_read_as_data_url ::
        JSRef FileReaderSync -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
fileReaderSyncReadAsDataURL ::
                            (IsFileReaderSync self, IsBlob blob, FromJSString result) =>
                              self -> Maybe blob -> IO result
fileReaderSyncReadAsDataURL self blob
  = fromJSString <$>
      (ghcjs_dom_file_reader_sync_read_as_data_url
         (unFileReaderSync (toFileReaderSync self))
         (maybe jsNull (unBlob . toBlob) blob))
#else
module GHCJS.DOM.FileReaderSync (
  ) where
#endif
