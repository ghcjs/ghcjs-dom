{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DocumentAndElementEventHandlers
       (copy, cut, paste, beforeCopy, beforeCut, beforeinput, beforePaste,
        DocumentAndElementEventHandlers(..),
        gTypeDocumentAndElementEventHandlers,
        IsDocumentAndElementEventHandlers,
        toDocumentAndElementEventHandlers)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.oncopy Mozilla DocumentAndElementEventHandlers.oncopy documentation> 
copy ::
     (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
       EventName self ClipboardEvent
copy = unsafeEventName (toJSString "copy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.oncut Mozilla DocumentAndElementEventHandlers.oncut documentation> 
cut ::
    (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
      EventName self ClipboardEvent
cut = unsafeEventName (toJSString "cut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onpaste Mozilla DocumentAndElementEventHandlers.onpaste documentation> 
paste ::
      (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
        EventName self ClipboardEvent
paste = unsafeEventName (toJSString "paste")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforecopy Mozilla DocumentAndElementEventHandlers.onbeforecopy documentation> 
beforeCopy ::
           (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
             EventName self ClipboardEvent
beforeCopy = unsafeEventName (toJSString "beforecopy")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforecut Mozilla DocumentAndElementEventHandlers.onbeforecut documentation> 
beforeCut ::
          (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
            EventName self ClipboardEvent
beforeCut = unsafeEventName (toJSString "beforecut")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforeinput Mozilla DocumentAndElementEventHandlers.onbeforeinput documentation> 
beforeinput ::
            (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
              EventName self onbeforeinput
beforeinput = unsafeEventName (toJSString "beforeinput")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentAndElementEventHandlers.onbeforepaste Mozilla DocumentAndElementEventHandlers.onbeforepaste documentation> 
beforePaste ::
            (IsDocumentAndElementEventHandlers self, IsEventTarget self) =>
              EventName self ClipboardEvent
beforePaste = unsafeEventName (toJSString "beforepaste")