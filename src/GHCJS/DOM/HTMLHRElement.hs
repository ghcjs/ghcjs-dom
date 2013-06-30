{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLHRElement
       (webkit_dom_htmlhr_element_set_align, htmlhrElementSetAlign,
        webkit_dom_htmlhr_element_get_align, htmlhrElementGetAlign,
        webkit_dom_htmlhr_element_set_no_shade, htmlhrElementSetNoShade,
        webkit_dom_htmlhr_element_get_no_shade, htmlhrElementGetNoShade,
        webkit_dom_htmlhr_element_set_size, htmlhrElementSetSize,
        webkit_dom_htmlhr_element_get_size, htmlhrElementGetSize,
        webkit_dom_htmlhr_element_set_width, htmlhrElementSetWidth,
        webkit_dom_htmlhr_element_get_width, htmlhrElementGetWidth)
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
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_htmlhr_element_set_align ::
        JSRef HTMLHRElement -> JSString -> IO ()
#else 
webkit_dom_htmlhr_element_set_align ::
                                      JSRef HTMLHRElement -> JSString -> IO ()
webkit_dom_htmlhr_element_set_align = undefined
#endif
 
htmlhrElementSetAlign ::
                      (HTMLHRElementClass self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetAlign self val
  = webkit_dom_htmlhr_element_set_align
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_htmlhr_element_get_align ::
        JSRef HTMLHRElement -> IO JSString
#else 
webkit_dom_htmlhr_element_get_align ::
                                      JSRef HTMLHRElement -> IO JSString
webkit_dom_htmlhr_element_get_align = undefined
#endif
 
htmlhrElementGetAlign ::
                      (HTMLHRElementClass self, FromJSString result) => self -> IO result
htmlhrElementGetAlign self
  = fromJSString <$>
      (webkit_dom_htmlhr_element_get_align
         (unHTMLHRElement (toHTMLHRElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noShade\"] = $2;"
        webkit_dom_htmlhr_element_set_no_shade ::
        JSRef HTMLHRElement -> JSBool -> IO ()
#else 
webkit_dom_htmlhr_element_set_no_shade ::
                                         JSRef HTMLHRElement -> JSBool -> IO ()
webkit_dom_htmlhr_element_set_no_shade = undefined
#endif
 
htmlhrElementSetNoShade ::
                        (HTMLHRElementClass self) => self -> Bool -> IO ()
htmlhrElementSetNoShade self val
  = webkit_dom_htmlhr_element_set_no_shade
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noShade\"] ? 1 : 0)"
        webkit_dom_htmlhr_element_get_no_shade ::
        JSRef HTMLHRElement -> IO JSBool
#else 
webkit_dom_htmlhr_element_get_no_shade ::
                                         JSRef HTMLHRElement -> IO JSBool
webkit_dom_htmlhr_element_get_no_shade = undefined
#endif
 
htmlhrElementGetNoShade ::
                        (HTMLHRElementClass self) => self -> IO Bool
htmlhrElementGetNoShade self
  = fromJSBool <$>
      (webkit_dom_htmlhr_element_get_no_shade
         (unHTMLHRElement (toHTMLHRElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        webkit_dom_htmlhr_element_set_size ::
        JSRef HTMLHRElement -> JSString -> IO ()
#else 
webkit_dom_htmlhr_element_set_size ::
                                     JSRef HTMLHRElement -> JSString -> IO ()
webkit_dom_htmlhr_element_set_size = undefined
#endif
 
htmlhrElementSetSize ::
                     (HTMLHRElementClass self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetSize self val
  = webkit_dom_htmlhr_element_set_size
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"size\"]"
        webkit_dom_htmlhr_element_get_size ::
        JSRef HTMLHRElement -> IO JSString
#else 
webkit_dom_htmlhr_element_get_size ::
                                     JSRef HTMLHRElement -> IO JSString
webkit_dom_htmlhr_element_get_size = undefined
#endif
 
htmlhrElementGetSize ::
                     (HTMLHRElementClass self, FromJSString result) => self -> IO result
htmlhrElementGetSize self
  = fromJSString <$>
      (webkit_dom_htmlhr_element_get_size
         (unHTMLHRElement (toHTMLHRElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_htmlhr_element_set_width ::
        JSRef HTMLHRElement -> JSString -> IO ()
#else 
webkit_dom_htmlhr_element_set_width ::
                                      JSRef HTMLHRElement -> JSString -> IO ()
webkit_dom_htmlhr_element_set_width = undefined
#endif
 
htmlhrElementSetWidth ::
                      (HTMLHRElementClass self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetWidth self val
  = webkit_dom_htmlhr_element_set_width
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_htmlhr_element_get_width ::
        JSRef HTMLHRElement -> IO JSString
#else 
webkit_dom_htmlhr_element_get_width ::
                                      JSRef HTMLHRElement -> IO JSString
webkit_dom_htmlhr_element_get_width = undefined
#endif
 
htmlhrElementGetWidth ::
                      (HTMLHRElementClass self, FromJSString result) => self -> IO result
htmlhrElementGetWidth self
  = fromJSString <$>
      (webkit_dom_htmlhr_element_get_width
         (unHTMLHRElement (toHTMLHRElement self)))