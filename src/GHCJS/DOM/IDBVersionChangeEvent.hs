{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBVersionChangeEvent
       (ghcjs_dom_idb_version_change_event_get_old_version,
        idbVersionChangeEventGetOldVersion,
        ghcjs_dom_idb_version_change_event_get_new_version,
        idbVersionChangeEventGetNewVersion, IDBVersionChangeEvent,
        IsIDBVersionChangeEvent, castToIDBVersionChangeEvent,
        gTypeIDBVersionChangeEvent, toIDBVersionChangeEvent)
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

 
foreign import javascript unsafe "$1[\"oldVersion\"]"
        ghcjs_dom_idb_version_change_event_get_old_version ::
        JSRef IDBVersionChangeEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.oldVersion Mozilla IDBVersionChangeEvent.oldVersion documentation> 
idbVersionChangeEventGetOldVersion ::
                                   (IsIDBVersionChangeEvent self) => self -> IO Word64
idbVersionChangeEventGetOldVersion self
  = round <$>
      (ghcjs_dom_idb_version_change_event_get_old_version
         (unIDBVersionChangeEvent (toIDBVersionChangeEvent self)))
 
foreign import javascript unsafe "$1[\"newVersion\"]"
        ghcjs_dom_idb_version_change_event_get_new_version ::
        JSRef IDBVersionChangeEvent -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
idbVersionChangeEventGetNewVersion ::
                                   (IsIDBVersionChangeEvent self) => self -> IO (Maybe Word64)
idbVersionChangeEventGetNewVersion self
  = fmap round . pfromJSRef <$>
      (ghcjs_dom_idb_version_change_event_get_new_version
         (unIDBVersionChangeEvent (toIDBVersionChangeEvent self)))
#else
module GHCJS.DOM.IDBVersionChangeEvent (
  ) where
#endif
