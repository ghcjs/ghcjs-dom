{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XMLHttpRequestEventTarget
       (loadStart, progress, abortEvent, error, load, timeout, loadEnd,
        XMLHttpRequestEventTarget(..), gTypeXMLHttpRequestEventTarget,
        IsXMLHttpRequestEventTarget, toXMLHttpRequestEventTarget)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onloadstart Mozilla XMLHttpRequestEventTarget.onloadstart documentation> 
loadStart ::
          (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
            EventName self ProgressEvent
loadStart = unsafeEventNameAsync (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onprogress Mozilla XMLHttpRequestEventTarget.onprogress documentation> 
progress ::
         (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
           EventName self XMLHttpRequestProgressEvent
progress = unsafeEventNameAsync (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onabort Mozilla XMLHttpRequestEventTarget.onabort documentation> 
abortEvent ::
           (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
             EventName self XMLHttpRequestProgressEvent
abortEvent = unsafeEventNameAsync (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onerror Mozilla XMLHttpRequestEventTarget.onerror documentation> 
error ::
      (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
        EventName self XMLHttpRequestProgressEvent
error = unsafeEventNameAsync (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onload Mozilla XMLHttpRequestEventTarget.onload documentation> 
load ::
     (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
       EventName self XMLHttpRequestProgressEvent
load = unsafeEventNameAsync (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.ontimeout Mozilla XMLHttpRequestEventTarget.ontimeout documentation> 
timeout ::
        (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
          EventName self ProgressEvent
timeout = unsafeEventNameAsync (toJSString "timeout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget.onloadend Mozilla XMLHttpRequestEventTarget.onloadend documentation> 
loadEnd ::
        (IsXMLHttpRequestEventTarget self, IsEventTarget self) =>
          EventName self ProgressEvent
loadEnd = unsafeEventNameAsync (toJSString "loadend")