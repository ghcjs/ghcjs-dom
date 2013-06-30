{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.EventTarget
       (ghcjs_dom_event_target_dispatch_event, eventTargetDispatchEvent)
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
        ghcjs_dom_event_target_dispatch_event ::
        JSRef EventTarget -> JSRef Event -> IO JSBool
#else 
ghcjs_dom_event_target_dispatch_event ::
                                        JSRef EventTarget -> JSRef Event -> IO JSBool
ghcjs_dom_event_target_dispatch_event = undefined
#endif
 
eventTargetDispatchEvent ::
                         (IsEventTarget self, IsEvent event) =>
                           self -> Maybe event -> IO Bool
eventTargetDispatchEvent self event
  = fromJSBool <$>
      (ghcjs_dom_event_target_dispatch_event
         (unEventTarget (toEventTarget self))
         (maybe jsNull (unEvent . toEvent) event))