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
import Control.Monad.IO.Class (MonadIO(..))
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
                              (MonadIO m, IsSVGGlyphRefElement self, ToJSString val) =>
                                self -> val -> m ()
svgGlyphRefElementSetGlyphRef self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_glyph_ref
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"glyphRef\"]"
        ghcjs_dom_svg_glyph_ref_element_get_glyph_ref ::
        JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.glyphRef Mozilla SVGGlyphRefElement.glyphRef documentation> 
svgGlyphRefElementGetGlyphRef ::
                              (MonadIO m, IsSVGGlyphRefElement self, FromJSString result) =>
                                self -> m result
svgGlyphRefElementGetGlyphRef self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_glyph_ref_element_get_glyph_ref
            (unSVGGlyphRefElement (toSVGGlyphRefElement self))))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_format ::
        JSRef SVGGlyphRefElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
svgGlyphRefElementSetFormat ::
                            (MonadIO m, IsSVGGlyphRefElement self, ToJSString val) =>
                              self -> val -> m ()
svgGlyphRefElementSetFormat self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_format
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"format\"]"
        ghcjs_dom_svg_glyph_ref_element_get_format ::
        JSRef SVGGlyphRefElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.format Mozilla SVGGlyphRefElement.format documentation> 
svgGlyphRefElementGetFormat ::
                            (MonadIO m, IsSVGGlyphRefElement self, FromJSString result) =>
                              self -> m result
svgGlyphRefElementGetFormat self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_glyph_ref_element_get_format
            (unSVGGlyphRefElement (toSVGGlyphRefElement self))))
 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_x ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
svgGlyphRefElementSetX ::
                       (MonadIO m, IsSVGGlyphRefElement self) => self -> Float -> m ()
svgGlyphRefElementSetX self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_x
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_glyph_ref_element_get_x ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.x Mozilla SVGGlyphRefElement.x documentation> 
svgGlyphRefElementGetX ::
                       (MonadIO m, IsSVGGlyphRefElement self) => self -> m Float
svgGlyphRefElementGetX self
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_get_x
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_y ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
svgGlyphRefElementSetY ::
                       (MonadIO m, IsSVGGlyphRefElement self) => self -> Float -> m ()
svgGlyphRefElementSetY self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_y
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_glyph_ref_element_get_y ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.y Mozilla SVGGlyphRefElement.y documentation> 
svgGlyphRefElementGetY ::
                       (MonadIO m, IsSVGGlyphRefElement self) => self -> m Float
svgGlyphRefElementGetY self
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_get_y
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"dx\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_dx ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
svgGlyphRefElementSetDx ::
                        (MonadIO m, IsSVGGlyphRefElement self) => self -> Float -> m ()
svgGlyphRefElementSetDx self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_dx
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         val)
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svg_glyph_ref_element_get_dx ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dx Mozilla SVGGlyphRefElement.dx documentation> 
svgGlyphRefElementGetDx ::
                        (MonadIO m, IsSVGGlyphRefElement self) => self -> m Float
svgGlyphRefElementGetDx self
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_get_dx
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
 
foreign import javascript unsafe "$1[\"dy\"] = $2;"
        ghcjs_dom_svg_glyph_ref_element_set_dy ::
        JSRef SVGGlyphRefElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
svgGlyphRefElementSetDy ::
                        (MonadIO m, IsSVGGlyphRefElement self) => self -> Float -> m ()
svgGlyphRefElementSetDy self val
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_set_dy
         (unSVGGlyphRefElement (toSVGGlyphRefElement self))
         val)
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svg_glyph_ref_element_get_dy ::
        JSRef SVGGlyphRefElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGlyphRefElement.dy Mozilla SVGGlyphRefElement.dy documentation> 
svgGlyphRefElementGetDy ::
                        (MonadIO m, IsSVGGlyphRefElement self) => self -> m Float
svgGlyphRefElementGetDy self
  = liftIO
      (ghcjs_dom_svg_glyph_ref_element_get_dy
         (unSVGGlyphRefElement (toSVGGlyphRefElement self)))
#else
module GHCJS.DOM.SVGGlyphRefElement (
  ) where
#endif
