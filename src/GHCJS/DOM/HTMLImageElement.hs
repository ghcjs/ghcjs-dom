{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLImageElement
       (ghcjs_dom_html_image_element_set_name, htmlImageElementSetName,
        ghcjs_dom_html_image_element_get_name, htmlImageElementGetName,
        ghcjs_dom_html_image_element_set_align, htmlImageElementSetAlign,
        ghcjs_dom_html_image_element_get_align, htmlImageElementGetAlign,
        ghcjs_dom_html_image_element_set_alt, htmlImageElementSetAlt,
        ghcjs_dom_html_image_element_get_alt, htmlImageElementGetAlt,
        ghcjs_dom_html_image_element_set_border, htmlImageElementSetBorder,
        ghcjs_dom_html_image_element_get_border, htmlImageElementGetBorder,
        ghcjs_dom_html_image_element_set_cross_origin,
        htmlImageElementSetCrossOrigin,
        ghcjs_dom_html_image_element_get_cross_origin,
        htmlImageElementGetCrossOrigin,
        ghcjs_dom_html_image_element_set_height, htmlImageElementSetHeight,
        ghcjs_dom_html_image_element_get_height, htmlImageElementGetHeight,
        ghcjs_dom_html_image_element_set_hspace, htmlImageElementSetHspace,
        ghcjs_dom_html_image_element_get_hspace, htmlImageElementGetHspace,
        ghcjs_dom_html_image_element_set_is_map, htmlImageElementSetIsMap,
        ghcjs_dom_html_image_element_get_is_map, htmlImageElementGetIsMap,
        ghcjs_dom_html_image_element_set_long_desc,
        htmlImageElementSetLongDesc,
        ghcjs_dom_html_image_element_get_long_desc,
        htmlImageElementGetLongDesc, ghcjs_dom_html_image_element_set_src,
        htmlImageElementSetSrc, ghcjs_dom_html_image_element_get_src,
        htmlImageElementGetSrc, ghcjs_dom_html_image_element_set_srcset,
        htmlImageElementSetSrcset, ghcjs_dom_html_image_element_get_srcset,
        htmlImageElementGetSrcset, ghcjs_dom_html_image_element_set_sizes,
        htmlImageElementSetSizes, ghcjs_dom_html_image_element_get_sizes,
        htmlImageElementGetSizes,
        ghcjs_dom_html_image_element_get_current_src,
        htmlImageElementGetCurrentSrc,
        ghcjs_dom_html_image_element_set_use_map,
        htmlImageElementSetUseMap,
        ghcjs_dom_html_image_element_get_use_map,
        htmlImageElementGetUseMap, ghcjs_dom_html_image_element_set_vspace,
        htmlImageElementSetVspace, ghcjs_dom_html_image_element_get_vspace,
        htmlImageElementGetVspace, ghcjs_dom_html_image_element_set_width,
        htmlImageElementSetWidth, ghcjs_dom_html_image_element_get_width,
        htmlImageElementGetWidth,
        ghcjs_dom_html_image_element_get_complete,
        htmlImageElementGetComplete,
        ghcjs_dom_html_image_element_set_lowsrc, htmlImageElementSetLowsrc,
        ghcjs_dom_html_image_element_get_lowsrc, htmlImageElementGetLowsrc,
        ghcjs_dom_html_image_element_get_natural_height,
        htmlImageElementGetNaturalHeight,
        ghcjs_dom_html_image_element_get_natural_width,
        htmlImageElementGetNaturalWidth,
        ghcjs_dom_html_image_element_get_x, htmlImageElementGetX,
        ghcjs_dom_html_image_element_get_y, htmlImageElementGetY,
        HTMLImageElement, IsHTMLImageElement, castToHTMLImageElement,
        gTypeHTMLImageElement, toHTMLImageElement)
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

 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_image_element_set_name ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
htmlImageElementSetName ::
                        (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetName self val
  = ghcjs_dom_html_image_element_set_name
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_image_element_get_name ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.name Mozilla HTMLImageElement.name documentation> 
htmlImageElementGetName ::
                        (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetName self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_name
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_image_element_set_align ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
htmlImageElementSetAlign ::
                         (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetAlign self val
  = ghcjs_dom_html_image_element_set_align
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_image_element_get_align ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.align Mozilla HTMLImageElement.align documentation> 
htmlImageElementGetAlign ::
                         (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_align
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_image_element_set_alt ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
htmlImageElementSetAlt ::
                       (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetAlt self val
  = ghcjs_dom_html_image_element_set_alt
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_image_element_get_alt ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.alt Mozilla HTMLImageElement.alt documentation> 
htmlImageElementGetAlt ::
                       (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetAlt self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_alt
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        ghcjs_dom_html_image_element_set_border ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
htmlImageElementSetBorder ::
                          (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetBorder self val
  = ghcjs_dom_html_image_element_set_border
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"border\"]"
        ghcjs_dom_html_image_element_get_border ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.border Mozilla HTMLImageElement.border documentation> 
htmlImageElementGetBorder ::
                          (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetBorder self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_border
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        ghcjs_dom_html_image_element_set_cross_origin ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
htmlImageElementSetCrossOrigin ::
                               (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetCrossOrigin self val
  = ghcjs_dom_html_image_element_set_cross_origin
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        ghcjs_dom_html_image_element_get_cross_origin ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.crossOrigin Mozilla HTMLImageElement.crossOrigin documentation> 
htmlImageElementGetCrossOrigin ::
                               (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetCrossOrigin self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_cross_origin
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_image_element_set_height ::
        JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
htmlImageElementSetHeight ::
                          (IsHTMLImageElement self) => self -> Int -> IO ()
htmlImageElementSetHeight self val
  = ghcjs_dom_html_image_element_set_height
      (unHTMLImageElement (toHTMLImageElement self))
      val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_image_element_get_height ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.height Mozilla HTMLImageElement.height documentation> 
htmlImageElementGetHeight ::
                          (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetHeight self
  = ghcjs_dom_html_image_element_get_height
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_image_element_set_hspace ::
        JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
htmlImageElementSetHspace ::
                          (IsHTMLImageElement self) => self -> Int -> IO ()
htmlImageElementSetHspace self val
  = ghcjs_dom_html_image_element_set_hspace
      (unHTMLImageElement (toHTMLImageElement self))
      val
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_image_element_get_hspace ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.hspace Mozilla HTMLImageElement.hspace documentation> 
htmlImageElementGetHspace ::
                          (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetHspace self
  = ghcjs_dom_html_image_element_get_hspace
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"isMap\"] = $2;"
        ghcjs_dom_html_image_element_set_is_map ::
        JSRef HTMLImageElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
htmlImageElementSetIsMap ::
                         (IsHTMLImageElement self) => self -> Bool -> IO ()
htmlImageElementSetIsMap self val
  = ghcjs_dom_html_image_element_set_is_map
      (unHTMLImageElement (toHTMLImageElement self))
      val
 
foreign import javascript unsafe "($1[\"isMap\"] ? 1 : 0)"
        ghcjs_dom_html_image_element_get_is_map ::
        JSRef HTMLImageElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.isMap Mozilla HTMLImageElement.isMap documentation> 
htmlImageElementGetIsMap ::
                         (IsHTMLImageElement self) => self -> IO Bool
htmlImageElementGetIsMap self
  = ghcjs_dom_html_image_element_get_is_map
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        ghcjs_dom_html_image_element_set_long_desc ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
htmlImageElementSetLongDesc ::
                            (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetLongDesc self val
  = ghcjs_dom_html_image_element_set_long_desc
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"longDesc\"]"
        ghcjs_dom_html_image_element_get_long_desc ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.longDesc Mozilla HTMLImageElement.longDesc documentation> 
htmlImageElementGetLongDesc ::
                            (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetLongDesc self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_long_desc
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_image_element_set_src ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
htmlImageElementSetSrc ::
                       (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetSrc self val
  = ghcjs_dom_html_image_element_set_src
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_image_element_get_src ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.src Mozilla HTMLImageElement.src documentation> 
htmlImageElementGetSrc ::
                       (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetSrc self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_src
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"srcset\"] = $2;"
        ghcjs_dom_html_image_element_set_srcset ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
htmlImageElementSetSrcset ::
                          (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetSrcset self val
  = ghcjs_dom_html_image_element_set_srcset
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"srcset\"]"
        ghcjs_dom_html_image_element_get_srcset ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.srcset Mozilla HTMLImageElement.srcset documentation> 
htmlImageElementGetSrcset ::
                          (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetSrcset self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_srcset
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"sizes\"] = $2;"
        ghcjs_dom_html_image_element_set_sizes ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
htmlImageElementSetSizes ::
                         (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetSizes self val
  = ghcjs_dom_html_image_element_set_sizes
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"sizes\"]"
        ghcjs_dom_html_image_element_get_sizes ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.sizes Mozilla HTMLImageElement.sizes documentation> 
htmlImageElementGetSizes ::
                         (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetSizes self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_sizes
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"currentSrc\"]"
        ghcjs_dom_html_image_element_get_current_src ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.currentSrc Mozilla HTMLImageElement.currentSrc documentation> 
htmlImageElementGetCurrentSrc ::
                              (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetCurrentSrc self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_current_src
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"useMap\"] = $2;"
        ghcjs_dom_html_image_element_set_use_map ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
htmlImageElementSetUseMap ::
                          (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetUseMap self val
  = ghcjs_dom_html_image_element_set_use_map
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"useMap\"]"
        ghcjs_dom_html_image_element_get_use_map ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.useMap Mozilla HTMLImageElement.useMap documentation> 
htmlImageElementGetUseMap ::
                          (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetUseMap self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_use_map
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_image_element_set_vspace ::
        JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
htmlImageElementSetVspace ::
                          (IsHTMLImageElement self) => self -> Int -> IO ()
htmlImageElementSetVspace self val
  = ghcjs_dom_html_image_element_set_vspace
      (unHTMLImageElement (toHTMLImageElement self))
      val
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_image_element_get_vspace ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.vspace Mozilla HTMLImageElement.vspace documentation> 
htmlImageElementGetVspace ::
                          (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetVspace self
  = ghcjs_dom_html_image_element_get_vspace
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_image_element_set_width ::
        JSRef HTMLImageElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
htmlImageElementSetWidth ::
                         (IsHTMLImageElement self) => self -> Int -> IO ()
htmlImageElementSetWidth self val
  = ghcjs_dom_html_image_element_set_width
      (unHTMLImageElement (toHTMLImageElement self))
      val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_image_element_get_width ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.width Mozilla HTMLImageElement.width documentation> 
htmlImageElementGetWidth ::
                         (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetWidth self
  = ghcjs_dom_html_image_element_get_width
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "($1[\"complete\"] ? 1 : 0)"
        ghcjs_dom_html_image_element_get_complete ::
        JSRef HTMLImageElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.complete Mozilla HTMLImageElement.complete documentation> 
htmlImageElementGetComplete ::
                            (IsHTMLImageElement self) => self -> IO Bool
htmlImageElementGetComplete self
  = ghcjs_dom_html_image_element_get_complete
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"lowsrc\"] = $2;"
        ghcjs_dom_html_image_element_set_lowsrc ::
        JSRef HTMLImageElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
htmlImageElementSetLowsrc ::
                          (IsHTMLImageElement self, ToJSString val) => self -> val -> IO ()
htmlImageElementSetLowsrc self val
  = ghcjs_dom_html_image_element_set_lowsrc
      (unHTMLImageElement (toHTMLImageElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"lowsrc\"]"
        ghcjs_dom_html_image_element_get_lowsrc ::
        JSRef HTMLImageElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.lowsrc Mozilla HTMLImageElement.lowsrc documentation> 
htmlImageElementGetLowsrc ::
                          (IsHTMLImageElement self, FromJSString result) => self -> IO result
htmlImageElementGetLowsrc self
  = fromJSString <$>
      (ghcjs_dom_html_image_element_get_lowsrc
         (unHTMLImageElement (toHTMLImageElement self)))
 
foreign import javascript unsafe "$1[\"naturalHeight\"]"
        ghcjs_dom_html_image_element_get_natural_height ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalHeight Mozilla HTMLImageElement.naturalHeight documentation> 
htmlImageElementGetNaturalHeight ::
                                 (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetNaturalHeight self
  = ghcjs_dom_html_image_element_get_natural_height
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"naturalWidth\"]"
        ghcjs_dom_html_image_element_get_natural_width ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.naturalWidth Mozilla HTMLImageElement.naturalWidth documentation> 
htmlImageElementGetNaturalWidth ::
                                (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetNaturalWidth self
  = ghcjs_dom_html_image_element_get_natural_width
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_html_image_element_get_x ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.x Mozilla HTMLImageElement.x documentation> 
htmlImageElementGetX :: (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetX self
  = ghcjs_dom_html_image_element_get_x
      (unHTMLImageElement (toHTMLImageElement self))
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_html_image_element_get_y ::
        JSRef HTMLImageElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement.y Mozilla HTMLImageElement.y documentation> 
htmlImageElementGetY :: (IsHTMLImageElement self) => self -> IO Int
htmlImageElementGetY self
  = ghcjs_dom_html_image_element_get_y
      (unHTMLImageElement (toHTMLImageElement self))
#else
module GHCJS.DOM.HTMLImageElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLImageElement
#endif
