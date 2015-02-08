{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedRect
       (ghcjs_dom_svg_animated_rect_get_base_val,
        svgAnimatedRectGetBaseVal,
        ghcjs_dom_svg_animated_rect_get_anim_val,
        svgAnimatedRectGetAnimVal, SVGAnimatedRect, IsSVGAnimatedRect,
        castToSVGAnimatedRect, gTypeSVGAnimatedRect, toSVGAnimatedRect)
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
        ghcjs_dom_svg_animated_rect_get_base_val ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect.baseVal Mozilla SVGAnimatedRect.baseVal documentation> 
svgAnimatedRectGetBaseVal ::
                          (MonadIO m, IsSVGAnimatedRect self) => self -> m (Maybe SVGRect)
svgAnimatedRectGetBaseVal self
  = liftIO
      ((ghcjs_dom_svg_animated_rect_get_base_val
          (unSVGAnimatedRect (toSVGAnimatedRect self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_rect_get_anim_val ::
        JSRef SVGAnimatedRect -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedRect.animVal Mozilla SVGAnimatedRect.animVal documentation> 
svgAnimatedRectGetAnimVal ::
                          (MonadIO m, IsSVGAnimatedRect self) => self -> m (Maybe SVGRect)
svgAnimatedRectGetAnimVal self
  = liftIO
      ((ghcjs_dom_svg_animated_rect_get_anim_val
          (unSVGAnimatedRect (toSVGAnimatedRect self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGAnimatedRect (
  ) where
#endif
