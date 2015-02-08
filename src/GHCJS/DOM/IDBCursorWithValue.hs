{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBCursorWithValue
       (ghcjs_dom_idb_cursor_with_value_get_value,
        idbCursorWithValueGetValue, IDBCursorWithValue,
        IsIDBCursorWithValue, castToIDBCursorWithValue,
        gTypeIDBCursorWithValue, toIDBCursorWithValue)
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

 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_idb_cursor_with_value_get_value ::
        JSRef IDBCursorWithValue -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursorWithValue.value Mozilla IDBCursorWithValue.value documentation> 
idbCursorWithValueGetValue ::
                           (MonadIO m, IsIDBCursorWithValue self) => self -> m (JSRef a)
idbCursorWithValueGetValue self
  = liftIO
      (ghcjs_dom_idb_cursor_with_value_get_value
         (unIDBCursorWithValue (toIDBCursorWithValue self)))
#else
module GHCJS.DOM.IDBCursorWithValue (
  ) where
#endif
