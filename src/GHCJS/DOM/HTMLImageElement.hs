{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLImageElement
       (webkit_dom_html_image_element_set_name, htmlImageElementSetName,
        webkit_dom_html_image_element_get_name, htmlImageElementGetName,
        webkit_dom_html_image_element_set_align, htmlImageElementSetAlign,
        webkit_dom_html_image_element_get_align, htmlImageElementGetAlign,
        webkit_dom_html_image_element_set_alt, htmlImageElementSetAlt,
        webkit_dom_html_image_element_get_alt, htmlImageElementGetAlt,
        webkit_dom_html_image_element_set_border,
        htmlImageElementSetBorder,
        webkit_dom_html_image_element_get_border,
        htmlImageElementGetBorder,
        webkit_dom_html_image_element_set_cross_origin,
        htmlImageElementSetCrossOrigin,
        webkit_dom_html_image_element_get_cross_origin,
        htmlImageElementGetCrossOrigin,
        webkit_dom_html_image_element_set_height,
        htmlImageElementSetHeight,
        webkit_dom_html_image_element_get_height,
        htmlImageElementGetHeight,
        webkit_dom_html_image_element_set_hspace,
        htmlImageElementSetHspace,
        webkit_dom_html_image_element_get_hspace,
        htmlImageElementGetHspace,
        webkit_dom_html_image_element_set_is_map, htmlImageElementSetIsMap,
        webkit_dom_html_image_element_get_is_map, htmlImageElementGetIsMap,
        webkit_dom_html_image_element_set_long_desc,
        htmlImageElementSetLongDesc,
        webkit_dom_html_image_element_get_long_desc,
        htmlImageElementGetLongDesc, webkit_dom_html_image_element_set_src,
        htmlImageElementSetSrc, webkit_dom_html_image_element_get_src,
        htmlImageElementGetSrc, webkit_dom_html_image_element_set_use_map,
        htmlImageElementSetUseMap,
        webkit_dom_html_image_element_get_use_map,
        htmlImageElementGetUseMap,
        webkit_dom_html_image_element_set_vspace,
        htmlImageElementSetVspace,
        webkit_dom_html_image_element_get_vspace,
        htmlImageElementGetVspace, webkit_dom_html_image_element_set_width,
        htmlImageElementSetWidth, webkit_dom_html_image_element_get_width,
        htmlImageElementGetWidth,
        webkit_dom_html_image_element_get_complete,
        htmlImageElementGetComplete,
        webkit_dom_html_image_element_set_lowsrc,
        htmlImageElementSetLowsrc,
        webkit_dom_html_image_element_get_lowsrc,
        htmlImageElementGetLowsrc,
        webkit_dom_html_image_element_get_natural_height,
        htmlImageElementGetNaturalHeight,
        webkit_dom_html_image_element_get_natural_width,
        htmlImageElementGetNaturalWidth,
        webkit_dom_html_image_element_get_x, htmlImageElementGetX,
        webkit_dom_html_image_element_get_y, htmlImageElementGetY)
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
foreign import javascript unsafe "$1[\"name\"] = $2;"
        webkit_dom_html_image_element_set_name ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_name ::
                                         JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_name = undefined
#endif
 
htmlImageElementSetName ::
                        (HTMLImageElementClass self, ToJSString val) =>
                          self -> val -> IO ()
htmlImageElementSetName self val
  = webkit_dom_html_image_element_set_name
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_html_image_element_get_name ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_name ::
                                         JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_name = undefined
#endif
 
htmlImageElementGetName ::
                        (HTMLImageElementClass self, FromJSString result) =>
                          self -> IO result
htmlImageElementGetName self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_name
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_image_element_set_align ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_align ::
                                          JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_align = undefined
#endif
 
htmlImageElementSetAlign ::
                         (HTMLImageElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlImageElementSetAlign self val
  = webkit_dom_html_image_element_set_align
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_image_element_get_align ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_align ::
                                          JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_align = undefined
#endif
 
htmlImageElementGetAlign ::
                         (HTMLImageElementClass self, FromJSString result) =>
                           self -> IO result
htmlImageElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_align
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        webkit_dom_html_image_element_set_alt ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_alt ::
                                        JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_alt = undefined
#endif
 
htmlImageElementSetAlt ::
                       (HTMLImageElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlImageElementSetAlt self val
  = webkit_dom_html_image_element_set_alt
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alt\"]"
        webkit_dom_html_image_element_get_alt ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_alt ::
                                        JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_alt = undefined
#endif
 
htmlImageElementGetAlt ::
                       (HTMLImageElementClass self, FromJSString result) =>
                         self -> IO result
htmlImageElementGetAlt self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_alt
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        webkit_dom_html_image_element_set_border ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_border ::
                                           JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_border = undefined
#endif
 
htmlImageElementSetBorder ::
                          (HTMLImageElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlImageElementSetBorder self val
  = webkit_dom_html_image_element_set_border
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"]"
        webkit_dom_html_image_element_get_border ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_border ::
                                           JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_border = undefined
#endif
 
htmlImageElementGetBorder ::
                          (HTMLImageElementClass self, FromJSString result) =>
                            self -> IO result
htmlImageElementGetBorder self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_border
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        webkit_dom_html_image_element_set_cross_origin ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_cross_origin ::
                                                 JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_cross_origin = undefined
#endif
 
htmlImageElementSetCrossOrigin ::
                               (HTMLImageElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlImageElementSetCrossOrigin self val
  = webkit_dom_html_image_element_set_cross_origin
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        webkit_dom_html_image_element_get_cross_origin ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_cross_origin ::
                                                 JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_cross_origin = undefined
#endif
 
htmlImageElementGetCrossOrigin ::
                               (HTMLImageElementClass self, FromJSString result) =>
                                 self -> IO result
htmlImageElementGetCrossOrigin self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_cross_origin
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_image_element_set_height ::
        JSRef HTMLImageElement -> Int -> IO ()
#else 
webkit_dom_html_image_element_set_height ::
                                           JSRef HTMLImageElement -> Int -> IO ()
webkit_dom_html_image_element_set_height = undefined
#endif
 
htmlImageElementSetHeight ::
                          (HTMLImageElementClass self) => self -> Int -> IO ()
htmlImageElementSetHeight self val
  = webkit_dom_html_image_element_set_height
      (unHTMLImageElement (toHTMLImageElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_image_element_get_height ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_height ::
                                           JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_height = undefined
#endif
 
htmlImageElementGetHeight ::
                          (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetHeight self
  = webkit_dom_html_image_element_get_height
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        webkit_dom_html_image_element_set_hspace ::
        JSRef HTMLImageElement -> Int -> IO ()
#else 
webkit_dom_html_image_element_set_hspace ::
                                           JSRef HTMLImageElement -> Int -> IO ()
webkit_dom_html_image_element_set_hspace = undefined
#endif
 
htmlImageElementSetHspace ::
                          (HTMLImageElementClass self) => self -> Int -> IO ()
htmlImageElementSetHspace self val
  = webkit_dom_html_image_element_set_hspace
      (unHTMLImageElement (toHTMLImageElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        webkit_dom_html_image_element_get_hspace ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_hspace ::
                                           JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_hspace = undefined
#endif
 
htmlImageElementGetHspace ::
                          (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetHspace self
  = webkit_dom_html_image_element_get_hspace
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"isMap\"] = $2;"
        webkit_dom_html_image_element_set_is_map ::
        JSRef HTMLImageElement -> JSBool -> IO ()
#else 
webkit_dom_html_image_element_set_is_map ::
                                           JSRef HTMLImageElement -> JSBool -> IO ()
webkit_dom_html_image_element_set_is_map = undefined
#endif
 
htmlImageElementSetIsMap ::
                         (HTMLImageElementClass self) => self -> Bool -> IO ()
htmlImageElementSetIsMap self val
  = webkit_dom_html_image_element_set_is_map
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"isMap\"] ? 1 : 0)"
        webkit_dom_html_image_element_get_is_map ::
        JSRef HTMLImageElement -> IO JSBool
#else 
webkit_dom_html_image_element_get_is_map ::
                                           JSRef HTMLImageElement -> IO JSBool
webkit_dom_html_image_element_get_is_map = undefined
#endif
 
htmlImageElementGetIsMap ::
                         (HTMLImageElementClass self) => self -> IO Bool
htmlImageElementGetIsMap self
  = fromJSBool <$>
      (webkit_dom_html_image_element_get_is_map
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        webkit_dom_html_image_element_set_long_desc ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_long_desc ::
                                              JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_long_desc = undefined
#endif
 
htmlImageElementSetLongDesc ::
                            (HTMLImageElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlImageElementSetLongDesc self val
  = webkit_dom_html_image_element_set_long_desc
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"longDesc\"]"
        webkit_dom_html_image_element_get_long_desc ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_long_desc ::
                                              JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_long_desc = undefined
#endif
 
htmlImageElementGetLongDesc ::
                            (HTMLImageElementClass self, FromJSString result) =>
                              self -> IO result
htmlImageElementGetLongDesc self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_long_desc
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        webkit_dom_html_image_element_set_src ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_src ::
                                        JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_src = undefined
#endif
 
htmlImageElementSetSrc ::
                       (HTMLImageElementClass self, ToJSString val) =>
                         self -> val -> IO ()
htmlImageElementSetSrc self val
  = webkit_dom_html_image_element_set_src
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"src\"]"
        webkit_dom_html_image_element_get_src ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_src ::
                                        JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_src = undefined
#endif
 
htmlImageElementGetSrc ::
                       (HTMLImageElementClass self, FromJSString result) =>
                         self -> IO result
htmlImageElementGetSrc self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_src
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        webkit_dom_html_image_element_set_use_map ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_use_map ::
                                            JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_use_map = undefined
#endif
 
htmlImageElementSetUseMap ::
                          (HTMLImageElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlImageElementSetUseMap self val
  = webkit_dom_html_image_element_set_use_map
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"useMap\"]"
        webkit_dom_html_image_element_get_use_map ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_use_map ::
                                            JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_use_map = undefined
#endif
 
htmlImageElementGetUseMap ::
                          (HTMLImageElementClass self, FromJSString result) =>
                            self -> IO result
htmlImageElementGetUseMap self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_use_map
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        webkit_dom_html_image_element_set_vspace ::
        JSRef HTMLImageElement -> Int -> IO ()
#else 
webkit_dom_html_image_element_set_vspace ::
                                           JSRef HTMLImageElement -> Int -> IO ()
webkit_dom_html_image_element_set_vspace = undefined
#endif
 
htmlImageElementSetVspace ::
                          (HTMLImageElementClass self) => self -> Int -> IO ()
htmlImageElementSetVspace self val
  = webkit_dom_html_image_element_set_vspace
      (unHTMLImageElement (toHTMLImageElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        webkit_dom_html_image_element_get_vspace ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_vspace ::
                                           JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_vspace = undefined
#endif
 
htmlImageElementGetVspace ::
                          (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetVspace self
  = webkit_dom_html_image_element_get_vspace
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_image_element_set_width ::
        JSRef HTMLImageElement -> Int -> IO ()
#else 
webkit_dom_html_image_element_set_width ::
                                          JSRef HTMLImageElement -> Int -> IO ()
webkit_dom_html_image_element_set_width = undefined
#endif
 
htmlImageElementSetWidth ::
                         (HTMLImageElementClass self) => self -> Int -> IO ()
htmlImageElementSetWidth self val
  = webkit_dom_html_image_element_set_width
      (unHTMLImageElement (toHTMLImageElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_image_element_get_width ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_width ::
                                          JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_width = undefined
#endif
 
htmlImageElementGetWidth ::
                         (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetWidth self
  = webkit_dom_html_image_element_get_width
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"complete\"] ? 1 : 0)"
        webkit_dom_html_image_element_get_complete ::
        JSRef HTMLImageElement -> IO JSBool
#else 
webkit_dom_html_image_element_get_complete ::
                                             JSRef HTMLImageElement -> IO JSBool
webkit_dom_html_image_element_get_complete = undefined
#endif
 
htmlImageElementGetComplete ::
                            (HTMLImageElementClass self) => self -> IO Bool
htmlImageElementGetComplete self
  = fromJSBool <$>
      (webkit_dom_html_image_element_get_complete
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lowsrc\"] = $2;"
        webkit_dom_html_image_element_set_lowsrc ::
        JSRef HTMLImageElement -> JSString -> IO ()
#else 
webkit_dom_html_image_element_set_lowsrc ::
                                           JSRef HTMLImageElement -> JSString -> IO ()
webkit_dom_html_image_element_set_lowsrc = undefined
#endif
 
htmlImageElementSetLowsrc ::
                          (HTMLImageElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlImageElementSetLowsrc self val
  = webkit_dom_html_image_element_set_lowsrc
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lowsrc\"]"
        webkit_dom_html_image_element_get_lowsrc ::
        JSRef HTMLImageElement -> IO JSString
#else 
webkit_dom_html_image_element_get_lowsrc ::
                                           JSRef HTMLImageElement -> IO JSString
webkit_dom_html_image_element_get_lowsrc = undefined
#endif
 
htmlImageElementGetLowsrc ::
                          (HTMLImageElementClass self, FromJSString result) =>
                            self -> IO result
htmlImageElementGetLowsrc self
  = fromJSString <$>
      (webkit_dom_html_image_element_get_lowsrc
         (unHTMLImageElement (toHTMLImageElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"naturalHeight\"]"
        webkit_dom_html_image_element_get_natural_height ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_natural_height ::
                                                   JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_natural_height = undefined
#endif
 
htmlImageElementGetNaturalHeight ::
                                 (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetNaturalHeight self
  = webkit_dom_html_image_element_get_natural_height
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"naturalWidth\"]"
        webkit_dom_html_image_element_get_natural_width ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_natural_width ::
                                                  JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_natural_width = undefined
#endif
 
htmlImageElementGetNaturalWidth ::
                                (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetNaturalWidth self
  = webkit_dom_html_image_element_get_natural_width
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"x\"]"
        webkit_dom_html_image_element_get_x ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_x ::
                                      JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_x = undefined
#endif
 
htmlImageElementGetX ::
                     (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetX self
  = webkit_dom_html_image_element_get_x
      (unHTMLImageElement (toHTMLImageElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"y\"]"
        webkit_dom_html_image_element_get_y ::
        JSRef HTMLImageElement -> IO Int
#else 
webkit_dom_html_image_element_get_y ::
                                      JSRef HTMLImageElement -> IO Int
webkit_dom_html_image_element_get_y = undefined
#endif
 
htmlImageElementGetY ::
                     (HTMLImageElementClass self) => self -> IO Int
htmlImageElementGetY self
  = webkit_dom_html_image_element_get_y
      (unHTMLImageElement (toHTMLImageElement self))