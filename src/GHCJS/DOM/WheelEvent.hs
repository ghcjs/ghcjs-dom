{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WheelEvent
       (ghcjs_dom_wheel_event_init_wheel_event, wheelEventInitWheelEvent,
        cDOM_DELTA_PIXEL, cDOM_DELTA_LINE, cDOM_DELTA_PAGE,
        ghcjs_dom_wheel_event_get_delta_x, wheelEventGetDeltaX,
        ghcjs_dom_wheel_event_get_delta_y, wheelEventGetDeltaY,
        ghcjs_dom_wheel_event_get_delta_z, wheelEventGetDeltaZ,
        ghcjs_dom_wheel_event_get_delta_mode, wheelEventGetDeltaMode,
        ghcjs_dom_wheel_event_get_wheel_delta_x, wheelEventGetWheelDeltaX,
        ghcjs_dom_wheel_event_get_wheel_delta_y, wheelEventGetWheelDeltaY,
        ghcjs_dom_wheel_event_get_wheel_delta, wheelEventGetWheelDelta,
        ghcjs_dom_wheel_event_get_webkit_direction_inverted_from_device,
        wheelEventGetWebkitDirectionInvertedFromDevice, WheelEvent,
        IsWheelEvent, castToWheelEvent, gTypeWheelEvent, toWheelEvent)
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

 
foreign import javascript unsafe
        "$1[\"initWheelEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        ghcjs_dom_wheel_event_init_wheel_event ::
        JSRef WheelEvent ->
          Int ->
            Int ->
              JSRef DOMWindow ->
                Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.initWheelEvent Mozilla WheelEvent.initWheelEvent documentation> 
wheelEventInitWheelEvent ::
                         (MonadIO m, IsWheelEvent self, IsDOMWindow view) =>
                           self ->
                             Int ->
                               Int ->
                                 Maybe view ->
                                   Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> m ()
wheelEventInitWheelEvent self wheelDeltaX wheelDeltaY view screenX
  screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftIO
      (ghcjs_dom_wheel_event_init_wheel_event
         (unWheelEvent (toWheelEvent self))
         wheelDeltaX
         wheelDeltaY
         (maybe jsNull (unDOMWindow . toDOMWindow) view)
         screenX
         screenY
         clientX
         clientY
         ctrlKey
         altKey
         shiftKey
         metaKey)
cDOM_DELTA_PIXEL = 0
cDOM_DELTA_LINE = 1
cDOM_DELTA_PAGE = 2
 
foreign import javascript unsafe "$1[\"deltaX\"]"
        ghcjs_dom_wheel_event_get_delta_x :: JSRef WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaX Mozilla WheelEvent.deltaX documentation> 
wheelEventGetDeltaX ::
                    (MonadIO m, IsWheelEvent self) => self -> m Double
wheelEventGetDeltaX self
  = liftIO
      (ghcjs_dom_wheel_event_get_delta_x
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"deltaY\"]"
        ghcjs_dom_wheel_event_get_delta_y :: JSRef WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaY Mozilla WheelEvent.deltaY documentation> 
wheelEventGetDeltaY ::
                    (MonadIO m, IsWheelEvent self) => self -> m Double
wheelEventGetDeltaY self
  = liftIO
      (ghcjs_dom_wheel_event_get_delta_y
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"deltaZ\"]"
        ghcjs_dom_wheel_event_get_delta_z :: JSRef WheelEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaZ Mozilla WheelEvent.deltaZ documentation> 
wheelEventGetDeltaZ ::
                    (MonadIO m, IsWheelEvent self) => self -> m Double
wheelEventGetDeltaZ self
  = liftIO
      (ghcjs_dom_wheel_event_get_delta_z
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"deltaMode\"]"
        ghcjs_dom_wheel_event_get_delta_mode :: JSRef WheelEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.deltaMode Mozilla WheelEvent.deltaMode documentation> 
wheelEventGetDeltaMode ::
                       (MonadIO m, IsWheelEvent self) => self -> m Word
wheelEventGetDeltaMode self
  = liftIO
      (ghcjs_dom_wheel_event_get_delta_mode
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"wheelDeltaX\"]"
        ghcjs_dom_wheel_event_get_wheel_delta_x ::
        JSRef WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaX Mozilla WheelEvent.wheelDeltaX documentation> 
wheelEventGetWheelDeltaX ::
                         (MonadIO m, IsWheelEvent self) => self -> m Int
wheelEventGetWheelDeltaX self
  = liftIO
      (ghcjs_dom_wheel_event_get_wheel_delta_x
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"wheelDeltaY\"]"
        ghcjs_dom_wheel_event_get_wheel_delta_y ::
        JSRef WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDeltaY Mozilla WheelEvent.wheelDeltaY documentation> 
wheelEventGetWheelDeltaY ::
                         (MonadIO m, IsWheelEvent self) => self -> m Int
wheelEventGetWheelDeltaY self
  = liftIO
      (ghcjs_dom_wheel_event_get_wheel_delta_y
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe "$1[\"wheelDelta\"]"
        ghcjs_dom_wheel_event_get_wheel_delta :: JSRef WheelEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.wheelDelta Mozilla WheelEvent.wheelDelta documentation> 
wheelEventGetWheelDelta ::
                        (MonadIO m, IsWheelEvent self) => self -> m Int
wheelEventGetWheelDelta self
  = liftIO
      (ghcjs_dom_wheel_event_get_wheel_delta
         (unWheelEvent (toWheelEvent self)))
 
foreign import javascript unsafe
        "($1[\"webkitDirectionInvertedFromDevice\"] ? 1 : 0)"
        ghcjs_dom_wheel_event_get_webkit_direction_inverted_from_device ::
        JSRef WheelEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WheelEvent.webkitDirectionInvertedFromDevice Mozilla WheelEvent.webkitDirectionInvertedFromDevice documentation> 
wheelEventGetWebkitDirectionInvertedFromDevice ::
                                               (MonadIO m, IsWheelEvent self) => self -> m Bool
wheelEventGetWebkitDirectionInvertedFromDevice self
  = liftIO
      (ghcjs_dom_wheel_event_get_webkit_direction_inverted_from_device
         (unWheelEvent (toWheelEvent self)))
#else
module GHCJS.DOM.WheelEvent (
  ) where
#endif
