{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CompositionEvent
       (ghcjs_dom_composition_event_init_composition_event,
        compositionEventInitCompositionEvent,
        ghcjs_dom_composition_event_get_data, compositionEventGetData,
        CompositionEvent, IsCompositionEvent, castToCompositionEvent,
        gTypeCompositionEvent, toCompositionEvent)
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
        "$1[\"initCompositionEvent\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_composition_event_init_composition_event ::
        JSRef CompositionEvent ->
          JSString -> Bool -> Bool -> JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.initCompositionEvent Mozilla CompositionEvent.initCompositionEvent documentation> 
compositionEventInitCompositionEvent ::
                                     (MonadIO m, IsCompositionEvent self, ToJSString typeArg,
                                      IsDOMWindow viewArg, ToJSString dataArg) =>
                                       self ->
                                         typeArg -> Bool -> Bool -> Maybe viewArg -> dataArg -> m ()
compositionEventInitCompositionEvent self typeArg canBubbleArg
  cancelableArg viewArg dataArg
  = liftIO
      (ghcjs_dom_composition_event_init_composition_event
         (unCompositionEvent (toCompositionEvent self))
         (toJSString typeArg)
         canBubbleArg
         cancelableArg
         (maybe jsNull (unDOMWindow . toDOMWindow) viewArg)
         (toJSString dataArg))
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_composition_event_get_data ::
        JSRef CompositionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CompositionEvent.data Mozilla CompositionEvent.data documentation> 
compositionEventGetData ::
                        (MonadIO m, IsCompositionEvent self, FromJSString result) =>
                          self -> m result
compositionEventGetData self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_composition_event_get_data
            (unCompositionEvent (toCompositionEvent self))))
#else
module GHCJS.DOM.CompositionEvent (
  ) where
#endif
