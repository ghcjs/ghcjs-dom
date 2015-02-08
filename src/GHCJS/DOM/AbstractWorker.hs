{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AbstractWorker
       (abstractWorkerError, AbstractWorker, IsAbstractWorker,
        castToAbstractWorker, gTypeAbstractWorker, toAbstractWorker)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractWorker.error Mozilla AbstractWorker.error documentation> 
abstractWorkerError ::
                    (IsAbstractWorker self, IsEventTarget self) =>
                      EventName self UIEvent
abstractWorkerError = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.AbstractWorker (
  ) where
#endif
