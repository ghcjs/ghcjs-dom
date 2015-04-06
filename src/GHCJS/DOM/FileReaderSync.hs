{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileReaderSync
       (js_newFileReaderSync, newFileReaderSync, js_readAsArrayBuffer,
        readAsArrayBuffer, js_readAsBinaryString, readAsBinaryString,
        js_readAsText, readAsText, js_readAsDataURL, readAsDataURL,
        FileReaderSync, castToFileReaderSync, gTypeFileReaderSync)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"FileReaderSync\"]()"
        js_newFileReaderSync :: IO (JSRef FileReaderSync)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync Mozilla FileReaderSync documentation> 
newFileReaderSync :: (MonadIO m) => m FileReaderSync
newFileReaderSync
  = liftIO (js_newFileReaderSync >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"readAsArrayBuffer\"]($2)"
        js_readAsArrayBuffer ::
        JSRef FileReaderSync -> JSRef Blob -> IO (JSRef ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsArrayBuffer Mozilla FileReaderSync.readAsArrayBuffer documentation> 
readAsArrayBuffer ::
                  (MonadIO m, IsBlob blob) =>
                    FileReaderSync -> Maybe blob -> m (Maybe ArrayBuffer)
readAsArrayBuffer self blob
  = liftIO
      ((js_readAsArrayBuffer (unFileReaderSync self)
          (maybe jsNull (unBlob . toBlob) blob))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"readAsBinaryString\"]($2)"
        js_readAsBinaryString ::
        JSRef FileReaderSync -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsBinaryString Mozilla FileReaderSync.readAsBinaryString documentation> 
readAsBinaryString ::
                   (MonadIO m, IsBlob blob, FromJSString result) =>
                     FileReaderSync -> Maybe blob -> m result
readAsBinaryString self blob
  = liftIO
      (fromJSString <$>
         (js_readAsBinaryString (unFileReaderSync self)
            (maybe jsNull (unBlob . toBlob) blob)))
 
foreign import javascript unsafe "$1[\"readAsText\"]($2, $3)"
        js_readAsText ::
        JSRef FileReaderSync -> JSRef Blob -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsText Mozilla FileReaderSync.readAsText documentation> 
readAsText ::
           (MonadIO m, IsBlob blob, ToJSString encoding,
            FromJSString result) =>
             FileReaderSync -> Maybe blob -> encoding -> m result
readAsText self blob encoding
  = liftIO
      (fromJSString <$>
         (js_readAsText (unFileReaderSync self)
            (maybe jsNull (unBlob . toBlob) blob)
            (toJSString encoding)))
 
foreign import javascript unsafe "$1[\"readAsDataURL\"]($2)"
        js_readAsDataURL ::
        JSRef FileReaderSync -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileReaderSync.readAsDataURL Mozilla FileReaderSync.readAsDataURL documentation> 
readAsDataURL ::
              (MonadIO m, IsBlob blob, FromJSString result) =>
                FileReaderSync -> Maybe blob -> m result
readAsDataURL self blob
  = liftIO
      (fromJSString <$>
         (js_readAsDataURL (unFileReaderSync self)
            (maybe jsNull (unBlob . toBlob) blob)))
#else
module GHCJS.DOM.FileReaderSync (
  ) where
#endif
