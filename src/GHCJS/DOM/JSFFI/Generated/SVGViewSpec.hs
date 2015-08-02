{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGViewSpec
       (js_getTransform, getTransform, js_getViewTarget, getViewTarget,
        js_getViewBoxString, getViewBoxString,
        js_getPreserveAspectRatioString, getPreserveAspectRatioString,
        js_getTransformString, getTransformString, js_getViewTargetString,
        getViewTargetString, js_setZoomAndPan, setZoomAndPan,
        js_getZoomAndPan, getZoomAndPan, SVGViewSpec, castToSVGViewSpec,
        gTypeSVGViewSpec)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform :: JSRef SVGViewSpec -> IO (JSRef SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transform Mozilla SVGViewSpec.transform documentation> 
getTransform ::
             (MonadIO m) => SVGViewSpec -> m (Maybe SVGTransformList)
getTransform self
  = liftIO ((js_getTransform (unSVGViewSpec self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        js_getViewTarget :: JSRef SVGViewSpec -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTarget Mozilla SVGViewSpec.viewTarget documentation> 
getViewTarget :: (MonadIO m) => SVGViewSpec -> m (Maybe SVGElement)
getViewTarget self
  = liftIO ((js_getViewTarget (unSVGViewSpec self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"viewBoxString\"]"
        js_getViewBoxString :: JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewBoxString Mozilla SVGViewSpec.viewBoxString documentation> 
getViewBoxString ::
                 (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getViewBoxString self
  = liftIO
      (fromJSString <$> (js_getViewBoxString (unSVGViewSpec self)))
 
foreign import javascript unsafe
        "$1[\"preserveAspectRatioString\"]" js_getPreserveAspectRatioString
        :: JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.preserveAspectRatioString Mozilla SVGViewSpec.preserveAspectRatioString documentation> 
getPreserveAspectRatioString ::
                             (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getPreserveAspectRatioString self
  = liftIO
      (fromJSString <$>
         (js_getPreserveAspectRatioString (unSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"transformString\"]"
        js_getTransformString :: JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transformString Mozilla SVGViewSpec.transformString documentation> 
getTransformString ::
                   (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getTransformString self
  = liftIO
      (fromJSString <$> (js_getTransformString (unSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"viewTargetString\"]"
        js_getViewTargetString :: JSRef SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTargetString Mozilla SVGViewSpec.viewTargetString documentation> 
getViewTargetString ::
                    (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getViewTargetString self
  = liftIO
      (fromJSString <$> (js_getViewTargetString (unSVGViewSpec self)))
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        js_setZoomAndPan :: JSRef SVGViewSpec -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
setZoomAndPan :: (MonadIO m) => SVGViewSpec -> Word -> m ()
setZoomAndPan self val
  = liftIO (js_setZoomAndPan (unSVGViewSpec self) val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        js_getZoomAndPan :: JSRef SVGViewSpec -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
getZoomAndPan :: (MonadIO m) => SVGViewSpec -> m Word
getZoomAndPan self = liftIO (js_getZoomAndPan (unSVGViewSpec self))