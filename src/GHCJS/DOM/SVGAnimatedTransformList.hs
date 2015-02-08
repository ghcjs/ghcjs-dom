{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedTransformList
       (ghcjs_dom_svg_animated_transform_list_get_base_val,
        svgAnimatedTransformListGetBaseVal,
        ghcjs_dom_svg_animated_transform_list_get_anim_val,
        svgAnimatedTransformListGetAnimVal, SVGAnimatedTransformList,
        IsSVGAnimatedTransformList, castToSVGAnimatedTransformList,
        gTypeSVGAnimatedTransformList, toSVGAnimatedTransformList)
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
        ghcjs_dom_svg_animated_transform_list_get_base_val ::
        JSRef SVGAnimatedTransformList -> IO (JSRef SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.baseVal Mozilla SVGAnimatedTransformList.baseVal documentation> 
svgAnimatedTransformListGetBaseVal ::
                                   (MonadIO m, IsSVGAnimatedTransformList self) =>
                                     self -> m (Maybe SVGTransformList)
svgAnimatedTransformListGetBaseVal self
  = liftIO
      ((ghcjs_dom_svg_animated_transform_list_get_base_val
          (unSVGAnimatedTransformList (toSVGAnimatedTransformList self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_transform_list_get_anim_val ::
        JSRef SVGAnimatedTransformList -> IO (JSRef SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.animVal Mozilla SVGAnimatedTransformList.animVal documentation> 
svgAnimatedTransformListGetAnimVal ::
                                   (MonadIO m, IsSVGAnimatedTransformList self) =>
                                     self -> m (Maybe SVGTransformList)
svgAnimatedTransformListGetAnimVal self
  = liftIO
      ((ghcjs_dom_svg_animated_transform_list_get_anim_val
          (unSVGAnimatedTransformList (toSVGAnimatedTransformList self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGAnimatedTransformList (
  ) where
#endif
