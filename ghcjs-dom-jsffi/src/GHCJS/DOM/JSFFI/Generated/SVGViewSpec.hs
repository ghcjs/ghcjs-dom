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
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform :: SVGViewSpec -> IO (Nullable SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transform Mozilla SVGViewSpec.transform documentation> 
getTransform ::
             (MonadIO m) => SVGViewSpec -> m (Maybe SVGTransformList)
getTransform self
  = liftIO (nullableToMaybe <$> (js_getTransform (self)))
 
foreign import javascript unsafe "$1[\"viewTarget\"]"
        js_getViewTarget :: SVGViewSpec -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTarget Mozilla SVGViewSpec.viewTarget documentation> 
getViewTarget :: (MonadIO m) => SVGViewSpec -> m (Maybe SVGElement)
getViewTarget self
  = liftIO (nullableToMaybe <$> (js_getViewTarget (self)))
 
foreign import javascript unsafe "$1[\"viewBoxString\"]"
        js_getViewBoxString :: SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewBoxString Mozilla SVGViewSpec.viewBoxString documentation> 
getViewBoxString ::
                 (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getViewBoxString self
  = liftIO (fromJSString <$> (js_getViewBoxString (self)))
 
foreign import javascript unsafe
        "$1[\"preserveAspectRatioString\"]" js_getPreserveAspectRatioString
        :: SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.preserveAspectRatioString Mozilla SVGViewSpec.preserveAspectRatioString documentation> 
getPreserveAspectRatioString ::
                             (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getPreserveAspectRatioString self
  = liftIO
      (fromJSString <$> (js_getPreserveAspectRatioString (self)))
 
foreign import javascript unsafe "$1[\"transformString\"]"
        js_getTransformString :: SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.transformString Mozilla SVGViewSpec.transformString documentation> 
getTransformString ::
                   (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getTransformString self
  = liftIO (fromJSString <$> (js_getTransformString (self)))
 
foreign import javascript unsafe "$1[\"viewTargetString\"]"
        js_getViewTargetString :: SVGViewSpec -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.viewTargetString Mozilla SVGViewSpec.viewTargetString documentation> 
getViewTargetString ::
                    (MonadIO m, FromJSString result) => SVGViewSpec -> m result
getViewTargetString self
  = liftIO (fromJSString <$> (js_getViewTargetString (self)))
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        js_setZoomAndPan :: SVGViewSpec -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
setZoomAndPan :: (MonadIO m) => SVGViewSpec -> Word -> m ()
setZoomAndPan self val = liftIO (js_setZoomAndPan (self) val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        js_getZoomAndPan :: SVGViewSpec -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGViewSpec.zoomAndPan Mozilla SVGViewSpec.zoomAndPan documentation> 
getZoomAndPan :: (MonadIO m) => SVGViewSpec -> m Word
getZoomAndPan self = liftIO (js_getZoomAndPan (self))