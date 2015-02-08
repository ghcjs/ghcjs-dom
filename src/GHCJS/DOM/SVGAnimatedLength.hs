{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedLength
       (ghcjs_dom_svg_animated_length_get_base_val,
        svgAnimatedLengthGetBaseVal,
        ghcjs_dom_svg_animated_length_get_anim_val,
        svgAnimatedLengthGetAnimVal, SVGAnimatedLength,
        IsSVGAnimatedLength, castToSVGAnimatedLength,
        gTypeSVGAnimatedLength, toSVGAnimatedLength)
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

 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_length_get_base_val ::
        JSRef SVGAnimatedLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.baseVal Mozilla SVGAnimatedLength.baseVal documentation> 
svgAnimatedLengthGetBaseVal ::
                            (MonadIO m, IsSVGAnimatedLength self) =>
                              self -> m (Maybe SVGLength)
svgAnimatedLengthGetBaseVal self
  = liftIO
      ((ghcjs_dom_svg_animated_length_get_base_val
          (unSVGAnimatedLength (toSVGAnimatedLength self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_length_get_anim_val ::
        JSRef SVGAnimatedLength -> IO (JSRef SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.animVal Mozilla SVGAnimatedLength.animVal documentation> 
svgAnimatedLengthGetAnimVal ::
                            (MonadIO m, IsSVGAnimatedLength self) =>
                              self -> m (Maybe SVGLength)
svgAnimatedLengthGetAnimVal self
  = liftIO
      ((ghcjs_dom_svg_animated_length_get_anim_val
          (unSVGAnimatedLength (toSVGAnimatedLength self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGAnimatedLength (
  ) where
#endif
