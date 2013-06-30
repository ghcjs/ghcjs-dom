{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Blob (ghcjs_dom_blob_get_size, blobGetSize) where
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
        ghcjs_dom_blob_get_size :: JSRef Blob -> IO Double
#else 
ghcjs_dom_blob_get_size :: JSRef Blob -> IO Double
ghcjs_dom_blob_get_size = undefined
#endif
 
blobGetSize :: (IsBlob self) => self -> IO Word64
blobGetSize self
  = round <$> (ghcjs_dom_blob_get_size (unBlob (toBlob self)))