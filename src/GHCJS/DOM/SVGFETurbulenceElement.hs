{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFETurbulenceElement
       (cSVG_TURBULENCE_TYPE_UNKNOWN, cSVG_TURBULENCE_TYPE_FRACTALNOISE,
        cSVG_TURBULENCE_TYPE_TURBULENCE, cSVG_STITCHTYPE_UNKNOWN,
        cSVG_STITCHTYPE_STITCH, cSVG_STITCHTYPE_NOSTITCH,
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_x,
        svgfeTurbulenceElementGetBaseFrequencyX,
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_y,
        svgfeTurbulenceElementGetBaseFrequencyY,
        ghcjs_dom_svgfe_turbulence_element_get_num_octaves,
        svgfeTurbulenceElementGetNumOctaves,
        ghcjs_dom_svgfe_turbulence_element_get_seed,
        svgfeTurbulenceElementGetSeed,
        ghcjs_dom_svgfe_turbulence_element_get_stitch_tiles,
        svgfeTurbulenceElementGetStitchTiles, SVGFETurbulenceElement,
        IsSVGFETurbulenceElement, castToSVGFETurbulenceElement,
        gTypeSVGFETurbulenceElement, toSVGFETurbulenceElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_TURBULENCE_TYPE_UNKNOWN = 0
cSVG_TURBULENCE_TYPE_FRACTALNOISE = 1
cSVG_TURBULENCE_TYPE_TURBULENCE = 2
cSVG_STITCHTYPE_UNKNOWN = 0
cSVG_STITCHTYPE_STITCH = 1
cSVG_STITCHTYPE_NOSTITCH = 2
 
foreign import javascript unsafe "$1[\"baseFrequencyX\"]"
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_x ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeTurbulenceElementGetBaseFrequencyX ::
                                        (IsSVGFETurbulenceElement self) =>
                                          self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetBaseFrequencyX self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_turbulence_element_get_base_frequency_x
         (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_y ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeTurbulenceElementGetBaseFrequencyY ::
                                        (IsSVGFETurbulenceElement self) =>
                                          self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetBaseFrequencyY self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_turbulence_element_get_base_frequency_y
         (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        ghcjs_dom_svgfe_turbulence_element_get_num_octaves ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedInteger)
 
svgfeTurbulenceElementGetNumOctaves ::
                                    (IsSVGFETurbulenceElement self) =>
                                      self -> IO (Maybe SVGAnimatedInteger)
svgfeTurbulenceElementGetNumOctaves self
  = fmap SVGAnimatedInteger . maybeJSNull <$>
      (ghcjs_dom_svgfe_turbulence_element_get_num_octaves
         (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
 
foreign import javascript unsafe "$1[\"seed\"]"
        ghcjs_dom_svgfe_turbulence_element_get_seed ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeTurbulenceElementGetSeed ::
                              (IsSVGFETurbulenceElement self) =>
                                self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetSeed self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_turbulence_element_get_seed
         (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        ghcjs_dom_svgfe_turbulence_element_get_stitch_tiles ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgfeTurbulenceElementGetStitchTiles ::
                                     (IsSVGFETurbulenceElement self) =>
                                       self -> IO (Maybe SVGAnimatedEnumeration)
svgfeTurbulenceElementGetStitchTiles self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svgfe_turbulence_element_get_stitch_tiles
         (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
#else
module GHCJS.DOM.SVGFETurbulenceElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFETurbulenceElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFETurbulenceElement
#endif
