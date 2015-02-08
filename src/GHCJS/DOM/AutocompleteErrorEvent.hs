{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AutocompleteErrorEvent
       (ghcjs_dom_autocomplete_error_event_get_reason,
        autocompleteErrorEventGetReason, AutocompleteErrorEvent,
        IsAutocompleteErrorEvent, castToAutocompleteErrorEvent,
        gTypeAutocompleteErrorEvent, toAutocompleteErrorEvent)
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

 
foreign import javascript unsafe "$1[\"reason\"]"
        ghcjs_dom_autocomplete_error_event_get_reason ::
        JSRef AutocompleteErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent.reason Mozilla AutocompleteErrorEvent.reason documentation> 
autocompleteErrorEventGetReason ::
                                (MonadIO m, IsAutocompleteErrorEvent self, FromJSString result) =>
                                  self -> m result
autocompleteErrorEventGetReason self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_autocomplete_error_event_get_reason
            (unAutocompleteErrorEvent (toAutocompleteErrorEvent self))))
#else
module GHCJS.DOM.AutocompleteErrorEvent (
  ) where
#endif
