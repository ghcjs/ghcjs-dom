{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedBoolean
       (ghcjs_dom_svg_animated_boolean_set_base_val,
        svgAnimatedBooleanSetBaseVal,
        ghcjs_dom_svg_animated_boolean_get_base_val,
        svgAnimatedBooleanGetBaseVal,
        ghcjs_dom_svg_animated_boolean_get_anim_val,
        svgAnimatedBooleanGetAnimVal, SVGAnimatedBoolean,
        IsSVGAnimatedBoolean, castToSVGAnimatedBoolean,
        gTypeSVGAnimatedBoolean, toSVGAnimatedBoolean)
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

 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        ghcjs_dom_svg_animated_boolean_set_base_val ::
        JSRef SVGAnimatedBoolean -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
svgAnimatedBooleanSetBaseVal ::
                             (MonadIO m, IsSVGAnimatedBoolean self) => self -> Bool -> m ()
svgAnimatedBooleanSetBaseVal self val
  = liftIO
      (ghcjs_dom_svg_animated_boolean_set_base_val
         (unSVGAnimatedBoolean (toSVGAnimatedBoolean self))
         val)
 
foreign import javascript unsafe "($1[\"baseVal\"] ? 1 : 0)"
        ghcjs_dom_svg_animated_boolean_get_base_val ::
        JSRef SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.baseVal Mozilla SVGAnimatedBoolean.baseVal documentation> 
svgAnimatedBooleanGetBaseVal ::
                             (MonadIO m, IsSVGAnimatedBoolean self) => self -> m Bool
svgAnimatedBooleanGetBaseVal self
  = liftIO
      (ghcjs_dom_svg_animated_boolean_get_base_val
         (unSVGAnimatedBoolean (toSVGAnimatedBoolean self)))
 
foreign import javascript unsafe "($1[\"animVal\"] ? 1 : 0)"
        ghcjs_dom_svg_animated_boolean_get_anim_val ::
        JSRef SVGAnimatedBoolean -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedBoolean.animVal Mozilla SVGAnimatedBoolean.animVal documentation> 
svgAnimatedBooleanGetAnimVal ::
                             (MonadIO m, IsSVGAnimatedBoolean self) => self -> m Bool
svgAnimatedBooleanGetAnimVal self
  = liftIO
      (ghcjs_dom_svg_animated_boolean_get_anim_val
         (unSVGAnimatedBoolean (toSVGAnimatedBoolean self)))
#else
module GHCJS.DOM.SVGAnimatedBoolean (
  ) where
#endif
