{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Notation
       (ghcjs_dom_notation_get_public_id, notationGetPublicId,
        ghcjs_dom_notation_get_system_id, notationGetSystemId, Notation,
        IsNotation, castToNotation, gTypeNotation, toNotation)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_notation_get_public_id :: JSRef Notation -> IO JSString
 
notationGetPublicId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_public_id (unNotation (toNotation self)))
 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_notation_get_system_id :: JSRef Notation -> IO JSString
 
notationGetSystemId ::
                    (IsNotation self, FromJSString result) => self -> IO result
notationGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_notation_get_system_id (unNotation (toNotation self)))
#else
module GHCJS.DOM.Notation (
  module Graphics.UI.Gtk.WebKit.DOM.Notation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Notation
#endif
