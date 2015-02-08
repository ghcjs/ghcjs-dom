{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventTarget
       (ghcjs_dom_event_target_add_event_listener,
        eventTargetAddEventListener,
        ghcjs_dom_event_target_remove_event_listener,
        eventTargetRemoveEventListener,
        ghcjs_dom_event_target_dispatch_event, eventTargetDispatchEvent,
        EventTarget, IsEventTarget, castToEventTarget, gTypeEventTarget,
        toEventTarget)
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
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"addEventListener\"]($2, $3,\n$4)"
        ghcjs_dom_event_target_add_event_listener ::
        JSRef EventTarget ->
          JSString -> JSRef EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
eventTargetAddEventListener ::
                            (MonadIO m, IsEventTarget self, ToJSString type',
                             IsEventListener listener) =>
                              self -> type' -> Maybe listener -> Bool -> m ()
eventTargetAddEventListener self type' listener useCapture
  = liftIO
      (ghcjs_dom_event_target_add_event_listener
         (unEventTarget (toEventTarget self))
         (toJSString type')
         (maybe jsNull (unEventListener . toEventListener) listener)
         useCapture)
 
foreign import javascript unsafe
        "$1[\"removeEventListener\"]($2,\n$3, $4)"
        ghcjs_dom_event_target_remove_event_listener ::
        JSRef EventTarget ->
          JSString -> JSRef EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
eventTargetRemoveEventListener ::
                               (MonadIO m, IsEventTarget self, ToJSString type',
                                IsEventListener listener) =>
                                 self -> type' -> Maybe listener -> Bool -> m ()
eventTargetRemoveEventListener self type' listener useCapture
  = liftIO
      (ghcjs_dom_event_target_remove_event_listener
         (unEventTarget (toEventTarget self))
         (toJSString type')
         (maybe jsNull (unEventListener . toEventListener) listener)
         useCapture)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
eventTargetDispatchEvent ::
                         (MonadIO m, IsEventTarget self, IsEvent event) =>
                           self -> Maybe event -> m Bool
eventTargetDispatchEvent self event
  = liftIO
      (ghcjs_dom_event_target_dispatch_event
         (unEventTarget (toEventTarget self))
         (maybe jsNull (unEvent . toEvent) event))
#else
module GHCJS.DOM.EventTarget (
  ) where
#endif
