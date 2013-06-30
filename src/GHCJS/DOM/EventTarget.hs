{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.EventTarget
       (webkit_dom_event_target_dispatch_event, eventTargetDispatchEvent)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)"
        webkit_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO JSBool
#else 
webkit_dom_event_target_dispatch_event ::
                                         JSRef EventTarget -> JSRef Event -> IO JSBool
webkit_dom_event_target_dispatch_event = undefined
#endif
 
eventTargetDispatchEvent ::
                         (EventTargetClass self, EventClass event) =>
                           self -> Maybe event -> IO Bool
eventTargetDispatchEvent self event
  = fromJSBool <$>
      (webkit_dom_event_target_dispatch_event
         (unEventTarget (toEventTarget self))
         (maybe jsNull (unEvent . toEvent) event))