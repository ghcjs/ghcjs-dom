{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VTTRegion
       (js_newVTTRegion, newVTTRegion, js_getTrack, getTrack, js_setId,
        setId, js_getId, getId, js_setWidth, setWidth, js_getWidth,
        getWidth, js_setHeight, setHeight, js_getHeight, getHeight,
        js_setRegionAnchorX, setRegionAnchorX, js_getRegionAnchorX,
        getRegionAnchorX, js_setRegionAnchorY, setRegionAnchorY,
        js_getRegionAnchorY, getRegionAnchorY, js_setViewportAnchorX,
        setViewportAnchorX, js_getViewportAnchorX, getViewportAnchorX,
        js_setViewportAnchorY, setViewportAnchorY, js_getViewportAnchorY,
        getViewportAnchorY, js_setScroll, setScroll, js_getScroll,
        getScroll, VTTRegion, castToVTTRegion, gTypeVTTRegion)
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
 
foreign import javascript unsafe "new window[\"VTTRegion\"]()"
        js_newVTTRegion :: IO VTTRegion

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation> 
newVTTRegion :: (MonadIO m) => m VTTRegion
newVTTRegion = liftIO (js_newVTTRegion)
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        VTTRegion -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.track Mozilla VTTRegion.track documentation> 
getTrack :: (MonadIO m) => VTTRegion -> m (Maybe TextTrack)
getTrack self = liftIO (nullableToMaybe <$> (js_getTrack (self)))
 
foreign import javascript unsafe "$1[\"id\"] = $2;" js_setId ::
        VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
setId :: (MonadIO m, ToJSString val) => VTTRegion -> val -> m ()
setId self val = liftIO (js_setId (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
getId :: (MonadIO m, FromJSString result) => VTTRegion -> m result
getId self = liftIO (fromJSString <$> (js_getId (self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
setWidth :: (MonadIO m) => VTTRegion -> Double -> m ()
setWidth self val = liftIO (js_setWidth (self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
getWidth :: (MonadIO m) => VTTRegion -> m Double
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: VTTRegion -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
setHeight :: (MonadIO m) => VTTRegion -> Int -> m ()
setHeight self val = liftIO (js_setHeight (self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        VTTRegion -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
getHeight :: (MonadIO m) => VTTRegion -> m Int
getHeight self = liftIO (js_getHeight (self))
 
foreign import javascript unsafe "$1[\"regionAnchorX\"] = $2;"
        js_setRegionAnchorX :: VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
setRegionAnchorX :: (MonadIO m) => VTTRegion -> Double -> m ()
setRegionAnchorX self val = liftIO (js_setRegionAnchorX (self) val)
 
foreign import javascript unsafe "$1[\"regionAnchorX\"]"
        js_getRegionAnchorX :: VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
getRegionAnchorX :: (MonadIO m) => VTTRegion -> m Double
getRegionAnchorX self = liftIO (js_getRegionAnchorX (self))
 
foreign import javascript unsafe "$1[\"regionAnchorY\"] = $2;"
        js_setRegionAnchorY :: VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
setRegionAnchorY :: (MonadIO m) => VTTRegion -> Double -> m ()
setRegionAnchorY self val = liftIO (js_setRegionAnchorY (self) val)
 
foreign import javascript unsafe "$1[\"regionAnchorY\"]"
        js_getRegionAnchorY :: VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
getRegionAnchorY :: (MonadIO m) => VTTRegion -> m Double
getRegionAnchorY self = liftIO (js_getRegionAnchorY (self))
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"] = $2;"
        js_setViewportAnchorX :: VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
setViewportAnchorX :: (MonadIO m) => VTTRegion -> Double -> m ()
setViewportAnchorX self val
  = liftIO (js_setViewportAnchorX (self) val)
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"]"
        js_getViewportAnchorX :: VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
getViewportAnchorX :: (MonadIO m) => VTTRegion -> m Double
getViewportAnchorX self = liftIO (js_getViewportAnchorX (self))
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"] = $2;"
        js_setViewportAnchorY :: VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
setViewportAnchorY :: (MonadIO m) => VTTRegion -> Double -> m ()
setViewportAnchorY self val
  = liftIO (js_setViewportAnchorY (self) val)
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"]"
        js_getViewportAnchorY :: VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
getViewportAnchorY :: (MonadIO m) => VTTRegion -> m Double
getViewportAnchorY self = liftIO (js_getViewportAnchorY (self))
 
foreign import javascript unsafe "$1[\"scroll\"] = $2;"
        js_setScroll :: VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
setScroll ::
          (MonadIO m, ToJSString val) => VTTRegion -> val -> m ()
setScroll self val = liftIO (js_setScroll (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scroll\"]" js_getScroll ::
        VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
getScroll ::
          (MonadIO m, FromJSString result) => VTTRegion -> m result
getScroll self = liftIO (fromJSString <$> (js_getScroll (self)))