{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBCursor
       (ghcjs_dom_idb_cursor_update, idbCursorUpdate,
        ghcjs_dom_idb_cursor_advance, idbCursorAdvance,
        ghcjs_dom_idb_cursor_continue, idbCursorContinue,
        ghcjs_dom_idb_cursor_delete, idbCursorDelete,
        ghcjs_dom_idb_cursor_get_source, idbCursorGetSource,
        ghcjs_dom_idb_cursor_get_direction, idbCursorGetDirection,
        ghcjs_dom_idb_cursor_get_key, idbCursorGetKey,
        ghcjs_dom_idb_cursor_get_primary_key, idbCursorGetPrimaryKey,
        IDBCursor, IsIDBCursor, castToIDBCursor, gTypeIDBCursor,
        toIDBCursor)
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

 
foreign import javascript unsafe "$1[\"update\"]($2)"
        ghcjs_dom_idb_cursor_update ::
        JSRef IDBCursor -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
idbCursorUpdate ::
                (IsIDBCursor self) => self -> JSRef a -> IO (Maybe IDBRequest)
idbCursorUpdate self value
  = (ghcjs_dom_idb_cursor_update (unIDBCursor (toIDBCursor self))
       value)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"advance\"]($2)"
        ghcjs_dom_idb_cursor_advance :: JSRef IDBCursor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
idbCursorAdvance :: (IsIDBCursor self) => self -> Word -> IO ()
idbCursorAdvance self count
  = ghcjs_dom_idb_cursor_advance (unIDBCursor (toIDBCursor self))
      count
 
foreign import javascript unsafe "$1[\"continue\"]($2)"
        ghcjs_dom_idb_cursor_continue ::
        JSRef IDBCursor -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
idbCursorContinue :: (IsIDBCursor self) => self -> JSRef a -> IO ()
idbCursorContinue self key
  = ghcjs_dom_idb_cursor_continue (unIDBCursor (toIDBCursor self))
      key
 
foreign import javascript unsafe "$1[\"delete\"]()"
        ghcjs_dom_idb_cursor_delete ::
        JSRef IDBCursor -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
idbCursorDelete ::
                (IsIDBCursor self) => self -> IO (Maybe IDBRequest)
idbCursorDelete self
  = (ghcjs_dom_idb_cursor_delete (unIDBCursor (toIDBCursor self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"source\"]"
        ghcjs_dom_idb_cursor_get_source ::
        JSRef IDBCursor -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
idbCursorGetSource ::
                   (IsIDBCursor self) => self -> IO (Maybe IDBAny)
idbCursorGetSource self
  = (ghcjs_dom_idb_cursor_get_source
       (unIDBCursor (toIDBCursor self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_idb_cursor_get_direction ::
        JSRef IDBCursor -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
idbCursorGetDirection ::
                      (IsIDBCursor self, FromJSString result) => self -> IO result
idbCursorGetDirection self
  = fromJSString <$>
      (ghcjs_dom_idb_cursor_get_direction
         (unIDBCursor (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"key\"]"
        ghcjs_dom_idb_cursor_get_key :: JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.key Mozilla IDBCursor.key documentation> 
idbCursorGetKey :: (IsIDBCursor self) => self -> IO (JSRef a)
idbCursorGetKey self
  = ghcjs_dom_idb_cursor_get_key (unIDBCursor (toIDBCursor self))
 
foreign import javascript unsafe "$1[\"primaryKey\"]"
        ghcjs_dom_idb_cursor_get_primary_key ::
        JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.primaryKey Mozilla IDBCursor.primaryKey documentation> 
idbCursorGetPrimaryKey ::
                       (IsIDBCursor self) => self -> IO (JSRef a)
idbCursorGetPrimaryKey self
  = ghcjs_dom_idb_cursor_get_primary_key
      (unIDBCursor (toIDBCursor self))
#else
module GHCJS.DOM.IDBCursor (
  ) where
#endif
