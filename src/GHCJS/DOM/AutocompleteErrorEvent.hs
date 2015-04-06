{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AutocompleteErrorEvent
       (js_getReason, getReason, AutocompleteErrorEvent,
        castToAutocompleteErrorEvent, gTypeAutocompleteErrorEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        JSRef AutocompleteErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent.reason Mozilla AutocompleteErrorEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) =>
            AutocompleteErrorEvent -> m result
getReason self
  = liftIO
      (fromJSString <$> (js_getReason (unAutocompleteErrorEvent self)))
#else
module GHCJS.DOM.AutocompleteErrorEvent (
  ) where
#endif
