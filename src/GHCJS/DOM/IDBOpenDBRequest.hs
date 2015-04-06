{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBOpenDBRequest
       (blocked, upgradeNeeded, IDBOpenDBRequest, castToIDBOpenDBRequest,
        gTypeIDBOpenDBRequest)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onblocked Mozilla IDBOpenDBRequest.onblocked documentation> 
blocked :: EventName IDBOpenDBRequest Event
blocked = unsafeEventName (toJSString "blocked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onupgradeneeded Mozilla IDBOpenDBRequest.onupgradeneeded documentation> 
upgradeNeeded :: EventName IDBOpenDBRequest Event
upgradeNeeded = unsafeEventName (toJSString "upgradeneeded")
#else
module GHCJS.DOM.IDBOpenDBRequest (
  ) where
#endif
