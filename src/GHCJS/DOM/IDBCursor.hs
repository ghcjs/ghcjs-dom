{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBCursor
       (js_update, update, js_advance, advance, js_continue, continue,
        js_delete, delete, js_getSource, getSource, js_getDirection,
        getDirection, js_getKey, getKey, js_getPrimaryKey, getPrimaryKey,
        IDBCursor, castToIDBCursor, gTypeIDBCursor, IsIDBCursor,
        toIDBCursor)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"update\"]($2)" js_update ::
        JSRef IDBCursor -> JSRef a -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.update Mozilla IDBCursor.update documentation> 
update ::
       (MonadIO m, IsIDBCursor self) =>
         self -> JSRef a -> m (Maybe IDBRequest)
update self value
  = liftIO
      ((js_update (unIDBCursor (toIDBCursor self)) value) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"advance\"]($2)" js_advance
        :: JSRef IDBCursor -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.advance Mozilla IDBCursor.advance documentation> 
advance :: (MonadIO m, IsIDBCursor self) => self -> Word -> m ()
advance self count
  = liftIO (js_advance (unIDBCursor (toIDBCursor self)) count)
 
foreign import javascript unsafe "$1[\"continue\"]($2)" js_continue
        :: JSRef IDBCursor -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.continue Mozilla IDBCursor.continue documentation> 
continue ::
         (MonadIO m, IsIDBCursor self) => self -> JSRef a -> m ()
continue self key
  = liftIO (js_continue (unIDBCursor (toIDBCursor self)) key)
 
foreign import javascript unsafe "$1[\"delete\"]()" js_delete ::
        JSRef IDBCursor -> IO (JSRef IDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.delete Mozilla IDBCursor.delete documentation> 
delete ::
       (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBRequest)
delete self
  = liftIO
      ((js_delete (unIDBCursor (toIDBCursor self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"source\"]" js_getSource ::
        JSRef IDBCursor -> IO (JSRef IDBAny)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.source Mozilla IDBCursor.source documentation> 
getSource ::
          (MonadIO m, IsIDBCursor self) => self -> m (Maybe IDBAny)
getSource self
  = liftIO
      ((js_getSource (unIDBCursor (toIDBCursor self))) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: JSRef IDBCursor -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.direction Mozilla IDBCursor.direction documentation> 
getDirection ::
             (MonadIO m, IsIDBCursor self, FromJSString result) =>
               self -> m result
getDirection self
  = liftIO
      (fromJSString <$>
         (js_getDirection (unIDBCursor (toIDBCursor self))))
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.key Mozilla IDBCursor.key documentation> 
getKey :: (MonadIO m, IsIDBCursor self) => self -> m (JSRef a)
getKey self = liftIO (js_getKey (unIDBCursor (toIDBCursor self)))
 
foreign import javascript unsafe "$1[\"primaryKey\"]"
        js_getPrimaryKey :: JSRef IDBCursor -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBCursor.primaryKey Mozilla IDBCursor.primaryKey documentation> 
getPrimaryKey ::
              (MonadIO m, IsIDBCursor self) => self -> m (JSRef a)
getPrimaryKey self
  = liftIO (js_getPrimaryKey (unIDBCursor (toIDBCursor self)))
#else
module GHCJS.DOM.IDBCursor (
  ) where
#endif
