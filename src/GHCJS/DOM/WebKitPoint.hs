{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.WebKitPoint
       (webkit_dom_webkit_point_set_x, webKitPointSetX,
        webkit_dom_webkit_point_get_x, webKitPointGetX,
        webkit_dom_webkit_point_set_y, webKitPointSetY,
        webkit_dom_webkit_point_get_y, webKitPointGetY)
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
foreign import javascript unsafe "$1[\"x\"] = $2;"
        webkit_dom_webkit_point_set_x ::
        JSRef WebKitPoint -> Float -> IO ()
#else 
webkit_dom_webkit_point_set_x ::
                                JSRef WebKitPoint -> Float -> IO ()
webkit_dom_webkit_point_set_x = undefined
#endif
 
webKitPointSetX ::
                (WebKitPointClass self) => self -> Float -> IO ()
webKitPointSetX self val
  = webkit_dom_webkit_point_set_x
      (unWebKitPoint (toWebKitPoint self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"x\"]"
        webkit_dom_webkit_point_get_x :: JSRef WebKitPoint -> IO Float
#else 
webkit_dom_webkit_point_get_x :: JSRef WebKitPoint -> IO Float
webkit_dom_webkit_point_get_x = undefined
#endif
 
webKitPointGetX :: (WebKitPointClass self) => self -> IO Float
webKitPointGetX self
  = webkit_dom_webkit_point_get_x
      (unWebKitPoint (toWebKitPoint self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        webkit_dom_webkit_point_set_y ::
        JSRef WebKitPoint -> Float -> IO ()
#else 
webkit_dom_webkit_point_set_y ::
                                JSRef WebKitPoint -> Float -> IO ()
webkit_dom_webkit_point_set_y = undefined
#endif
 
webKitPointSetY ::
                (WebKitPointClass self) => self -> Float -> IO ()
webKitPointSetY self val
  = webkit_dom_webkit_point_set_y
      (unWebKitPoint (toWebKitPoint self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"]"
        webkit_dom_webkit_point_get_y :: JSRef WebKitPoint -> IO Float
#else 
webkit_dom_webkit_point_get_y :: JSRef WebKitPoint -> IO Float
webkit_dom_webkit_point_get_y = undefined
#endif
 
webKitPointGetY :: (WebKitPointClass self) => self -> IO Float
webKitPointGetY self
  = webkit_dom_webkit_point_get_y
      (unWebKitPoint (toWebKitPoint self))