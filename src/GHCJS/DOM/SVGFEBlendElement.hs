{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEBlendElement
       (cSVG_FEBLEND_MODE_UNKNOWN, cSVG_FEBLEND_MODE_NORMAL,
        cSVG_FEBLEND_MODE_MULTIPLY, cSVG_FEBLEND_MODE_SCREEN,
        cSVG_FEBLEND_MODE_DARKEN, cSVG_FEBLEND_MODE_LIGHTEN,
        ghcjs_dom_svgfe_blend_element_get_in1, svgfeBlendElementGetIn1,
        ghcjs_dom_svgfe_blend_element_get_in2, svgfeBlendElementGetIn2,
        ghcjs_dom_svgfe_blend_element_get_mode, svgfeBlendElementGetMode,
        SVGFEBlendElement, IsSVGFEBlendElement, castToSVGFEBlendElement,
        gTypeSVGFEBlendElement, toSVGFEBlendElement)
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

cSVG_FEBLEND_MODE_UNKNOWN = 0
cSVG_FEBLEND_MODE_NORMAL = 1
cSVG_FEBLEND_MODE_MULTIPLY = 2
cSVG_FEBLEND_MODE_SCREEN = 3
cSVG_FEBLEND_MODE_DARKEN = 4
cSVG_FEBLEND_MODE_LIGHTEN = 5
 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_blend_element_get_in1 ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in1 Mozilla SVGFEBlendElement.in1 documentation> 
svgfeBlendElementGetIn1 ::
                        (MonadIO m, IsSVGFEBlendElement self) =>
                          self -> m (Maybe SVGAnimatedString)
svgfeBlendElementGetIn1 self
  = liftIO
      ((ghcjs_dom_svgfe_blend_element_get_in1
          (unSVGFEBlendElement (toSVGFEBlendElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"in2\"]"
        ghcjs_dom_svgfe_blend_element_get_in2 ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.in2 Mozilla SVGFEBlendElement.in2 documentation> 
svgfeBlendElementGetIn2 ::
                        (MonadIO m, IsSVGFEBlendElement self) =>
                          self -> m (Maybe SVGAnimatedString)
svgfeBlendElementGetIn2 self
  = liftIO
      ((ghcjs_dom_svgfe_blend_element_get_in2
          (unSVGFEBlendElement (toSVGFEBlendElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"mode\"]"
        ghcjs_dom_svgfe_blend_element_get_mode ::
        JSRef SVGFEBlendElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEBlendElement.mode Mozilla SVGFEBlendElement.mode documentation> 
svgfeBlendElementGetMode ::
                         (MonadIO m, IsSVGFEBlendElement self) =>
                           self -> m (Maybe SVGAnimatedEnumeration)
svgfeBlendElementGetMode self
  = liftIO
      ((ghcjs_dom_svgfe_blend_element_get_mode
          (unSVGFEBlendElement (toSVGFEBlendElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEBlendElement (
  ) where
#endif
