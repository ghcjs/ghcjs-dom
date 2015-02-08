{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Blob
       (ghcjs_dom_blob_new, blobNew, ghcjs_dom_blob_slice, blobSlice,
        ghcjs_dom_blob_get_size, blobGetSize, Blob, IsBlob, castToBlob,
        gTypeBlob, toBlob)
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

 
foreign import javascript unsafe "new window[\"Blob\"]()"
        ghcjs_dom_blob_new :: IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
blobNew :: (MonadIO m) => m Blob
blobNew = liftIO (ghcjs_dom_blob_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"Blob\"]($1, $2)"
        ghcjs_dom_blob_new' ::
        JSRef [JSRef a] -> JSRef BlobPropertyBag -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
blobNew' ::
         (MonadIO m, IsBlobPropertyBag options) =>
           [JSRef a] -> Maybe options -> m Blob
blobNew' blobParts options
  = liftIO
      (toJSRef blobParts >>=
         \ blobParts' -> ghcjs_dom_blob_new' blobParts'
         (maybe jsNull (unBlobPropertyBag . toBlobPropertyBag) options)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"slice\"]($2, $3, $4)"
        ghcjs_dom_blob_slice ::
        JSRef Blob -> Double -> Double -> JSString -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
blobSlice ::
          (MonadIO m, IsBlob self, ToJSString contentType) =>
            self -> Int64 -> Int64 -> contentType -> m (Maybe Blob)
blobSlice self start end contentType
  = liftIO
      ((ghcjs_dom_blob_slice (unBlob (toBlob self)) (fromIntegral start)
          (fromIntegral end)
          (toJSString contentType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_blob_get_size :: JSRef Blob -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.size Mozilla Blob.size documentation> 
blobGetSize :: (MonadIO m, IsBlob self) => self -> m Word64
blobGetSize self
  = liftIO
      (round <$> (ghcjs_dom_blob_get_size (unBlob (toBlob self))))
#else
module GHCJS.DOM.Blob (
  module Graphics.UI.Gtk.WebKit.DOM.Blob
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Blob
#endif
