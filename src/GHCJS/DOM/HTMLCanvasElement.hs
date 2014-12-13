{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLCanvasElement
       (ghcjs_dom_html_canvas_element_set_width,
        htmlCanvasElementSetWidth, ghcjs_dom_html_canvas_element_get_width,
        htmlCanvasElementGetWidth,
        ghcjs_dom_html_canvas_element_set_height,
        htmlCanvasElementSetHeight,
        ghcjs_dom_html_canvas_element_get_height,
        htmlCanvasElementGetHeight, HTMLCanvasElement, IsHTMLCanvasElement,
        castToHTMLCanvasElement, gTypeHTMLCanvasElement,
        toHTMLCanvasElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_canvas_element_set_width ::
        JSRef HTMLCanvasElement -> Int -> IO ()
#else 
ghcjs_dom_html_canvas_element_set_width ::
                                          JSRef HTMLCanvasElement -> Int -> IO ()
ghcjs_dom_html_canvas_element_set_width = undefined
#endif
 
htmlCanvasElementSetWidth ::
                          (IsHTMLCanvasElement self) => self -> Int -> IO ()
htmlCanvasElementSetWidth self val
  = ghcjs_dom_html_canvas_element_set_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_canvas_element_get_width ::
        JSRef HTMLCanvasElement -> IO Int
#else 
ghcjs_dom_html_canvas_element_get_width ::
                                          JSRef HTMLCanvasElement -> IO Int
ghcjs_dom_html_canvas_element_get_width = undefined
#endif
 
htmlCanvasElementGetWidth ::
                          (IsHTMLCanvasElement self) => self -> IO Int
htmlCanvasElementGetWidth self
  = ghcjs_dom_html_canvas_element_get_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_canvas_element_set_height ::
        JSRef HTMLCanvasElement -> Int -> IO ()
#else 
ghcjs_dom_html_canvas_element_set_height ::
                                           JSRef HTMLCanvasElement -> Int -> IO ()
ghcjs_dom_html_canvas_element_set_height = undefined
#endif
 
htmlCanvasElementSetHeight ::
                           (IsHTMLCanvasElement self) => self -> Int -> IO ()
htmlCanvasElementSetHeight self val
  = ghcjs_dom_html_canvas_element_set_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_canvas_element_get_height ::
        JSRef HTMLCanvasElement -> IO Int
#else 
ghcjs_dom_html_canvas_element_get_height ::
                                           JSRef HTMLCanvasElement -> IO Int
ghcjs_dom_html_canvas_element_get_height = undefined
#endif
 
htmlCanvasElementGetHeight ::
                           (IsHTMLCanvasElement self) => self -> IO Int
htmlCanvasElementGetHeight self
  = ghcjs_dom_html_canvas_element_get_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))
#else
module GHCJS.DOM.HTMLCanvasElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCanvasElement
#endif
