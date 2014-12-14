{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitPoint
       (ghcjs_dom_webkit_point_set_x, webKitPointSetX,
        ghcjs_dom_webkit_point_get_x, webKitPointGetX,
        ghcjs_dom_webkit_point_set_y, webKitPointSetY,
        ghcjs_dom_webkit_point_get_y, webKitPointGetY, WebKitPoint,
        IsWebKitPoint, castToWebKitPoint, gTypeWebKitPoint, toWebKitPoint)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_webkit_point_set_x :: JSRef WebKitPoint -> Float -> IO ()
 
webKitPointSetX :: (IsWebKitPoint self) => self -> Float -> IO ()
webKitPointSetX self val
  = ghcjs_dom_webkit_point_set_x (unWebKitPoint (toWebKitPoint self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_webkit_point_get_x :: JSRef WebKitPoint -> IO Float
 
webKitPointGetX :: (IsWebKitPoint self) => self -> IO Float
webKitPointGetX self
  = ghcjs_dom_webkit_point_get_x (unWebKitPoint (toWebKitPoint self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_webkit_point_set_y :: JSRef WebKitPoint -> Float -> IO ()
 
webKitPointSetY :: (IsWebKitPoint self) => self -> Float -> IO ()
webKitPointSetY self val
  = ghcjs_dom_webkit_point_set_y (unWebKitPoint (toWebKitPoint self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_webkit_point_get_y :: JSRef WebKitPoint -> IO Float
 
webKitPointGetY :: (IsWebKitPoint self) => self -> IO Float
webKitPointGetY self
  = ghcjs_dom_webkit_point_get_y (unWebKitPoint (toWebKitPoint self))
#else
module GHCJS.DOM.WebKitPoint (
  module Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
  ) where
import Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
#endif
