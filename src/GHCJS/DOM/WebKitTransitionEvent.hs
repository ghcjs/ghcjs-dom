{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitTransitionEvent
       (ghcjs_dom_webkit_transition_event_get_property_name,
        webKitTransitionEventGetPropertyName,
        ghcjs_dom_webkit_transition_event_get_elapsed_time,
        webKitTransitionEventGetElapsedTime,
        ghcjs_dom_webkit_transition_event_get_pseudo_element,
        webKitTransitionEventGetPseudoElement, WebKitTransitionEvent,
        IsWebKitTransitionEvent, castToWebKitTransitionEvent,
        gTypeWebKitTransitionEvent, toWebKitTransitionEvent)
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

 
foreign import javascript unsafe "$1[\"propertyName\"]"
        ghcjs_dom_webkit_transition_event_get_property_name ::
        JSRef WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.propertyName Mozilla WebKitTransitionEvent.propertyName documentation> 
webKitTransitionEventGetPropertyName ::
                                     (IsWebKitTransitionEvent self, FromJSString result) =>
                                       self -> IO result
webKitTransitionEventGetPropertyName self
  = fromJSString <$>
      (ghcjs_dom_webkit_transition_event_get_property_name
         (unWebKitTransitionEvent (toWebKitTransitionEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        ghcjs_dom_webkit_transition_event_get_elapsed_time ::
        JSRef WebKitTransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.elapsedTime Mozilla WebKitTransitionEvent.elapsedTime documentation> 
webKitTransitionEventGetElapsedTime ::
                                    (IsWebKitTransitionEvent self) => self -> IO Double
webKitTransitionEventGetElapsedTime self
  = ghcjs_dom_webkit_transition_event_get_elapsed_time
      (unWebKitTransitionEvent (toWebKitTransitionEvent self))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        ghcjs_dom_webkit_transition_event_get_pseudo_element ::
        JSRef WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.pseudoElement Mozilla WebKitTransitionEvent.pseudoElement documentation> 
webKitTransitionEventGetPseudoElement ::
                                      (IsWebKitTransitionEvent self, FromJSString result) =>
                                        self -> IO result
webKitTransitionEventGetPseudoElement self
  = fromJSString <$>
      (ghcjs_dom_webkit_transition_event_get_pseudo_element
         (unWebKitTransitionEvent (toWebKitTransitionEvent self)))
#else
module GHCJS.DOM.WebKitTransitionEvent (
  ) where
#endif
