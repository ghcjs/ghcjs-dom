{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MediaError
       (cMEDIA_ERR_ABORTED, cMEDIA_ERR_NETWORK, cMEDIA_ERR_DECODE,
        cMEDIA_ERR_SRC_NOT_SUPPORTED, webkit_dom_media_error_get_code,
        mediaErrorGetCode)
       where
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

cMEDIA_ERR_ABORTED = 1
cMEDIA_ERR_NETWORK = 2
cMEDIA_ERR_DECODE = 3
cMEDIA_ERR_SRC_NOT_SUPPORTED = 4


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"code\"]"
        webkit_dom_media_error_get_code :: JSRef MediaError -> IO Word
#else 
webkit_dom_media_error_get_code :: JSRef MediaError -> IO Word
webkit_dom_media_error_get_code = undefined
#endif
 
mediaErrorGetCode :: (MediaErrorClass self) => self -> IO Word
mediaErrorGetCode self
  = webkit_dom_media_error_get_code
      (unMediaError (toMediaError self))