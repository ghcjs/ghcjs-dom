{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.VTTCue
       (js_newVTTCue, newVTTCue, js_getCueAsHTML, getCueAsHTML,
        js_setVertical, setVertical, js_getVertical, getVertical,
        js_setSnapToLines, setSnapToLines, js_getSnapToLines,
        getSnapToLines, js_setLine, setLine, js_getLine, getLine,
        js_setPosition, setPosition, js_getPosition, getPosition,
        js_setSize, setSize, js_getSize, getSize, js_setAlign, setAlign,
        js_getAlign, getAlign, js_setText, setText, js_getText, getText,
        js_setRegionId, setRegionId, js_getRegionId, getRegionId, VTTCue,
        castToVTTCue, gTypeVTTCue)
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
 
foreign import javascript unsafe
        "new window[\"VTTCue\"]($1, $2, $3)" js_newVTTCue ::
        Double -> Double -> JSString -> IO VTTCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation> 
newVTTCue ::
          (MonadIO m, ToJSString text) =>
            Double -> Double -> text -> m VTTCue
newVTTCue startTime endTime text
  = liftIO (js_newVTTCue startTime endTime (toJSString text))
 
foreign import javascript unsafe "$1[\"getCueAsHTML\"]()"
        js_getCueAsHTML :: VTTCue -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.getCueAsHTML Mozilla VTTCue.getCueAsHTML documentation> 
getCueAsHTML :: (MonadIO m) => VTTCue -> m (Maybe DocumentFragment)
getCueAsHTML self
  = liftIO (nullableToMaybe <$> (js_getCueAsHTML (self)))
 
foreign import javascript unsafe "$1[\"vertical\"] = $2;"
        js_setVertical :: VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
setVertical :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setVertical self val
  = liftIO (js_setVertical (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vertical\"]" js_getVertical
        :: VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
getVertical ::
            (MonadIO m, FromJSString result) => VTTCue -> m result
getVertical self
  = liftIO (fromJSString <$> (js_getVertical (self)))
 
foreign import javascript unsafe "$1[\"snapToLines\"] = $2;"
        js_setSnapToLines :: VTTCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
setSnapToLines :: (MonadIO m) => VTTCue -> Bool -> m ()
setSnapToLines self val = liftIO (js_setSnapToLines (self) val)
 
foreign import javascript unsafe "($1[\"snapToLines\"] ? 1 : 0)"
        js_getSnapToLines :: VTTCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
getSnapToLines :: (MonadIO m) => VTTCue -> m Bool
getSnapToLines self = liftIO (js_getSnapToLines (self))
 
foreign import javascript unsafe "$1[\"line\"] = $2;" js_setLine ::
        VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
setLine :: (MonadIO m) => VTTCue -> Double -> m ()
setLine self val = liftIO (js_setLine (self) val)
 
foreign import javascript unsafe "$1[\"line\"]" js_getLine ::
        VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
getLine :: (MonadIO m) => VTTCue -> m Double
getLine self = liftIO (js_getLine (self))
 
foreign import javascript unsafe "$1[\"position\"] = $2;"
        js_setPosition :: VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
setPosition :: (MonadIO m) => VTTCue -> Double -> m ()
setPosition self val = liftIO (js_setPosition (self) val)
 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
getPosition :: (MonadIO m) => VTTCue -> m Double
getPosition self = liftIO (js_getPosition (self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
setSize :: (MonadIO m) => VTTCue -> Double -> m ()
setSize self val = liftIO (js_setSize (self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
getSize :: (MonadIO m) => VTTCue -> m Double
getSize self = liftIO (js_getSize (self))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
setAlign :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
getAlign :: (MonadIO m, FromJSString result) => VTTCue -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
setText :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setText self val = liftIO (js_setText (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
getText :: (MonadIO m, FromJSString result) => VTTCue -> m result
getText self = liftIO (fromJSString <$> (js_getText (self)))
 
foreign import javascript unsafe "$1[\"regionId\"] = $2;"
        js_setRegionId :: VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
setRegionId :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setRegionId self val
  = liftIO (js_setRegionId (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"regionId\"]" js_getRegionId
        :: VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
getRegionId ::
            (MonadIO m, FromJSString result) => VTTCue -> m result
getRegionId self
  = liftIO (fromJSString <$> (js_getRegionId (self)))