{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Blob (webkit_dom_blob_get_size, blobGetSize) where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_blob_get_size :: JSRef Blob -> IO Double
#else 
webkit_dom_blob_get_size :: JSRef Blob -> IO Double
webkit_dom_blob_get_size = undefined
#endif
 
blobGetSize :: (BlobClass self) => self -> IO Word64
blobGetSize self
  = round <$> (webkit_dom_blob_get_size (unBlob (toBlob self)))