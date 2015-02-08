{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedString
       (ghcjs_dom_svg_animated_string_set_base_val,
        svgAnimatedStringSetBaseVal,
        ghcjs_dom_svg_animated_string_get_base_val,
        svgAnimatedStringGetBaseVal,
        ghcjs_dom_svg_animated_string_get_anim_val,
        svgAnimatedStringGetAnimVal, SVGAnimatedString,
        IsSVGAnimatedString, castToSVGAnimatedString,
        gTypeSVGAnimatedString, toSVGAnimatedString)
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
        ghcjs_dom_svg_animated_string_set_base_val ::
        JSRef SVGAnimatedString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
svgAnimatedStringSetBaseVal ::
                            (MonadIO m, IsSVGAnimatedString self, ToJSString val) =>
                              self -> val -> m ()
svgAnimatedStringSetBaseVal self val
  = liftIO
      (ghcjs_dom_svg_animated_string_set_base_val
         (unSVGAnimatedString (toSVGAnimatedString self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"baseVal\"]"
        ghcjs_dom_svg_animated_string_get_base_val ::
        JSRef SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.baseVal Mozilla SVGAnimatedString.baseVal documentation> 
svgAnimatedStringGetBaseVal ::
                            (MonadIO m, IsSVGAnimatedString self, FromJSString result) =>
                              self -> m result
svgAnimatedStringGetBaseVal self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_animated_string_get_base_val
            (unSVGAnimatedString (toSVGAnimatedString self))))
 
foreign import javascript unsafe "$1[\"animVal\"]"
        ghcjs_dom_svg_animated_string_get_anim_val ::
        JSRef SVGAnimatedString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedString.animVal Mozilla SVGAnimatedString.animVal documentation> 
svgAnimatedStringGetAnimVal ::
                            (MonadIO m, IsSVGAnimatedString self, FromJSString result) =>
                              self -> m result
svgAnimatedStringGetAnimVal self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_animated_string_get_anim_val
            (unSVGAnimatedString (toSVGAnimatedString self))))
#else
module GHCJS.DOM.SVGAnimatedString (
  ) where
#endif
