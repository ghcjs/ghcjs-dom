{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGMarkerElement
       (js_setOrientToAuto, setOrientToAuto, js_setOrientToAngle,
        setOrientToAngle, pattern SVG_MARKERUNITS_UNKNOWN,
        pattern SVG_MARKERUNITS_USERSPACEONUSE,
        pattern SVG_MARKERUNITS_STROKEWIDTH,
        pattern SVG_MARKER_ORIENT_UNKNOWN, pattern SVG_MARKER_ORIENT_AUTO,
        pattern SVG_MARKER_ORIENT_ANGLE, js_getRefX, getRefX, js_getRefY,
        getRefY, js_getMarkerUnits, getMarkerUnits, js_getMarkerWidth,
        getMarkerWidth, js_getMarkerHeight, getMarkerHeight,
        js_getOrientType, getOrientType, js_getOrientAngle, getOrientAngle,
        SVGMarkerElement(..), gTypeSVGMarkerElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"setOrientToAuto\"]()"
        js_setOrientToAuto :: SVGMarkerElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.setOrientToAuto Mozilla SVGMarkerElement.setOrientToAuto documentation> 
setOrientToAuto :: (MonadIO m) => SVGMarkerElement -> m ()
setOrientToAuto self = liftIO (js_setOrientToAuto self)
 
foreign import javascript unsafe "$1[\"setOrientToAngle\"]($2)"
        js_setOrientToAngle :: SVGMarkerElement -> SVGAngle -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.setOrientToAngle Mozilla SVGMarkerElement.setOrientToAngle documentation> 
setOrientToAngle ::
                 (MonadIO m) => SVGMarkerElement -> SVGAngle -> m ()
setOrientToAngle self angle
  = liftIO (js_setOrientToAngle self angle)
pattern SVG_MARKERUNITS_UNKNOWN = 0
pattern SVG_MARKERUNITS_USERSPACEONUSE = 1
pattern SVG_MARKERUNITS_STROKEWIDTH = 2
pattern SVG_MARKER_ORIENT_UNKNOWN = 0
pattern SVG_MARKER_ORIENT_AUTO = 1
pattern SVG_MARKER_ORIENT_ANGLE = 2
 
foreign import javascript unsafe "$1[\"refX\"]" js_getRefX ::
        SVGMarkerElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refX Mozilla SVGMarkerElement.refX documentation> 
getRefX :: (MonadIO m) => SVGMarkerElement -> m SVGAnimatedLength
getRefX self = liftIO (js_getRefX self)
 
foreign import javascript unsafe "$1[\"refY\"]" js_getRefY ::
        SVGMarkerElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.refY Mozilla SVGMarkerElement.refY documentation> 
getRefY :: (MonadIO m) => SVGMarkerElement -> m SVGAnimatedLength
getRefY self = liftIO (js_getRefY self)
 
foreign import javascript unsafe "$1[\"markerUnits\"]"
        js_getMarkerUnits :: SVGMarkerElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerUnits Mozilla SVGMarkerElement.markerUnits documentation> 
getMarkerUnits ::
               (MonadIO m) => SVGMarkerElement -> m SVGAnimatedEnumeration
getMarkerUnits self = liftIO (js_getMarkerUnits self)
 
foreign import javascript unsafe "$1[\"markerWidth\"]"
        js_getMarkerWidth :: SVGMarkerElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerWidth Mozilla SVGMarkerElement.markerWidth documentation> 
getMarkerWidth ::
               (MonadIO m) => SVGMarkerElement -> m SVGAnimatedLength
getMarkerWidth self = liftIO (js_getMarkerWidth self)
 
foreign import javascript unsafe "$1[\"markerHeight\"]"
        js_getMarkerHeight :: SVGMarkerElement -> IO SVGAnimatedLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.markerHeight Mozilla SVGMarkerElement.markerHeight documentation> 
getMarkerHeight ::
                (MonadIO m) => SVGMarkerElement -> m SVGAnimatedLength
getMarkerHeight self = liftIO (js_getMarkerHeight self)
 
foreign import javascript unsafe "$1[\"orientType\"]"
        js_getOrientType :: SVGMarkerElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientType Mozilla SVGMarkerElement.orientType documentation> 
getOrientType ::
              (MonadIO m) => SVGMarkerElement -> m SVGAnimatedEnumeration
getOrientType self = liftIO (js_getOrientType self)
 
foreign import javascript unsafe "$1[\"orientAngle\"]"
        js_getOrientAngle :: SVGMarkerElement -> IO SVGAnimatedAngle

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMarkerElement.orientAngle Mozilla SVGMarkerElement.orientAngle documentation> 
getOrientAngle ::
               (MonadIO m) => SVGMarkerElement -> m SVGAnimatedAngle
getOrientAngle self = liftIO (js_getOrientAngle self)