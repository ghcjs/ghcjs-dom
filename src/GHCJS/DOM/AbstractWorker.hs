{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.AbstractWorker
       (abstractWorkerOnerror, AbstractWorker, IsAbstractWorker,
        castToAbstractWorker, gTypeAbstractWorker, toAbstractWorker)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/AbstractWorker.onerror Mozilla AbstractWorker.onerror documentation> 
abstractWorkerOnerror ::
                      (IsAbstractWorker self) => Signal self (EventM UIEvent self ())
abstractWorkerOnerror = (connect "error")
#else
module GHCJS.DOM.AbstractWorker (
  ) where
#endif
