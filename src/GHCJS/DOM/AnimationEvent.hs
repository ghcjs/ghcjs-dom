{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AnimationEvent
       (ghcjs_dom_animation_event_get_animation_name,
        animationEventGetAnimationName,
        ghcjs_dom_animation_event_get_elapsed_time,
        animationEventGetElapsedTime, AnimationEvent, IsAnimationEvent,
        castToAnimationEvent, gTypeAnimationEvent, toAnimationEvent)
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

 
foreign import javascript unsafe "$1[\"animationName\"]"
        ghcjs_dom_animation_event_get_animation_name ::
        JSRef AnimationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.animationName Mozilla AnimationEvent.animationName documentation> 
animationEventGetAnimationName ::
                               (MonadIO m, IsAnimationEvent self, FromJSString result) =>
                                 self -> m result
animationEventGetAnimationName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_animation_event_get_animation_name
            (unAnimationEvent (toAnimationEvent self))))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_animation_event_get_elapsed_time ::
        JSRef AnimationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.elapsedTime Mozilla AnimationEvent.elapsedTime documentation> 
animationEventGetElapsedTime ::
                             (MonadIO m, IsAnimationEvent self) => self -> m Double
animationEventGetElapsedTime self
  = liftIO
      (ghcjs_dom_animation_event_get_elapsed_time
         (unAnimationEvent (toAnimationEvent self)))
#else
module GHCJS.DOM.AnimationEvent (
  ) where
#endif
