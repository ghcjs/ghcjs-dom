{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BarProp
       (ghcjs_dom_bar_prop_get_visible, barPropGetVisible, BarProp,
        IsBarProp, castToBarProp, gTypeBarProp, toBarProp)
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

 
foreign import javascript unsafe "($1[\"visible\"] ? 1 : 0)"
        ghcjs_dom_bar_prop_get_visible :: JSRef BarProp -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BarProp.visible Mozilla BarProp.visible documentation> 
barPropGetVisible :: (IsBarProp self) => self -> IO Bool
barPropGetVisible self
  = ghcjs_dom_bar_prop_get_visible (unBarProp (toBarProp self))
#else
module GHCJS.DOM.BarProp (
  module Graphics.UI.Gtk.WebKit.DOM.BarProp
  ) where
import Graphics.UI.Gtk.WebKit.DOM.BarProp
#endif
