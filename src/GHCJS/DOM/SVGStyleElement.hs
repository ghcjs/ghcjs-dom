{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStyleElement
       (ghcjs_dom_svg_style_element_set_disabled,
        svgStyleElementSetDisabled,
        ghcjs_dom_svg_style_element_get_disabled,
        svgStyleElementGetDisabled, ghcjs_dom_svg_style_element_set_media,
        svgStyleElementSetMedia, ghcjs_dom_svg_style_element_get_media,
        svgStyleElementGetMedia, ghcjs_dom_svg_style_element_set_title,
        svgStyleElementSetTitle, ghcjs_dom_svg_style_element_get_title,
        svgStyleElementGetTitle, SVGStyleElement, IsSVGStyleElement,
        castToSVGStyleElement, gTypeSVGStyleElement, toSVGStyleElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_svg_style_element_set_disabled ::
        JSRef SVGStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
svgStyleElementSetDisabled ::
                           (IsSVGStyleElement self) => self -> Bool -> IO ()
svgStyleElementSetDisabled self val
  = ghcjs_dom_svg_style_element_set_disabled
      (unSVGStyleElement (toSVGStyleElement self))
      val
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_svg_style_element_get_disabled ::
        JSRef SVGStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
svgStyleElementGetDisabled ::
                           (IsSVGStyleElement self) => self -> IO Bool
svgStyleElementGetDisabled self
  = ghcjs_dom_svg_style_element_get_disabled
      (unSVGStyleElement (toSVGStyleElement self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_svg_style_element_set_media ::
        JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
svgStyleElementSetMedia ::
                        (IsSVGStyleElement self, ToJSString val) => self -> val -> IO ()
svgStyleElementSetMedia self val
  = ghcjs_dom_svg_style_element_set_media
      (unSVGStyleElement (toSVGStyleElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_svg_style_element_get_media ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
svgStyleElementGetMedia ::
                        (IsSVGStyleElement self, FromJSString result) => self -> IO result
svgStyleElementGetMedia self
  = fromJSString <$>
      (ghcjs_dom_svg_style_element_get_media
         (unSVGStyleElement (toSVGStyleElement self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_svg_style_element_set_title ::
        JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
svgStyleElementSetTitle ::
                        (IsSVGStyleElement self, ToJSString val) => self -> val -> IO ()
svgStyleElementSetTitle self val
  = ghcjs_dom_svg_style_element_set_title
      (unSVGStyleElement (toSVGStyleElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_svg_style_element_get_title ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
svgStyleElementGetTitle ::
                        (IsSVGStyleElement self, FromJSString result) => self -> IO result
svgStyleElementGetTitle self
  = fromJSString <$>
      (ghcjs_dom_svg_style_element_get_title
         (unSVGStyleElement (toSVGStyleElement self)))
#else
module GHCJS.DOM.SVGStyleElement (
  ) where
#endif
