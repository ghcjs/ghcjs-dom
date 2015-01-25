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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"glyphRef\"] = $2;"
        ghcjs_dom_svg_alt_glyph_element_set_glyph_ref ::
        JSRef SVGAltGlyphElement -> JSString -> IO ()
 
svgAltGlyphElementSetGlyphRef ::
                              (IsSVGAltGlyphElement self, ToJSString val) => self -> val -> IO ()
svgAltGlyphElementSetGlyphRef self val
  = ghcjs_dom_svg_alt_glyph_element_set_glyph_ref
      (unSVGAltGlyphElement (toSVGAltGlyphElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"glyphRef\"]"
        ghcjs_dom_svg_alt_glyph_element_get_glyph_ref ::
        JSRef SVGAltGlyphElement -> IO JSString
 
svgAltGlyphElementGetGlyphRef ::
                              (IsSVGAltGlyphElement self, FromJSString result) =>
                                self -> IO result
svgAltGlyphElementGetGlyphRef self
  = fromJSString <$>
      (ghcjs_dom_svg_alt_glyph_element_get_glyph_ref
         (unSVGAltGlyphElement (toSVGAltGlyphElement self)))
 
foreign import javascript unsafe "$1[\"format\"] = $2;"
        ghcjs_dom_svg_alt_glyph_element_set_format ::
        JSRef SVGAltGlyphElement -> JSString -> IO ()
 
svgAltGlyphElementSetFormat ::
                            (IsSVGAltGlyphElement self, ToJSString val) => self -> val -> IO ()
svgAltGlyphElementSetFormat self val
  = ghcjs_dom_svg_alt_glyph_element_set_format
      (unSVGAltGlyphElement (toSVGAltGlyphElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"format\"]"
        ghcjs_dom_svg_alt_glyph_element_get_format ::
        JSRef SVGAltGlyphElement -> IO JSString
 
svgAltGlyphElementGetFormat ::
                            (IsSVGAltGlyphElement self, FromJSString result) =>
                              self -> IO result
svgAltGlyphElementGetFormat self
  = fromJSString <$>
      (ghcjs_dom_svg_alt_glyph_element_get_format
         (unSVGAltGlyphElement (toSVGAltGlyphElement self)))
#else
module GHCJS.DOM.SVGAltGlyphElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAltGlyphElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAltGlyphElement
#endif
