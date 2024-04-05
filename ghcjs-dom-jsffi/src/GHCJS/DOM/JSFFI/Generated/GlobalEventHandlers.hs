{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.GlobalEventHandlers
       (abort, autocomplete, autocompleteerror, blur, canPlay,
        canPlayThrough, change, click, contextMenu, cueChange, dblClick,
        drag, dragEnd, dragEnter, dragLeave, dragOver, dragStart, drop,
        durationChange, emptied, ended, error, focus, input, invalid,
        keyDown, keyPress, keyUp, load, loadedData, loadedMetadata,
        loadStart, mouseDown, mouseEnter, mouseLeave, mouseMove, mouseOut,
        mouseOver, mouseUp, mouseWheel, pause, play, playing, progress,
        rateChange, rejectionhandled, reset, resize, scroll, seeked,
        seeking, select, stalled, submit, suspend, timeUpdate, toggle,
        unhandledrejection, volumeChange, waiting, transitionEnd,
        animationEnd, animationIteration, animationStart, search, wheel,
        touchCancel, touchEnd, touchMove, touchStart, touchForcechange,
        webKitMouseForcechanged, webKitMouseForcedown,
        webKitMouseForcewillbegin, webKitMouseForceup,
        webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop,
        GlobalEventHandlers(..), gTypeGlobalEventHandlers,
        IsGlobalEventHandlers, toGlobalEventHandlers)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onabort Mozilla GlobalEventHandlers.onabort documentation> 
abort ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self UIEvent
abort = unsafeEventNameAsync (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onautocomplete Mozilla GlobalEventHandlers.onautocomplete documentation> 
autocomplete ::
             (IsGlobalEventHandlers self, IsEventTarget self) =>
               EventName self onautocomplete
autocomplete = unsafeEventName (toJSString "autocomplete")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onautocompleteerror Mozilla GlobalEventHandlers.onautocompleteerror documentation> 
autocompleteerror ::
                  (IsGlobalEventHandlers self, IsEventTarget self) =>
                    EventName self onautocompleteerror
autocompleteerror
  = unsafeEventName (toJSString "autocompleteerror")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onblur Mozilla GlobalEventHandlers.onblur documentation> 
blur ::
     (IsGlobalEventHandlers self, IsEventTarget self) =>
       EventName self FocusEvent
blur = unsafeEventNameAsync (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oncanplay Mozilla GlobalEventHandlers.oncanplay documentation> 
canPlay ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
canPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oncanplaythrough Mozilla GlobalEventHandlers.oncanplaythrough documentation> 
canPlayThrough ::
               (IsGlobalEventHandlers self, IsEventTarget self) =>
                 EventName self Event
canPlayThrough = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onchange Mozilla GlobalEventHandlers.onchange documentation> 
change ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onclick Mozilla GlobalEventHandlers.onclick documentation> 
click ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oncontextmenu Mozilla GlobalEventHandlers.oncontextmenu documentation> 
contextMenu ::
            (IsGlobalEventHandlers self, IsEventTarget self) =>
              EventName self MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oncuechange Mozilla GlobalEventHandlers.oncuechange documentation> 
cueChange ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self Event
cueChange = unsafeEventName (toJSString "cuechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondblclick Mozilla GlobalEventHandlers.ondblclick documentation> 
dblClick ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondrag Mozilla GlobalEventHandlers.ondrag documentation> 
drag ::
     (IsGlobalEventHandlers self, IsEventTarget self) =>
       EventName self MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondragend Mozilla GlobalEventHandlers.ondragend documentation> 
dragEnd ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondragenter Mozilla GlobalEventHandlers.ondragenter documentation> 
dragEnter ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondragleave Mozilla GlobalEventHandlers.ondragleave documentation> 
dragLeave ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondragover Mozilla GlobalEventHandlers.ondragover documentation> 
dragOver ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondragstart Mozilla GlobalEventHandlers.ondragstart documentation> 
dragStart ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondrop Mozilla GlobalEventHandlers.ondrop documentation> 
drop ::
     (IsGlobalEventHandlers self, IsEventTarget self) =>
       EventName self MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ondurationchange Mozilla GlobalEventHandlers.ondurationchange documentation> 
durationChange ::
               (IsGlobalEventHandlers self, IsEventTarget self) =>
                 EventName self Event
durationChange = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onemptied Mozilla GlobalEventHandlers.onemptied documentation> 
emptied ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
emptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onended Mozilla GlobalEventHandlers.onended documentation> 
ended ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onerror Mozilla GlobalEventHandlers.onerror documentation> 
error ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self UIEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onfocus Mozilla GlobalEventHandlers.onfocus documentation> 
focus ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self FocusEvent
focus = unsafeEventNameAsync (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oninput Mozilla GlobalEventHandlers.oninput documentation> 
input ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.oninvalid Mozilla GlobalEventHandlers.oninvalid documentation> 
invalid ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onkeydown Mozilla GlobalEventHandlers.onkeydown documentation> 
keyDown ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onkeypress Mozilla GlobalEventHandlers.onkeypress documentation> 
keyPress ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onkeyup Mozilla GlobalEventHandlers.onkeyup documentation> 
keyUp ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onload Mozilla GlobalEventHandlers.onload documentation> 
load ::
     (IsGlobalEventHandlers self, IsEventTarget self) =>
       EventName self UIEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onloadeddata Mozilla GlobalEventHandlers.onloadeddata documentation> 
loadedData ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self Event
loadedData = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onloadedmetadata Mozilla GlobalEventHandlers.onloadedmetadata documentation> 
loadedMetadata ::
               (IsGlobalEventHandlers self, IsEventTarget self) =>
                 EventName self Event
loadedMetadata = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onloadstart Mozilla GlobalEventHandlers.onloadstart documentation> 
loadStart ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self ProgressEvent
loadStart = unsafeEventNameAsync (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmousedown Mozilla GlobalEventHandlers.onmousedown documentation> 
mouseDown ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmouseenter Mozilla GlobalEventHandlers.onmouseenter documentation> 
mouseEnter ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmouseleave Mozilla GlobalEventHandlers.onmouseleave documentation> 
mouseLeave ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmousemove Mozilla GlobalEventHandlers.onmousemove documentation> 
mouseMove ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmouseout Mozilla GlobalEventHandlers.onmouseout documentation> 
mouseOut ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmouseover Mozilla GlobalEventHandlers.onmouseover documentation> 
mouseOver ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmouseup Mozilla GlobalEventHandlers.onmouseup documentation> 
mouseUp ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onmousewheel Mozilla GlobalEventHandlers.onmousewheel documentation> 
mouseWheel ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onpause Mozilla GlobalEventHandlers.onpause documentation> 
pause ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self Event
pause = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onplay Mozilla GlobalEventHandlers.onplay documentation> 
play ::
     (IsGlobalEventHandlers self, IsEventTarget self) =>
       EventName self Event
play = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onplaying Mozilla GlobalEventHandlers.onplaying documentation> 
playing ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
playing = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onprogress Mozilla GlobalEventHandlers.onprogress documentation> 
progress ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self ProgressEvent
progress = unsafeEventNameAsync (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onratechange Mozilla GlobalEventHandlers.onratechange documentation> 
rateChange ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self Event
rateChange = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onrejectionhandled Mozilla GlobalEventHandlers.onrejectionhandled documentation> 
rejectionhandled ::
                 (IsGlobalEventHandlers self, IsEventTarget self) =>
                   EventName self onrejectionhandled
rejectionhandled = unsafeEventName (toJSString "rejectionhandled")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onreset Mozilla GlobalEventHandlers.onreset documentation> 
reset ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onresize Mozilla GlobalEventHandlers.onresize documentation> 
resize ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onscroll Mozilla GlobalEventHandlers.onscroll documentation> 
scroll ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self UIEvent
scroll = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onseeked Mozilla GlobalEventHandlers.onseeked documentation> 
seeked ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self Event
seeked = unsafeEventName (toJSString "seeked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onseeking Mozilla GlobalEventHandlers.onseeking documentation> 
seeking ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
seeking = unsafeEventName (toJSString "seeking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onselect Mozilla GlobalEventHandlers.onselect documentation> 
select ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onstalled Mozilla GlobalEventHandlers.onstalled documentation> 
stalled ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
stalled = unsafeEventName (toJSString "stalled")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onsubmit Mozilla GlobalEventHandlers.onsubmit documentation> 
submit ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onsuspend Mozilla GlobalEventHandlers.onsuspend documentation> 
suspend ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
suspend = unsafeEventName (toJSString "suspend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontimeupdate Mozilla GlobalEventHandlers.ontimeupdate documentation> 
timeUpdate ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self Event
timeUpdate = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontoggle Mozilla GlobalEventHandlers.ontoggle documentation> 
toggle ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self ontoggle
toggle = unsafeEventName (toJSString "toggle")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onunhandledrejection Mozilla GlobalEventHandlers.onunhandledrejection documentation> 
unhandledrejection ::
                   (IsGlobalEventHandlers self, IsEventTarget self) =>
                     EventName self onunhandledrejection
unhandledrejection
  = unsafeEventName (toJSString "unhandledrejection")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onvolumechange Mozilla GlobalEventHandlers.onvolumechange documentation> 
volumeChange ::
             (IsGlobalEventHandlers self, IsEventTarget self) =>
               EventName self Event
volumeChange = unsafeEventName (toJSString "volumechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwaiting Mozilla GlobalEventHandlers.onwaiting documentation> 
waiting ::
        (IsGlobalEventHandlers self, IsEventTarget self) =>
          EventName self Event
waiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontransitionend Mozilla GlobalEventHandlers.ontransitionend documentation> 
transitionEnd ::
              (IsGlobalEventHandlers self, IsEventTarget self) =>
                EventName self TransitionEvent
transitionEnd = unsafeEventName (toJSString "transitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onanimationend Mozilla GlobalEventHandlers.onanimationend documentation> 
animationEnd ::
             (IsGlobalEventHandlers self, IsEventTarget self) =>
               EventName self AnimationEvent
animationEnd = unsafeEventName (toJSString "animationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onanimationiteration Mozilla GlobalEventHandlers.onanimationiteration documentation> 
animationIteration ::
                   (IsGlobalEventHandlers self, IsEventTarget self) =>
                     EventName self AnimationEvent
animationIteration
  = unsafeEventName (toJSString "animationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onanimationstart Mozilla GlobalEventHandlers.onanimationstart documentation> 
animationStart ::
               (IsGlobalEventHandlers self, IsEventTarget self) =>
                 EventName self AnimationEvent
animationStart = unsafeEventName (toJSString "animationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onsearch Mozilla GlobalEventHandlers.onsearch documentation> 
search ::
       (IsGlobalEventHandlers self, IsEventTarget self) =>
         EventName self Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwheel Mozilla GlobalEventHandlers.onwheel documentation> 
wheel ::
      (IsGlobalEventHandlers self, IsEventTarget self) =>
        EventName self WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontouchcancel Mozilla GlobalEventHandlers.ontouchcancel documentation> 
touchCancel ::
            (IsGlobalEventHandlers self, IsEventTarget self) =>
              EventName self TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontouchend Mozilla GlobalEventHandlers.ontouchend documentation> 
touchEnd ::
         (IsGlobalEventHandlers self, IsEventTarget self) =>
           EventName self TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontouchmove Mozilla GlobalEventHandlers.ontouchmove documentation> 
touchMove ::
          (IsGlobalEventHandlers self, IsEventTarget self) =>
            EventName self TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontouchstart Mozilla GlobalEventHandlers.ontouchstart documentation> 
touchStart ::
           (IsGlobalEventHandlers self, IsEventTarget self) =>
             EventName self TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.ontouchforcechange Mozilla GlobalEventHandlers.ontouchforcechange documentation> 
touchForcechange ::
                 (IsGlobalEventHandlers self, IsEventTarget self) =>
                   EventName self ontouchforcechange
touchForcechange = unsafeEventName (toJSString "touchforcechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitmouseforcechanged Mozilla GlobalEventHandlers.onwebkitmouseforcechanged documentation> 
webKitMouseForcechanged ::
                        (IsGlobalEventHandlers self, IsEventTarget self) =>
                          EventName self onwebkitmouseforcechanged
webKitMouseForcechanged
  = unsafeEventName (toJSString "webkitmouseforcechanged")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitmouseforcedown Mozilla GlobalEventHandlers.onwebkitmouseforcedown documentation> 
webKitMouseForcedown ::
                     (IsGlobalEventHandlers self, IsEventTarget self) =>
                       EventName self onwebkitmouseforcedown
webKitMouseForcedown
  = unsafeEventName (toJSString "webkitmouseforcedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitmouseforcewillbegin Mozilla GlobalEventHandlers.onwebkitmouseforcewillbegin documentation> 
webKitMouseForcewillbegin ::
                          (IsGlobalEventHandlers self, IsEventTarget self) =>
                            EventName self onwebkitmouseforcewillbegin
webKitMouseForcewillbegin
  = unsafeEventName (toJSString "webkitmouseforcewillbegin")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitmouseforceup Mozilla GlobalEventHandlers.onwebkitmouseforceup documentation> 
webKitMouseForceup ::
                   (IsGlobalEventHandlers self, IsEventTarget self) =>
                     EventName self onwebkitmouseforceup
webKitMouseForceup
  = unsafeEventName (toJSString "webkitmouseforceup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitwillrevealbottom Mozilla GlobalEventHandlers.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom ::
                       (IsGlobalEventHandlers self, IsEventTarget self) =>
                         EventName self Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitwillrevealleft Mozilla GlobalEventHandlers.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft ::
                     (IsGlobalEventHandlers self, IsEventTarget self) =>
                       EventName self Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitwillrevealright Mozilla GlobalEventHandlers.onwebkitwillrevealright documentation> 
webKitWillRevealRight ::
                      (IsGlobalEventHandlers self, IsEventTarget self) =>
                        EventName self Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/GlobalEventHandlers.onwebkitwillrevealtop Mozilla GlobalEventHandlers.onwebkitwillrevealtop documentation> 
webKitWillRevealTop ::
                    (IsGlobalEventHandlers self, IsEventTarget self) =>
                      EventName self Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")