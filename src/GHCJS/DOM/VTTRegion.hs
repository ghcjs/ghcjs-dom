{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VTTRegion
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

 
foreign import javascript unsafe "new window[\"VTTRegion\"]()"
        js_newVTTRegion :: IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation> 
newVTTRegion :: (MonadIO m) => m VTTRegion
newVTTRegion = liftIO (js_newVTTRegion >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"track\"]" js_getTrack ::
        JSRef VTTRegion -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.track Mozilla VTTRegion.track documentation> 
getTrack :: (MonadIO m) => VTTRegion -> m (Maybe TextTrack)
getTrack self
  = liftIO ((js_getTrack (unVTTRegion self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"] = $2;" js_setId ::
        JSRef VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
setId :: (MonadIO m, ToJSString val) => VTTRegion -> val -> m ()
setId self val
  = liftIO (js_setId (unVTTRegion self) (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]" js_getId ::
        JSRef VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
getId :: (MonadIO m, FromJSString result) => VTTRegion -> m result
getId self
  = liftIO (fromJSString <$> (js_getId (unVTTRegion self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
setWidth :: (MonadIO m) => VTTRegion -> Double -> m ()
setWidth self val = liftIO (js_setWidth (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
getWidth :: (MonadIO m) => VTTRegion -> m Double
getWidth self = liftIO (js_getWidth (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef VTTRegion -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
setHeight :: (MonadIO m) => VTTRegion -> Int -> m ()
setHeight self val = liftIO (js_setHeight (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef VTTRegion -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
getHeight :: (MonadIO m) => VTTRegion -> m Int
getHeight self = liftIO (js_getHeight (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"regionAnchorX\"] = $2;"
        js_setRegionAnchorX :: JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
setRegionAnchorX :: (MonadIO m) => VTTRegion -> Double -> m ()
setRegionAnchorX self val
  = liftIO (js_setRegionAnchorX (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"regionAnchorX\"]"
        js_getRegionAnchorX :: JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
getRegionAnchorX :: (MonadIO m) => VTTRegion -> m Double
getRegionAnchorX self
  = liftIO (js_getRegionAnchorX (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"regionAnchorY\"] = $2;"
        js_setRegionAnchorY :: JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
setRegionAnchorY :: (MonadIO m) => VTTRegion -> Double -> m ()
setRegionAnchorY self val
  = liftIO (js_setRegionAnchorY (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"regionAnchorY\"]"
        js_getRegionAnchorY :: JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
getRegionAnchorY :: (MonadIO m) => VTTRegion -> m Double
getRegionAnchorY self
  = liftIO (js_getRegionAnchorY (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"] = $2;"
        js_setViewportAnchorX :: JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
setViewportAnchorX :: (MonadIO m) => VTTRegion -> Double -> m ()
setViewportAnchorX self val
  = liftIO (js_setViewportAnchorX (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"]"
        js_getViewportAnchorX :: JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
getViewportAnchorX :: (MonadIO m) => VTTRegion -> m Double
getViewportAnchorX self
  = liftIO (js_getViewportAnchorX (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"] = $2;"
        js_setViewportAnchorY :: JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
setViewportAnchorY :: (MonadIO m) => VTTRegion -> Double -> m ()
setViewportAnchorY self val
  = liftIO (js_setViewportAnchorY (unVTTRegion self) val)
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"]"
        js_getViewportAnchorY :: JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
getViewportAnchorY :: (MonadIO m) => VTTRegion -> m Double
getViewportAnchorY self
  = liftIO (js_getViewportAnchorY (unVTTRegion self))
 
foreign import javascript unsafe "$1[\"scroll\"] = $2;"
        js_setScroll :: JSRef VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
setScroll ::
          (MonadIO m, ToJSString val) => VTTRegion -> val -> m ()
setScroll self val
  = liftIO (js_setScroll (unVTTRegion self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scroll\"]" js_getScroll ::
        JSRef VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
getScroll ::
          (MonadIO m, FromJSString result) => VTTRegion -> m result
getScroll self
  = liftIO (fromJSString <$> (js_getScroll (unVTTRegion self)))
#else
module GHCJS.DOM.VTTRegion (
  ) where
#endif
