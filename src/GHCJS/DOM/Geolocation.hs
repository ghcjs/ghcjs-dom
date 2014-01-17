{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Geolocation
       (ghcjs_dom_geolocation_clear_watch, geolocationClearWatch,
        Geolocation, IsGeolocation, castToGeolocation, gTypeGeolocation,
        toGeolocation)
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



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clearWatch\"]($2)"
        ghcjs_dom_geolocation_clear_watch ::
        JSRef Geolocation -> Int -> IO ()
#else 
ghcjs_dom_geolocation_clear_watch ::
                                    JSRef Geolocation -> Int -> IO ()
ghcjs_dom_geolocation_clear_watch = undefined
#endif
 
geolocationClearWatch ::
                      (IsGeolocation self) => self -> Int -> IO ()
geolocationClearWatch self watchID
  = ghcjs_dom_geolocation_clear_watch
      (unGeolocation (toGeolocation self))
      watchID
#else
module GHCJS.DOM.Geolocation (
  module Graphics.UI.Gtk.WebKit.DOM.Geolocation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Geolocation
#endif
