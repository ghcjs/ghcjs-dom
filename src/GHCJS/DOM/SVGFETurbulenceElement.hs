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

cSVG_TURBULENCE_TYPE_UNKNOWN = 0
cSVG_TURBULENCE_TYPE_FRACTALNOISE = 1
cSVG_TURBULENCE_TYPE_TURBULENCE = 2
cSVG_STITCHTYPE_UNKNOWN = 0
cSVG_STITCHTYPE_STITCH = 1
cSVG_STITCHTYPE_NOSTITCH = 2
 
foreign import javascript unsafe "$1[\"baseFrequencyX\"]"
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_x ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyX Mozilla SVGFETurbulenceElement.baseFrequencyX documentation> 
svgfeTurbulenceElementGetBaseFrequencyX ::
                                        (IsSVGFETurbulenceElement self) =>
                                          self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetBaseFrequencyX self
  = (ghcjs_dom_svgfe_turbulence_element_get_base_frequency_x
       (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"baseFrequencyY\"]"
        ghcjs_dom_svgfe_turbulence_element_get_base_frequency_y ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.baseFrequencyY Mozilla SVGFETurbulenceElement.baseFrequencyY documentation> 
svgfeTurbulenceElementGetBaseFrequencyY ::
                                        (IsSVGFETurbulenceElement self) =>
                                          self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetBaseFrequencyY self
  = (ghcjs_dom_svgfe_turbulence_element_get_base_frequency_y
       (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"numOctaves\"]"
        ghcjs_dom_svgfe_turbulence_element_get_num_octaves ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.numOctaves Mozilla SVGFETurbulenceElement.numOctaves documentation> 
svgfeTurbulenceElementGetNumOctaves ::
                                    (IsSVGFETurbulenceElement self) =>
                                      self -> IO (Maybe SVGAnimatedInteger)
svgfeTurbulenceElementGetNumOctaves self
  = (ghcjs_dom_svgfe_turbulence_element_get_num_octaves
       (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"seed\"]"
        ghcjs_dom_svgfe_turbulence_element_get_seed ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.seed Mozilla SVGFETurbulenceElement.seed documentation> 
svgfeTurbulenceElementGetSeed ::
                              (IsSVGFETurbulenceElement self) =>
                                self -> IO (Maybe SVGAnimatedNumber)
svgfeTurbulenceElementGetSeed self
  = (ghcjs_dom_svgfe_turbulence_element_get_seed
       (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"stitchTiles\"]"
        ghcjs_dom_svgfe_turbulence_element_get_stitch_tiles ::
        JSRef SVGFETurbulenceElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETurbulenceElement.stitchTiles Mozilla SVGFETurbulenceElement.stitchTiles documentation> 
svgfeTurbulenceElementGetStitchTiles ::
                                     (IsSVGFETurbulenceElement self) =>
                                       self -> IO (Maybe SVGAnimatedEnumeration)
svgfeTurbulenceElementGetStitchTiles self
  = (ghcjs_dom_svgfe_turbulence_element_get_stitch_tiles
       (unSVGFETurbulenceElement (toSVGFETurbulenceElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGFETurbulenceElement (
  ) where
#endif
