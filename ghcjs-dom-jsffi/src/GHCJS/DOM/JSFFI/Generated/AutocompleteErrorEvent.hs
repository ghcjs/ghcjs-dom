{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.AutocompleteErrorEvent
       (js_newAutocompleteErrorEvent, newAutocompleteErrorEvent,
        js_getReason, getReason, AutocompleteErrorEvent(..),
        gTypeAutocompleteErrorEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe
        "new window[\"AutocompleteErrorEvent\"]($1,\n$2)"
        js_newAutocompleteErrorEvent ::
        JSString ->
          Optional AutocompleteErrorEventInit -> IO AutocompleteErrorEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent Mozilla AutocompleteErrorEvent documentation> 
newAutocompleteErrorEvent ::
                          (MonadIO m, ToJSString type') =>
                            type' ->
                              Maybe AutocompleteErrorEventInit -> m AutocompleteErrorEvent
newAutocompleteErrorEvent type' eventInitDict
  = liftIO
      (js_newAutocompleteErrorEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        AutocompleteErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AutocompleteErrorEvent.reason Mozilla AutocompleteErrorEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) =>
            AutocompleteErrorEvent -> m result
getReason self = liftIO (fromJSString <$> (js_getReason self))