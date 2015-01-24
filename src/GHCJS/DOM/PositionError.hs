{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PositionError
       (cPERMISSION_DENIED, cPOSITION_UNAVAILABLE, cTIMEOUT,
        ghcjs_dom_position_error_get_code, positionErrorGetCode,
        ghcjs_dom_position_error_get_message, positionErrorGetMessage,
        PositionError, IsPositionError, castToPositionError,
        gTypePositionError, toPositionError)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cPERMISSION_DENIED = 1
cPOSITION_UNAVAILABLE = 2
cTIMEOUT = 3
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_position_error_get_code :: JSRef PositionError -> IO Word
 
positionErrorGetCode :: (IsPositionError self) => self -> IO Word
positionErrorGetCode self
  = ghcjs_dom_position_error_get_code
      (unPositionError (toPositionError self))
 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_position_error_get_message ::
        JSRef PositionError -> IO JSString
 
positionErrorGetMessage ::
                        (IsPositionError self, FromJSString result) => self -> IO result
positionErrorGetMessage self
  = fromJSString <$>
      (ghcjs_dom_position_error_get_message
         (unPositionError (toPositionError self)))
#else
module GHCJS.DOM.PositionError (
  module Graphics.UI.Gtk.WebKit.DOM.PositionError
  ) where
import Graphics.UI.Gtk.WebKit.DOM.PositionError
#endif
