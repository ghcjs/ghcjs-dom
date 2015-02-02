{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGElement
       (ghcjs_dom_svg_element_get_presentation_attribute,
        svgElementGetPresentationAttribute,
        ghcjs_dom_svg_element_set_xmlbase, svgElementSetXmlbase,
        ghcjs_dom_svg_element_get_xmlbase, svgElementGetXmlbase,
        ghcjs_dom_svg_element_get_owner_svg_element,
        svgElementGetOwnerSVGElement,
        ghcjs_dom_svg_element_get_viewport_element,
        svgElementGetViewportElement, ghcjs_dom_svg_element_set_xmllang,
        svgElementSetXmllang, ghcjs_dom_svg_element_get_xmllang,
        svgElementGetXmllang, ghcjs_dom_svg_element_set_xmlspace,
        svgElementSetXmlspace, ghcjs_dom_svg_element_get_xmlspace,
        svgElementGetXmlspace, ghcjs_dom_svg_element_get_class_name,
        svgElementGetClassName, ghcjs_dom_svg_element_get_style,
        svgElementGetStyle, ghcjs_dom_svg_element_set_tab_index,
        svgElementSetTabIndex, ghcjs_dom_svg_element_get_tab_index,
        svgElementGetTabIndex, SVGElement, IsSVGElement, castToSVGElement,
        gTypeSVGElement, toSVGElement)
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

 
foreign import javascript unsafe
        "$1[\"getPresentationAttribute\"]($2)"
        ghcjs_dom_svg_element_get_presentation_attribute ::
        JSRef SVGElement -> JSString -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.presentationAttribute Mozilla SVGElement.presentationAttribute documentation> 
svgElementGetPresentationAttribute ::
                                   (IsSVGElement self, ToJSString name) =>
                                     self -> name -> IO (Maybe CSSValue)
svgElementGetPresentationAttribute self name
  = (ghcjs_dom_svg_element_get_presentation_attribute
       (unSVGElement (toSVGElement self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"xmlbase\"] = $2;"
        ghcjs_dom_svg_element_set_xmlbase ::
        JSRef SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
svgElementSetXmlbase ::
                     (IsSVGElement self, ToJSString val) => self -> val -> IO ()
svgElementSetXmlbase self val
  = ghcjs_dom_svg_element_set_xmlbase
      (unSVGElement (toSVGElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"xmlbase\"]"
        ghcjs_dom_svg_element_get_xmlbase ::
        JSRef SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlbase Mozilla SVGElement.xmlbase documentation> 
svgElementGetXmlbase ::
                     (IsSVGElement self, FromJSString result) => self -> IO result
svgElementGetXmlbase self
  = fromJSString <$>
      (ghcjs_dom_svg_element_get_xmlbase
         (unSVGElement (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"ownerSVGElement\"]"
        ghcjs_dom_svg_element_get_owner_svg_element ::
        JSRef SVGElement -> IO (JSRef SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.ownerSVGElement Mozilla SVGElement.ownerSVGElement documentation> 
svgElementGetOwnerSVGElement ::
                             (IsSVGElement self) => self -> IO (Maybe SVGSVGElement)
svgElementGetOwnerSVGElement self
  = (ghcjs_dom_svg_element_get_owner_svg_element
       (unSVGElement (toSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"viewportElement\"]"
        ghcjs_dom_svg_element_get_viewport_element ::
        JSRef SVGElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.viewportElement Mozilla SVGElement.viewportElement documentation> 
svgElementGetViewportElement ::
                             (IsSVGElement self) => self -> IO (Maybe SVGElement)
svgElementGetViewportElement self
  = (ghcjs_dom_svg_element_get_viewport_element
       (unSVGElement (toSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"xmllang\"] = $2;"
        ghcjs_dom_svg_element_set_xmllang ::
        JSRef SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
svgElementSetXmllang ::
                     (IsSVGElement self, ToJSString val) => self -> val -> IO ()
svgElementSetXmllang self val
  = ghcjs_dom_svg_element_set_xmllang
      (unSVGElement (toSVGElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"xmllang\"]"
        ghcjs_dom_svg_element_get_xmllang ::
        JSRef SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmllang Mozilla SVGElement.xmllang documentation> 
svgElementGetXmllang ::
                     (IsSVGElement self, FromJSString result) => self -> IO result
svgElementGetXmllang self
  = fromJSString <$>
      (ghcjs_dom_svg_element_get_xmllang
         (unSVGElement (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"xmlspace\"] = $2;"
        ghcjs_dom_svg_element_set_xmlspace ::
        JSRef SVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
svgElementSetXmlspace ::
                      (IsSVGElement self, ToJSString val) => self -> val -> IO ()
svgElementSetXmlspace self val
  = ghcjs_dom_svg_element_set_xmlspace
      (unSVGElement (toSVGElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"xmlspace\"]"
        ghcjs_dom_svg_element_get_xmlspace ::
        JSRef SVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.xmlspace Mozilla SVGElement.xmlspace documentation> 
svgElementGetXmlspace ::
                      (IsSVGElement self, FromJSString result) => self -> IO result
svgElementGetXmlspace self
  = fromJSString <$>
      (ghcjs_dom_svg_element_get_xmlspace
         (unSVGElement (toSVGElement self)))
 
foreign import javascript unsafe "$1[\"className\"]"
        ghcjs_dom_svg_element_get_class_name ::
        JSRef SVGElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.className Mozilla SVGElement.className documentation> 
svgElementGetClassName ::
                       (IsSVGElement self) => self -> IO (Maybe SVGAnimatedString)
svgElementGetClassName self
  = (ghcjs_dom_svg_element_get_class_name
       (unSVGElement (toSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"style\"]"
        ghcjs_dom_svg_element_get_style ::
        JSRef SVGElement -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.style Mozilla SVGElement.style documentation> 
svgElementGetStyle ::
                   (IsSVGElement self) => self -> IO (Maybe CSSStyleDeclaration)
svgElementGetStyle self
  = (ghcjs_dom_svg_element_get_style
       (unSVGElement (toSVGElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        ghcjs_dom_svg_element_set_tab_index ::
        JSRef SVGElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
svgElementSetTabIndex ::
                      (IsSVGElement self) => self -> Int -> IO ()
svgElementSetTabIndex self val
  = ghcjs_dom_svg_element_set_tab_index
      (unSVGElement (toSVGElement self))
      val
 
foreign import javascript unsafe "$1[\"tabIndex\"]"
        ghcjs_dom_svg_element_get_tab_index :: JSRef SVGElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGElement.tabIndex Mozilla SVGElement.tabIndex documentation> 
svgElementGetTabIndex :: (IsSVGElement self) => self -> IO Int
svgElementGetTabIndex self
  = ghcjs_dom_svg_element_get_tab_index
      (unSVGElement (toSVGElement self))
#else
module GHCJS.DOM.SVGElement (
  ) where
#endif
