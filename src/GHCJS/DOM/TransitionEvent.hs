{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TransitionEvent
       (ghcjs_dom_transition_event_get_property_name,
        transitionEventGetPropertyName,
        ghcjs_dom_transition_event_get_elapsed_time,
        transitionEventGetElapsedTime,
        ghcjs_dom_transition_event_get_pseudo_element,
        transitionEventGetPseudoElement, TransitionEvent(..),
        IsTransitionEvent, castToTransitionEvent, gTypeTransitionEvent,
        toTransitionEvent)
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

 
foreign import javascript unsafe "$1[\"propertyName\"]"
        ghcjs_dom_transition_event_get_property_name ::
        JSRef TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.propertyName Mozilla TransitionEvent.propertyName documentation> 
transitionEventGetPropertyName ::
                               (MonadIO m, IsTransitionEvent self, FromJSString result) =>
                                 self -> m result
transitionEventGetPropertyName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_transition_event_get_property_name
            (unTransitionEvent (toTransitionEvent self))))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_transition_event_get_elapsed_time ::
        JSRef TransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.elapsedTime Mozilla TransitionEvent.elapsedTime documentation> 
transitionEventGetElapsedTime ::
                              (MonadIO m, IsTransitionEvent self) => self -> m Double
transitionEventGetElapsedTime self
  = liftIO
      (ghcjs_dom_transition_event_get_elapsed_time
         (unTransitionEvent (toTransitionEvent self)))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        ghcjs_dom_transition_event_get_pseudo_element ::
        JSRef TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.pseudoElement Mozilla TransitionEvent.pseudoElement documentation> 
transitionEventGetPseudoElement ::
                                (MonadIO m, IsTransitionEvent self, FromJSString result) =>
                                  self -> m result
transitionEventGetPseudoElement self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_transition_event_get_pseudo_element
            (unTransitionEvent (toTransitionEvent self))))
#else
module GHCJS.DOM.TransitionEvent (
  ) where
#endif
