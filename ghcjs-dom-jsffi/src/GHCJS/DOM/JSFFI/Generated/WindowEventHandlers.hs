{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WindowEventHandlers
       (beforeUnload, hashChange, languagechange, message, offline,
        online, pageHide, pageShow, popState, storage, unload,
        orientationChange, WindowEventHandlers(..),
        gTypeWindowEventHandlers, IsWindowEventHandlers,
        toWindowEventHandlers)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onbeforeunload Mozilla WindowEventHandlers.onbeforeunload documentation> 
beforeUnload ::
             (IsWindowEventHandlers self, IsEventTarget self) =>
               EventName self BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onhashchange Mozilla WindowEventHandlers.onhashchange documentation> 
hashChange ::
           (IsWindowEventHandlers self, IsEventTarget self) =>
             EventName self HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onlanguagechange Mozilla WindowEventHandlers.onlanguagechange documentation> 
languagechange ::
               (IsWindowEventHandlers self, IsEventTarget self) =>
                 EventName self Event
languagechange = unsafeEventName (toJSString "languagechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onmessage Mozilla WindowEventHandlers.onmessage documentation> 
message ::
        (IsWindowEventHandlers self, IsEventTarget self) =>
          EventName self MessageEvent
message = unsafeEventNameAsync (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onoffline Mozilla WindowEventHandlers.onoffline documentation> 
offline ::
        (IsWindowEventHandlers self, IsEventTarget self) =>
          EventName self Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.ononline Mozilla WindowEventHandlers.ononline documentation> 
online ::
       (IsWindowEventHandlers self, IsEventTarget self) =>
         EventName self Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onpagehide Mozilla WindowEventHandlers.onpagehide documentation> 
pageHide ::
         (IsWindowEventHandlers self, IsEventTarget self) =>
           EventName self PageTransitionEvent
pageHide = unsafeEventName (toJSString "pagehide")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onpageshow Mozilla WindowEventHandlers.onpageshow documentation> 
pageShow ::
         (IsWindowEventHandlers self, IsEventTarget self) =>
           EventName self PageTransitionEvent
pageShow = unsafeEventName (toJSString "pageshow")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onpopstate Mozilla WindowEventHandlers.onpopstate documentation> 
popState ::
         (IsWindowEventHandlers self, IsEventTarget self) =>
           EventName self PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onstorage Mozilla WindowEventHandlers.onstorage documentation> 
storage ::
        (IsWindowEventHandlers self, IsEventTarget self) =>
          EventName self StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onunload Mozilla WindowEventHandlers.onunload documentation> 
unload ::
       (IsWindowEventHandlers self, IsEventTarget self) =>
         EventName self UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowEventHandlers.onorientationchange Mozilla WindowEventHandlers.onorientationchange documentation> 
orientationChange ::
                  (IsWindowEventHandlers self, IsEventTarget self) =>
                    EventName self Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")