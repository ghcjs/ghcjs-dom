{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaError
       (cMEDIA_ERR_ABORTED, cMEDIA_ERR_NETWORK, cMEDIA_ERR_DECODE,
        cMEDIA_ERR_SRC_NOT_SUPPORTED, ghcjs_dom_media_error_get_code,
        mediaErrorGetCode, MediaError, IsMediaError, castToMediaError,
        gTypeMediaError, toMediaError)
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
        ghcjs_dom_media_error_get_code :: JSRef MediaError -> IO Word
#else 
ghcjs_dom_media_error_get_code :: JSRef MediaError -> IO Word
ghcjs_dom_media_error_get_code = undefined
#endif
 
mediaErrorGetCode :: (IsMediaError self) => self -> IO Word
mediaErrorGetCode self
  = ghcjs_dom_media_error_get_code (unMediaError (toMediaError self))
#else
module GHCJS.DOM.MediaError (
  module Graphics.UI.Gtk.WebKit.DOM.MediaError
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaError
#endif
