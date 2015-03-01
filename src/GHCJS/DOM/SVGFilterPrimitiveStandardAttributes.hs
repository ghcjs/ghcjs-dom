{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFilterPrimitiveStandardAttributes
       (js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_getResult, getResult,
        SVGFilterPrimitiveStandardAttributes,
        castToSVGFilterPrimitiveStandardAttributes,
        gTypeSVGFilterPrimitiveStandardAttributes)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.x Mozilla SVGFilterPrimitiveStandardAttributes.x documentation> 
getX ::
     (MonadIO m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO
      ((js_getX (unSVGFilterPrimitiveStandardAttributes self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.y Mozilla SVGFilterPrimitiveStandardAttributes.y documentation> 
getY ::
     (MonadIO m) =>
       SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO
      ((js_getY (unSVGFilterPrimitiveStandardAttributes self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.width Mozilla SVGFilterPrimitiveStandardAttributes.width documentation> 
getWidth ::
         (MonadIO m) =>
           SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO
      ((js_getWidth (unSVGFilterPrimitiveStandardAttributes self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.height Mozilla SVGFilterPrimitiveStandardAttributes.height documentation> 
getHeight ::
          (MonadIO m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO
      ((js_getHeight (unSVGFilterPrimitiveStandardAttributes self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"result\"]" js_getResult ::
        JSRef SVGFilterPrimitiveStandardAttributes ->
          IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterPrimitiveStandardAttributes.result Mozilla SVGFilterPrimitiveStandardAttributes.result documentation> 
getResult ::
          (MonadIO m) =>
            SVGFilterPrimitiveStandardAttributes -> m (Maybe SVGAnimatedString)
getResult self
  = liftIO
      ((js_getResult (unSVGFilterPrimitiveStandardAttributes self)) >>=
         fromJSRef)
#else
module GHCJS.DOM.SVGFilterPrimitiveStandardAttributes (
  ) where
#endif
