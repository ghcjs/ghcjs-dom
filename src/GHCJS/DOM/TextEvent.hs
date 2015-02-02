{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextEvent
       (ghcjs_dom_text_event_init_text_event, textEventInitTextEvent,
        ghcjs_dom_text_event_get_data, textEventGetData, TextEvent(..),
        IsTextEvent, castToTextEvent, gTypeTextEvent, toTextEvent)
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
        "$1[\"initTextEvent\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_text_event_init_text_event ::
        JSRef TextEvent ->
          JSString -> Bool -> Bool -> JSRef DOMWindow -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.initTextEvent Mozilla TextEvent.initTextEvent documentation> 
textEventInitTextEvent ::
                       (IsTextEvent self, ToJSString typeArg, IsDOMWindow viewArg,
                        ToJSString dataArg) =>
                         self ->
                           typeArg -> Bool -> Bool -> Maybe viewArg -> dataArg -> IO ()
textEventInitTextEvent self typeArg canBubbleArg cancelableArg
  viewArg dataArg
  = ghcjs_dom_text_event_init_text_event
      (unTextEvent (toTextEvent self))
      (toJSString typeArg)
      canBubbleArg
      cancelableArg
      (maybe jsNull (unDOMWindow . toDOMWindow) viewArg)
      (toJSString dataArg)
 
foreign import javascript unsafe "$1[\"data\"]"
        ghcjs_dom_text_event_get_data :: JSRef TextEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.data Mozilla TextEvent.data documentation> 
textEventGetData ::
                 (IsTextEvent self, FromJSString result) => self -> IO result
textEventGetData self
  = fromJSString <$>
      (ghcjs_dom_text_event_get_data (unTextEvent (toTextEvent self)))
#else
module GHCJS.DOM.TextEvent (
  ) where
#endif
