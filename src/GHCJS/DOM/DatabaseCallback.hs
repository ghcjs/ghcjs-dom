{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DatabaseCallback
       (ghcjs_dom_database_callback_handle_event,
        databaseCallbackHandleEvent,
        ghcjs_dom_database_callback_handle_eventSync,
        databaseCallbackHandleEventSync, DatabaseCallback,
        IsDatabaseCallback, castToDatabaseCallback, gTypeDatabaseCallback,
        toDatabaseCallback)
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

 
foreign import javascript unsafe
        "($1[\"handleEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_database_callback_handle_event ::
        JSRef DatabaseCallback -> JSRef Database -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback.handleEvent Mozilla DatabaseCallback.handleEvent documentation> 
databaseCallbackHandleEvent ::
                            (IsDatabaseCallback self, IsDatabase database) =>
                              self -> Maybe database -> IO Bool
databaseCallbackHandleEvent self database
  = ghcjs_dom_database_callback_handle_event
      (unDatabaseCallback (toDatabaseCallback self))
      (maybe jsNull (unDatabase . toDatabase) database)
 
foreign import javascript unsafe
        "($1[\"handleEvent\"]($2) ? 1 : 0)"
        ghcjs_dom_database_callback_handle_eventSync ::
        JSRef DatabaseCallback -> JSRef DatabaseSync -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback.handleEventSync Mozilla DatabaseCallback.handleEventSync documentation> 
databaseCallbackHandleEventSync ::
                                (IsDatabaseCallback self, IsDatabaseSync database) =>
                                  self -> Maybe database -> IO Bool
databaseCallbackHandleEventSync self database
  = ghcjs_dom_database_callback_handle_eventSync
      (unDatabaseCallback (toDatabaseCallback self))
      (maybe jsNull (unDatabaseSync . toDatabaseSync) database)
#else
module GHCJS.DOM.DatabaseCallback (
  ) where
#endif
