{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Blob
       (ghcjs_dom_blob_slice, blobSlice, ghcjs_dom_blob_get_size,
        blobGetSize, Blob, IsBlob, castToBlob, gTypeBlob, toBlob)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"slice\"]($2, $3, $4)"
        ghcjs_dom_blob_slice ::
        JSRef Blob -> Double -> Double -> JSString -> IO (JSRef Blob)
 
blobSlice ::
          (IsBlob self, ToJSString contentType) =>
            self -> Int64 -> Int64 -> contentType -> IO (Maybe Blob)
blobSlice self start end contentType
  = fmap Blob . maybeJSNull <$>
      (ghcjs_dom_blob_slice (unBlob (toBlob self)) (fromIntegral start)
         (fromIntegral end)
         (toJSString contentType))
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_blob_get_size :: JSRef Blob -> IO Double
 
blobGetSize :: (IsBlob self) => self -> IO Word64
blobGetSize self
  = round <$> (ghcjs_dom_blob_get_size (unBlob (toBlob self)))
#else
module GHCJS.DOM.Blob (
  module Graphics.UI.Gtk.WebKit.DOM.Blob
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Blob
#endif
