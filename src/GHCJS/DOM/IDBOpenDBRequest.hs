{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBOpenDBRequest
       (idbOpenDBRequestOnblocked, idbOpenDBRequestOnupgradeneeded,
        IDBOpenDBRequest, IsIDBOpenDBRequest, castToIDBOpenDBRequest,
        gTypeIDBOpenDBRequest, toIDBOpenDBRequest)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onblocked Mozilla IDBOpenDBRequest.onblocked documentation> 
idbOpenDBRequestOnblocked ::
                          (IsIDBOpenDBRequest self) => Signal self (EventM UIEvent self ())
idbOpenDBRequestOnblocked = (connect "blocked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBOpenDBRequest.onupgradeneeded Mozilla IDBOpenDBRequest.onupgradeneeded documentation> 
idbOpenDBRequestOnupgradeneeded ::
                                (IsIDBOpenDBRequest self) => Signal self (EventM UIEvent self ())
idbOpenDBRequestOnupgradeneeded = (connect "upgradeneeded")
#else
module GHCJS.DOM.IDBOpenDBRequest (
  ) where
#endif
