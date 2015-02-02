{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Blob
       (ghcjs_dom_blob_slice, blobSlice, ghcjs_dom_blob_get_size,
        blobGetSize, Blob, IsBlob, castToBlob, gTypeBlob, toBlob)
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

 
foreign import javascript unsafe "$1[\"slice\"]($2, $3, $4)"
        ghcjs_dom_blob_slice ::
        JSRef Blob -> Double -> Double -> JSString -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
blobSlice ::
          (IsBlob self, ToJSString contentType) =>
            self -> Int64 -> Int64 -> contentType -> IO (Maybe Blob)
blobSlice self start end contentType
  = (ghcjs_dom_blob_slice (unBlob (toBlob self)) (fromIntegral start)
       (fromIntegral end)
       (toJSString contentType))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_blob_get_size :: JSRef Blob -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.size Mozilla Blob.size documentation> 
blobGetSize :: (IsBlob self) => self -> IO Word64
blobGetSize self
  = round <$> (ghcjs_dom_blob_get_size (unBlob (toBlob self)))
#else
module GHCJS.DOM.Blob (
  module Graphics.UI.Gtk.WebKit.DOM.Blob
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Blob
#endif
