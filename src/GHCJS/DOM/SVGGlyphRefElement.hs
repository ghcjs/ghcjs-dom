{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGGlyphRefElement
       (ghcjs_dom_svg_glyph_ref_element_set_glyph_ref,
        svgGlyphRefElementSetGlyphRef,
        ghcjs_dom_svg_glyph_ref_element_get_glyph_ref,
        svgGlyphRefElementGetGlyphRef,
        ghcjs_dom_svg_glyph_ref_element_set_format,
        svgGlyphRefElementSetFormat,
        ghcjs_dom_svg_glyph_ref_element_get_format,
        svgGlyphRefElementGetFormat, ghcjs_dom_svg_glyph_ref_element_set_x,
        svgGlyphRefElementSetX, ghcjs_dom_svg_glyph_ref_element_get_x,
        svgGlyphRefElementGetX, ghcjs_dom_svg_glyph_ref_element_set_y,
        svgGlyphRefElementSetY, ghcjs_dom_svg_glyph_ref_element_get_y,
        svgGlyphRefElementGetY, ghcjs_dom_svg_glyph_ref_element_set_dx,
        svgGlyphRefElementSetDx, ghcjs_dom_svg_glyph_ref_element_get_dx,
        svgGlyphRefElementGetDx, ghcjs_dom_svg_glyph_ref_element_set_dy,
        svgGlyphRefElementSetDy, ghcjs_dom_svg_glyph_ref_element_get_dy,
        svgGlyphRefElementGetDy, SVGGlyphRefElement, IsSVGGlyphRefElement,
        castToSVGGlyphRefElement, gTypeSVGGlyphRefElement,
        toSVGGlyphRefElement)
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

 
foreign import javascript unsafe "$1[\"glyphRef\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_glyph_ref ::
        JSRef SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
svgGlyphRefElementSetGlyphRef ::
                              (IsSVGGlyphRefElement self, ToJSString val) => self -> val -> IO ()
svgGlyphRefElementSetGlyphRef self val
  = ghcjs_dom_svg_glyph_ref_element_set_glyph_ref
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"glyphRef\"]"
        ghcjs_dom_svg_glyph_ref_element_get_glyph_ref ::
        JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
svgGlyphRefElementGetGlyphRef ::
                              (IsSVGGlyphRefElement self, FromJSString result) =>
                                self -> IO result
svgGlyphRefElementGetGlyphRef self
  = fromJSString <$>
      (ghcjs_dom_svg_glyph_ref_element_get_glyph_ref
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_format ::
        JSRef SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
svgGlyphRefElementSetFormat ::
                            (IsSVGGlyphRefElement self, ToJSString val) => self -> val -> IO ()
svgGlyphRefElementSetFormat self val
  = ghcjs_dom_svg_glyph_ref_element_set_format
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"format\"]"
        ghcjs_dom_svg_glyph_ref_element_get_format ::
        JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
svgGlyphRefElementGetFormat ::
                            (IsSVGGlyphRefElement self, FromJSString result) =>
                              self -> IO result
svgGlyphRefElementGetFormat self
  = fromJSString <$>
      (ghcjs_dom_svg_glyph_ref_element_get_format
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_x ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
svgGlyphRefElementSetX ::
                       (IsSVGGlyphRefElement self) => self -> Float -> IO ()
svgGlyphRefElementSetX self val
  = ghcjs_dom_svg_glyph_ref_element_set_x
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_glyph_ref_element_get_x ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
svgGlyphRefElementGetX ::
                       (IsSVGGlyphRefElement self) => self -> IO Float
svgGlyphRefElementGetX self
  = ghcjs_dom_svg_glyph_ref_element_get_x
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_y ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
svgGlyphRefElementSetY ::
                       (IsSVGGlyphRefElement self) => self -> Float -> IO ()
svgGlyphRefElementSetY self val
  = ghcjs_dom_svg_glyph_ref_element_set_y
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_glyph_ref_element_get_y ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
svgGlyphRefElementGetY ::
                       (IsSVGGlyphRefElement self) => self -> IO Float
svgGlyphRefElementGetY self
  = ghcjs_dom_svg_glyph_ref_element_get_y
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"dx\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_dx ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
svgGlyphRefElementSetDx ::
                        (IsSVGGlyphRefElement self) => self -> Float -> IO ()
svgGlyphRefElementSetDx self val
  = ghcjs_dom_svg_glyph_ref_element_set_dx
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      val
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svg_glyph_ref_element_get_dx ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
svgGlyphRefElementGetDx ::
                        (IsSVGGlyphRefElement self) => self -> IO Float
svgGlyphRefElementGetDx self
  = ghcjs_dom_svg_glyph_ref_element_get_dx
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
 
foreign import javascript unsafe "$1[\"dy\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_dy ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
svgGlyphRefElementSetDy ::
                        (IsSVGGlyphRefElement self) => self -> Float -> IO ()
svgGlyphRefElementSetDy self val
  = ghcjs_dom_svg_glyph_ref_element_set_dy
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
      val
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svg_glyph_ref_element_get_dy ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
svgGlyphRefElementGetDy ::
                        (IsSVGGlyphRefElement self) => self -> IO Float
svgGlyphRefElementGetDy self
  = ghcjs_dom_svg_glyph_ref_element_get_dy
      (unSVGGlyphRefElement (toSVGGlyphRefElement self))
#else
module GHCJS.DOM.SVGGlyphRefElement (
  ) where
#endif
