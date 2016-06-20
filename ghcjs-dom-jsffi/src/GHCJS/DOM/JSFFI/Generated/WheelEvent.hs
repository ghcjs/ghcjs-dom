{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WheelEvent
       (js_initWebKitWheelEvent, initWebKitWheelEvent,
        pattern DOM_DELTA_PIXEL, pattern DOM_DELTA_LINE,
        pattern DOM_DELTA_PAGE, js_getDeltaX, getDeltaX, js_getDeltaY,
        getDeltaY, js_getDeltaZ, getDeltaZ, js_getDeltaMode, getDeltaMode,
        js_getWheelDeltaX, getWheelDeltaX, js_getWheelDeltaY,
        getWheelDeltaY, js_getWheelDelta, getWheelDelta,
        js_getWebkitDirectionInvertedFromDevice,
        getWebkitDirectionInvertedFromDevice, WheelEvent, castToWheelEvent,
        gTypeWheelEvent)
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
        "$1[\"initWebKitWheelEvent\"]($2,\n$3, $4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        js_initWebKitWheelEvent ::
        WheelEvent ->
          Int ->
            Int ->
              Nullable Window ->
                Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.initWebKitWheelEvent Mozilla WheelEvent.initWebKitWheelEvent documentation> 
initWebKitWheelEvent ::
                     (MonadIO m) =>
                       WheelEvent ->
                         Int ->
                           Int ->
                             Maybe Window ->
                               Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> m ()
initWebKitWheelEvent self wheelDeltaX wheelDeltaY view screenX
  screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftIO
      (js_initWebKitWheelEvent (self) wheelDeltaX wheelDeltaY
         (maybeToNullable view)
         screenX
         screenY
         clientX
         clientY
         ctrlKey
         altKey
         shiftKey
         metaKey)
pattern DOM_DELTA_PIXEL = 0
pattern DOM_DELTA_LINE = 1
pattern DOM_DELTA_PAGE = 2
 
foreign import javascript unsafe "$1[\"deltaX\"]" js_getDeltaX ::
        WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaX Mozilla WheelEvent.deltaX documentation> 
getDeltaX :: (MonadIO m) => WheelEvent -> m Double
getDeltaX self = liftIO (js_getDeltaX (self))
 
foreign import javascript unsafe "$1[\"deltaY\"]" js_getDeltaY ::
        WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaY Mozilla WheelEvent.deltaY documentation> 
getDeltaY :: (MonadIO m) => WheelEvent -> m Double
getDeltaY self = liftIO (js_getDeltaY (self))
 
foreign import javascript unsafe "$1[\"deltaZ\"]" js_getDeltaZ ::
        WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaZ Mozilla WheelEvent.deltaZ documentation> 
getDeltaZ :: (MonadIO m) => WheelEvent -> m Double
getDeltaZ self = liftIO (js_getDeltaZ (self))
 
foreign import javascript unsafe "$1[\"deltaMode\"]"
        js_getDeltaMode :: WheelEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaMode Mozilla WheelEvent.deltaMode documentation> 
getDeltaMode :: (MonadIO m) => WheelEvent -> m Word
getDeltaMode self = liftIO (js_getDeltaMode (self))
 
foreign import javascript unsafe "$1[\"wheelDeltaX\"]"
        js_getWheelDeltaX :: WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaX Mozilla WheelEvent.wheelDeltaX documentation> 
getWheelDeltaX :: (MonadIO m) => WheelEvent -> m Int
getWheelDeltaX self = liftIO (js_getWheelDeltaX (self))
 
foreign import javascript unsafe "$1[\"wheelDeltaY\"]"
        js_getWheelDeltaY :: WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaY Mozilla WheelEvent.wheelDeltaY documentation> 
getWheelDeltaY :: (MonadIO m) => WheelEvent -> m Int
getWheelDeltaY self = liftIO (js_getWheelDeltaY (self))
 
foreign import javascript unsafe "$1[\"wheelDelta\"]"
        js_getWheelDelta :: WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDelta Mozilla WheelEvent.wheelDelta documentation> 
getWheelDelta :: (MonadIO m) => WheelEvent -> m Int
getWheelDelta self = liftIO (js_getWheelDelta (self))
 
foreign import javascript unsafe
        "($1[\"webkitDirectionInvertedFromDevice\"] ? 1 : 0)"
        js_getWebkitDirectionInvertedFromDevice :: WheelEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.webkitDirectionInvertedFromDevice Mozilla WheelEvent.webkitDirectionInvertedFromDevice documentation> 
getWebkitDirectionInvertedFromDevice ::
                                     (MonadIO m) => WheelEvent -> m Bool
getWebkitDirectionInvertedFromDevice self
  = liftIO (js_getWebkitDirectionInvertedFromDevice (self))