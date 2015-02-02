{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TouchEvent
       (ghcjs_dom_touch_event_init_touch_event, touchEventInitTouchEvent,
        ghcjs_dom_touch_event_get_touches, touchEventGetTouches,
        ghcjs_dom_touch_event_get_target_touches,
        touchEventGetTargetTouches,
        ghcjs_dom_touch_event_get_changed_touches,
        touchEventGetChangedTouches, ghcjs_dom_touch_event_get_ctrl_key,
        touchEventGetCtrlKey, ghcjs_dom_touch_event_get_shift_key,
        touchEventGetShiftKey, ghcjs_dom_touch_event_get_alt_key,
        touchEventGetAltKey, ghcjs_dom_touch_event_get_meta_key,
        touchEventGetMetaKey, TouchEvent(..), IsTouchEvent,
        castToTouchEvent, gTypeTouchEvent, toTouchEvent)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"initTouchEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14)"
        ghcjs_dom_touch_event_init_touch_event ::
        JSRef TouchEvent ->
          JSRef TouchList ->
            JSRef TouchList ->
              JSRef TouchList ->
                JSString ->
                  JSRef DOMWindow ->
                    Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.initTouchEvent Mozilla TouchEvent.initTouchEvent documentation> 
touchEventInitTouchEvent ::
                         (IsTouchEvent self, IsTouchList touches, IsTouchList targetTouches,
                          IsTouchList changedTouches, ToJSString type', IsDOMWindow view) =>
                           self ->
                             Maybe touches ->
                               Maybe targetTouches ->
                                 Maybe changedTouches ->
                                   type' ->
                                     Maybe view ->
                                       Int ->
                                         Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()
touchEventInitTouchEvent self touches targetTouches changedTouches
  type' view screenX screenY clientX clientY ctrlKey altKey shiftKey
  metaKey
  = ghcjs_dom_touch_event_init_touch_event
      (unTouchEvent (toTouchEvent self))
      (maybe jsNull (unTouchList . toTouchList) touches)
      (maybe jsNull (unTouchList . toTouchList) targetTouches)
      (maybe jsNull (unTouchList . toTouchList) changedTouches)
      (toJSString type')
      (maybe jsNull (unDOMWindow . toDOMWindow) view)
      screenX
      screenY
      clientX
      clientY
      ctrlKey
      altKey
      shiftKey
      metaKey
 
foreign import javascript unsafe "$1[\"touches\"]"
        ghcjs_dom_touch_event_get_touches ::
        JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
touchEventGetTouches ::
                     (IsTouchEvent self) => self -> IO (Maybe TouchList)
touchEventGetTouches self
  = (ghcjs_dom_touch_event_get_touches
       (unTouchEvent (toTouchEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"targetTouches\"]"
        ghcjs_dom_touch_event_get_target_touches ::
        JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
touchEventGetTargetTouches ::
                           (IsTouchEvent self) => self -> IO (Maybe TouchList)
touchEventGetTargetTouches self
  = (ghcjs_dom_touch_event_get_target_touches
       (unTouchEvent (toTouchEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"changedTouches\"]"
        ghcjs_dom_touch_event_get_changed_touches ::
        JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
touchEventGetChangedTouches ::
                            (IsTouchEvent self) => self -> IO (Maybe TouchList)
touchEventGetChangedTouches self
  = (ghcjs_dom_touch_event_get_changed_touches
       (unTouchEvent (toTouchEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        ghcjs_dom_touch_event_get_ctrl_key :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.ctrlKey Mozilla TouchEvent.ctrlKey documentation> 
touchEventGetCtrlKey :: (IsTouchEvent self) => self -> IO Bool
touchEventGetCtrlKey self
  = ghcjs_dom_touch_event_get_ctrl_key
      (unTouchEvent (toTouchEvent self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        ghcjs_dom_touch_event_get_shift_key :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.shiftKey Mozilla TouchEvent.shiftKey documentation> 
touchEventGetShiftKey :: (IsTouchEvent self) => self -> IO Bool
touchEventGetShiftKey self
  = ghcjs_dom_touch_event_get_shift_key
      (unTouchEvent (toTouchEvent self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        ghcjs_dom_touch_event_get_alt_key :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.altKey Mozilla TouchEvent.altKey documentation> 
touchEventGetAltKey :: (IsTouchEvent self) => self -> IO Bool
touchEventGetAltKey self
  = ghcjs_dom_touch_event_get_alt_key
      (unTouchEvent (toTouchEvent self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        ghcjs_dom_touch_event_get_meta_key :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.metaKey Mozilla TouchEvent.metaKey documentation> 
touchEventGetMetaKey :: (IsTouchEvent self) => self -> IO Bool
touchEventGetMetaKey self
  = ghcjs_dom_touch_event_get_meta_key
      (unTouchEvent (toTouchEvent self))
#else
module GHCJS.DOM.TouchEvent (
  ) where
#endif
