{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CustomEvent
       (ghcjs_dom_custom_event_init_custom_event,
        customEventInitCustomEvent, ghcjs_dom_custom_event_get_detail,
        customEventGetDetail, CustomEvent, IsCustomEvent,
        castToCustomEvent, gTypeCustomEvent, toCustomEvent)
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
        "$1[\"initCustomEvent\"]($2, $3,\n$4, $5)"
        ghcjs_dom_custom_event_init_custom_event ::
        JSRef CustomEvent -> JSString -> Bool -> Bool -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.initCustomEvent Mozilla CustomEvent.initCustomEvent documentation> 
customEventInitCustomEvent ::
                           (IsCustomEvent self, ToJSString typeArg) =>
                             self -> typeArg -> Bool -> Bool -> JSRef a -> IO ()
customEventInitCustomEvent self typeArg canBubbleArg cancelableArg
  detailArg
  = ghcjs_dom_custom_event_init_custom_event
      (unCustomEvent (toCustomEvent self))
      (toJSString typeArg)
      canBubbleArg
      cancelableArg
      detailArg
 
foreign import javascript unsafe "$1[\"detail\"]"
        ghcjs_dom_custom_event_get_detail ::
        JSRef CustomEvent -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.detail Mozilla CustomEvent.detail documentation> 
customEventGetDetail ::
                     (IsCustomEvent self) => self -> IO (JSRef a)
customEventGetDetail self
  = ghcjs_dom_custom_event_get_detail
      (unCustomEvent (toCustomEvent self))
#else
module GHCJS.DOM.CustomEvent (
  ) where
#endif
