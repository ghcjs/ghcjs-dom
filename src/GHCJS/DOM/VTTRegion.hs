{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VTTRegion
       (ghcjs_dom_vtt_region_new, vttRegionNew,
        ghcjs_dom_vtt_region_get_track, vttRegionGetTrack,
        ghcjs_dom_vtt_region_set_id, vttRegionSetId,
        ghcjs_dom_vtt_region_get_id, vttRegionGetId,
        ghcjs_dom_vtt_region_set_width, vttRegionSetWidth,
        ghcjs_dom_vtt_region_get_width, vttRegionGetWidth,
        ghcjs_dom_vtt_region_set_height, vttRegionSetHeight,
        ghcjs_dom_vtt_region_get_height, vttRegionGetHeight,
        ghcjs_dom_vtt_region_set_region_anchor_x,
        vttRegionSetRegionAnchorX,
        ghcjs_dom_vtt_region_get_region_anchor_x,
        vttRegionGetRegionAnchorX,
        ghcjs_dom_vtt_region_set_region_anchor_y,
        vttRegionSetRegionAnchorY,
        ghcjs_dom_vtt_region_get_region_anchor_y,
        vttRegionGetRegionAnchorY,
        ghcjs_dom_vtt_region_set_viewport_anchor_x,
        vttRegionSetViewportAnchorX,
        ghcjs_dom_vtt_region_get_viewport_anchor_x,
        vttRegionGetViewportAnchorX,
        ghcjs_dom_vtt_region_set_viewport_anchor_y,
        vttRegionSetViewportAnchorY,
        ghcjs_dom_vtt_region_get_viewport_anchor_y,
        vttRegionGetViewportAnchorY, ghcjs_dom_vtt_region_set_scroll,
        vttRegionSetScroll, ghcjs_dom_vtt_region_get_scroll,
        vttRegionGetScroll, VTTRegion, IsVTTRegion, castToVTTRegion,
        gTypeVTTRegion, toVTTRegion)
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

 
foreign import javascript unsafe "new window[\"VTTRegion\"]()"
        ghcjs_dom_vtt_region_new :: IO (JSRef VTTRegion)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion Mozilla VTTRegion documentation> 
vttRegionNew :: (MonadIO m) => m VTTRegion
vttRegionNew
  = liftIO (ghcjs_dom_vtt_region_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"track\"]"
        ghcjs_dom_vtt_region_get_track ::
        JSRef VTTRegion -> IO (JSRef TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.track Mozilla VTTRegion.track documentation> 
vttRegionGetTrack ::
                  (MonadIO m, IsVTTRegion self) => self -> m (Maybe TextTrack)
vttRegionGetTrack self
  = liftIO
      ((ghcjs_dom_vtt_region_get_track (unVTTRegion (toVTTRegion self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        ghcjs_dom_vtt_region_set_id :: JSRef VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
vttRegionSetId ::
               (MonadIO m, IsVTTRegion self, ToJSString val) =>
                 self -> val -> m ()
vttRegionSetId self val
  = liftIO
      (ghcjs_dom_vtt_region_set_id (unVTTRegion (toVTTRegion self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"id\"]"
        ghcjs_dom_vtt_region_get_id :: JSRef VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.id Mozilla VTTRegion.id documentation> 
vttRegionGetId ::
               (MonadIO m, IsVTTRegion self, FromJSString result) =>
                 self -> m result
vttRegionGetId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_vtt_region_get_id (unVTTRegion (toVTTRegion self))))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_vtt_region_set_width ::
        JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
vttRegionSetWidth ::
                  (MonadIO m, IsVTTRegion self) => self -> Double -> m ()
vttRegionSetWidth self val
  = liftIO
      (ghcjs_dom_vtt_region_set_width (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_vtt_region_get_width :: JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.width Mozilla VTTRegion.width documentation> 
vttRegionGetWidth ::
                  (MonadIO m, IsVTTRegion self) => self -> m Double
vttRegionGetWidth self
  = liftIO
      (ghcjs_dom_vtt_region_get_width (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_vtt_region_set_height :: JSRef VTTRegion -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
vttRegionSetHeight ::
                   (MonadIO m, IsVTTRegion self) => self -> Int -> m ()
vttRegionSetHeight self val
  = liftIO
      (ghcjs_dom_vtt_region_set_height (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_vtt_region_get_height :: JSRef VTTRegion -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.height Mozilla VTTRegion.height documentation> 
vttRegionGetHeight ::
                   (MonadIO m, IsVTTRegion self) => self -> m Int
vttRegionGetHeight self
  = liftIO
      (ghcjs_dom_vtt_region_get_height (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"regionAnchorX\"] = $2;"
        ghcjs_dom_vtt_region_set_region_anchor_x ::
        JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
vttRegionSetRegionAnchorX ::
                          (MonadIO m, IsVTTRegion self) => self -> Double -> m ()
vttRegionSetRegionAnchorX self val
  = liftIO
      (ghcjs_dom_vtt_region_set_region_anchor_x
         (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"regionAnchorX\"]"
        ghcjs_dom_vtt_region_get_region_anchor_x ::
        JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorX Mozilla VTTRegion.regionAnchorX documentation> 
vttRegionGetRegionAnchorX ::
                          (MonadIO m, IsVTTRegion self) => self -> m Double
vttRegionGetRegionAnchorX self
  = liftIO
      (ghcjs_dom_vtt_region_get_region_anchor_x
         (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"regionAnchorY\"] = $2;"
        ghcjs_dom_vtt_region_set_region_anchor_y ::
        JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
vttRegionSetRegionAnchorY ::
                          (MonadIO m, IsVTTRegion self) => self -> Double -> m ()
vttRegionSetRegionAnchorY self val
  = liftIO
      (ghcjs_dom_vtt_region_set_region_anchor_y
         (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"regionAnchorY\"]"
        ghcjs_dom_vtt_region_get_region_anchor_y ::
        JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.regionAnchorY Mozilla VTTRegion.regionAnchorY documentation> 
vttRegionGetRegionAnchorY ::
                          (MonadIO m, IsVTTRegion self) => self -> m Double
vttRegionGetRegionAnchorY self
  = liftIO
      (ghcjs_dom_vtt_region_get_region_anchor_y
         (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"] = $2;"
        ghcjs_dom_vtt_region_set_viewport_anchor_x ::
        JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
vttRegionSetViewportAnchorX ::
                            (MonadIO m, IsVTTRegion self) => self -> Double -> m ()
vttRegionSetViewportAnchorX self val
  = liftIO
      (ghcjs_dom_vtt_region_set_viewport_anchor_x
         (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"viewportAnchorX\"]"
        ghcjs_dom_vtt_region_get_viewport_anchor_x ::
        JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorX Mozilla VTTRegion.viewportAnchorX documentation> 
vttRegionGetViewportAnchorX ::
                            (MonadIO m, IsVTTRegion self) => self -> m Double
vttRegionGetViewportAnchorX self
  = liftIO
      (ghcjs_dom_vtt_region_get_viewport_anchor_x
         (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"] = $2;"
        ghcjs_dom_vtt_region_set_viewport_anchor_y ::
        JSRef VTTRegion -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
vttRegionSetViewportAnchorY ::
                            (MonadIO m, IsVTTRegion self) => self -> Double -> m ()
vttRegionSetViewportAnchorY self val
  = liftIO
      (ghcjs_dom_vtt_region_set_viewport_anchor_y
         (unVTTRegion (toVTTRegion self))
         val)
 
foreign import javascript unsafe "$1[\"viewportAnchorY\"]"
        ghcjs_dom_vtt_region_get_viewport_anchor_y ::
        JSRef VTTRegion -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.viewportAnchorY Mozilla VTTRegion.viewportAnchorY documentation> 
vttRegionGetViewportAnchorY ::
                            (MonadIO m, IsVTTRegion self) => self -> m Double
vttRegionGetViewportAnchorY self
  = liftIO
      (ghcjs_dom_vtt_region_get_viewport_anchor_y
         (unVTTRegion (toVTTRegion self)))
 
foreign import javascript unsafe "$1[\"scroll\"] = $2;"
        ghcjs_dom_vtt_region_set_scroll ::
        JSRef VTTRegion -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
vttRegionSetScroll ::
                   (MonadIO m, IsVTTRegion self, ToJSString val) =>
                     self -> val -> m ()
vttRegionSetScroll self val
  = liftIO
      (ghcjs_dom_vtt_region_set_scroll (unVTTRegion (toVTTRegion self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"scroll\"]"
        ghcjs_dom_vtt_region_get_scroll :: JSRef VTTRegion -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion.scroll Mozilla VTTRegion.scroll documentation> 
vttRegionGetScroll ::
                   (MonadIO m, IsVTTRegion self, FromJSString result) =>
                     self -> m result
vttRegionGetScroll self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_vtt_region_get_scroll (unVTTRegion (toVTTRegion self))))
#else
module GHCJS.DOM.VTTRegion (
  ) where
#endif
