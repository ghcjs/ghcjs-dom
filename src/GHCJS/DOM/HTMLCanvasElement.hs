{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLCanvasElement
       (webkit_dom_html_canvas_element_set_width,
        htmlCanvasElementSetWidth,
        webkit_dom_html_canvas_element_get_width,
        htmlCanvasElementGetWidth,
        webkit_dom_html_canvas_element_set_height,
        htmlCanvasElementSetHeight,
        webkit_dom_html_canvas_element_get_height,
        htmlCanvasElementGetHeight)
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
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_canvas_element_set_width ::
        JSRef HTMLCanvasElement -> Int -> IO ()
#else 
webkit_dom_html_canvas_element_set_width ::
                                           JSRef HTMLCanvasElement -> Int -> IO ()
webkit_dom_html_canvas_element_set_width = undefined
#endif
 
htmlCanvasElementSetWidth ::
                          (HTMLCanvasElementClass self) => self -> Int -> IO ()
htmlCanvasElementSetWidth self val
  = webkit_dom_html_canvas_element_set_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_canvas_element_get_width ::
        JSRef HTMLCanvasElement -> IO Int
#else 
webkit_dom_html_canvas_element_get_width ::
                                           JSRef HTMLCanvasElement -> IO Int
webkit_dom_html_canvas_element_get_width = undefined
#endif
 
htmlCanvasElementGetWidth ::
                          (HTMLCanvasElementClass self) => self -> IO Int
htmlCanvasElementGetWidth self
  = webkit_dom_html_canvas_element_get_width
      (unHTMLCanvasElement (toHTMLCanvasElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_canvas_element_set_height ::
        JSRef HTMLCanvasElement -> Int -> IO ()
#else 
webkit_dom_html_canvas_element_set_height ::
                                            JSRef HTMLCanvasElement -> Int -> IO ()
webkit_dom_html_canvas_element_set_height = undefined
#endif
 
htmlCanvasElementSetHeight ::
                           (HTMLCanvasElementClass self) => self -> Int -> IO ()
htmlCanvasElementSetHeight self val
  = webkit_dom_html_canvas_element_set_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_canvas_element_get_height ::
        JSRef HTMLCanvasElement -> IO Int
#else 
webkit_dom_html_canvas_element_get_height ::
                                            JSRef HTMLCanvasElement -> IO Int
webkit_dom_html_canvas_element_get_height = undefined
#endif
 
htmlCanvasElementGetHeight ::
                           (HTMLCanvasElementClass self) => self -> IO Int
htmlCanvasElementGetHeight self
  = webkit_dom_html_canvas_element_get_height
      (unHTMLCanvasElement (toHTMLCanvasElement self))