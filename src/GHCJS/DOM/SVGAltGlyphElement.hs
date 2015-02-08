{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAltGlyphElement
       (ghcjs_dom_svg_alt_glyph_element_set_glyph_ref,
        svgAltGlyphElementSetGlyphRef,
        ghcjs_dom_svg_alt_glyph_element_get_glyph_ref,
        svgAltGlyphElementGetGlyphRef,
        ghcjs_dom_svg_alt_glyph_element_set_format,
        svgAltGlyphElementSetFormat,
        ghcjs_dom_svg_alt_glyph_element_get_format,
        svgAltGlyphElementGetFormat, SVGAltGlyphElement,
        IsSVGAltGlyphElement, castToSVGAltGlyphElement,
        gTypeSVGAltGlyphElement, toSVGAltGlyphElement)
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
        ghcjs_dom_svg_alt_glyph_element_set_glyph_ref ::
        JSRef SVGAltGlyphElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
svgAltGlyphElementSetGlyphRef ::
                              (MonadIO m, IsSVGAltGlyphElement self, ToJSString val) =>
                                self -> val -> m ()
svgAltGlyphElementSetGlyphRef self val
  = liftIO
      (ghcjs_dom_svg_alt_glyph_element_set_glyph_ref
         (unSVGAltGlyphElement (toSVGAltGlyphElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"glyphRef\"]"
        ghcjs_dom_svg_alt_glyph_element_get_glyph_ref ::
        JSRef SVGAltGlyphElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.glyphRef Mozilla SVGAltGlyphElement.glyphRef documentation> 
svgAltGlyphElementGetGlyphRef ::
                              (MonadIO m, IsSVGAltGlyphElement self, FromJSString result) =>
                                self -> m result
svgAltGlyphElementGetGlyphRef self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_alt_glyph_element_get_glyph_ref
            (unSVGAltGlyphElement (toSVGAltGlyphElement self))))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        ghcjs_dom_svg_alt_glyph_element_set_format ::
        JSRef SVGAltGlyphElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
svgAltGlyphElementSetFormat ::
                            (MonadIO m, IsSVGAltGlyphElement self, ToJSString val) =>
                              self -> val -> m ()
svgAltGlyphElementSetFormat self val
  = liftIO
      (ghcjs_dom_svg_alt_glyph_element_set_format
         (unSVGAltGlyphElement (toSVGAltGlyphElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"format\"]"
        ghcjs_dom_svg_alt_glyph_element_get_format ::
        JSRef SVGAltGlyphElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAltGlyphElement.format Mozilla SVGAltGlyphElement.format documentation> 
svgAltGlyphElementGetFormat ::
                            (MonadIO m, IsSVGAltGlyphElement self, FromJSString result) =>
                              self -> m result
svgAltGlyphElementGetFormat self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_alt_glyph_element_get_format
            (unSVGAltGlyphElement (toSVGAltGlyphElement self))))
#else
module GHCJS.DOM.SVGAltGlyphElement (
  ) where
#endif
