{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CommandLineAPIHost
       (js_clearConsoleMessages, clearConsoleMessages, js_copyText,
        copyText, js_inspect, inspect, js_inspectedObject, inspectedObject,
        inspectedObject_, js_getEventListeners, getEventListeners,
        getEventListeners_, js_databaseId, databaseId, databaseId_,
        js_storageId, storageId, storageId_, CommandLineAPIHost(..),
        gTypeCommandLineAPIHost)
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
 
foreign import javascript unsafe "$1[\"clearConsoleMessages\"]()"
        js_clearConsoleMessages :: CommandLineAPIHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.clearConsoleMessages Mozilla CommandLineAPIHost.clearConsoleMessages documentation> 
clearConsoleMessages :: (MonadIO m) => CommandLineAPIHost -> m ()
clearConsoleMessages self = liftIO (js_clearConsoleMessages self)
 
foreign import javascript unsafe "$1[\"copyText\"]($2)" js_copyText
        :: CommandLineAPIHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.copyText Mozilla CommandLineAPIHost.copyText documentation> 
copyText ::
         (MonadIO m, ToJSString text) => CommandLineAPIHost -> text -> m ()
copyText self text = liftIO (js_copyText self (toJSString text))
 
foreign import javascript unsafe "$1[\"inspect\"]($2, $3)"
        js_inspect :: CommandLineAPIHost -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspect Mozilla CommandLineAPIHost.inspect documentation> 
inspect ::
        (MonadIO m, ToJSVal objectId, ToJSVal hints) =>
          CommandLineAPIHost -> objectId -> hints -> m ()
inspect self objectId hints
  = liftIO
      (toJSVal hints >>=
         \ hints' ->
           toJSVal objectId >>= \ objectId' -> js_inspect self objectId'
             hints')
 
foreign import javascript unsafe "$1[\"inspectedObject\"]()"
        js_inspectedObject :: CommandLineAPIHost -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspectedObject Mozilla CommandLineAPIHost.inspectedObject documentation> 
inspectedObject :: (MonadIO m) => CommandLineAPIHost -> m JSVal
inspectedObject self = liftIO (js_inspectedObject self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspectedObject Mozilla CommandLineAPIHost.inspectedObject documentation> 
inspectedObject_ :: (MonadIO m) => CommandLineAPIHost -> m ()
inspectedObject_ self = liftIO (void (js_inspectedObject self))
 
foreign import javascript unsafe "$1[\"getEventListeners\"]($2)"
        js_getEventListeners :: CommandLineAPIHost -> Node -> IO Array

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.getEventListeners Mozilla CommandLineAPIHost.getEventListeners documentation> 
getEventListeners ::
                  (MonadIO m, IsNode node) => CommandLineAPIHost -> node -> m Array
getEventListeners self node
  = liftIO (js_getEventListeners self (toNode node))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.getEventListeners Mozilla CommandLineAPIHost.getEventListeners documentation> 
getEventListeners_ ::
                   (MonadIO m, IsNode node) => CommandLineAPIHost -> node -> m ()
getEventListeners_ self node
  = liftIO (void (js_getEventListeners self (toNode node)))
 
foreign import javascript unsafe "$1[\"databaseId\"]($2)"
        js_databaseId :: CommandLineAPIHost -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.databaseId Mozilla CommandLineAPIHost.databaseId documentation> 
databaseId ::
           (MonadIO m, ToJSVal database, FromJSString result) =>
             CommandLineAPIHost -> database -> m result
databaseId self database
  = liftIO
      (fromJSString <$>
         (toJSVal database >>= \ database' -> js_databaseId self database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.databaseId Mozilla CommandLineAPIHost.databaseId documentation> 
databaseId_ ::
            (MonadIO m, ToJSVal database) =>
              CommandLineAPIHost -> database -> m ()
databaseId_ self database
  = liftIO
      (void
         (toJSVal database >>= \ database' -> js_databaseId self database'))
 
foreign import javascript unsafe "$1[\"storageId\"]($2)"
        js_storageId :: CommandLineAPIHost -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.storageId Mozilla CommandLineAPIHost.storageId documentation> 
storageId ::
          (MonadIO m, ToJSVal storage, FromJSString result) =>
            CommandLineAPIHost -> storage -> m result
storageId self storage
  = liftIO
      (fromJSString <$>
         (toJSVal storage >>= \ storage' -> js_storageId self storage'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.storageId Mozilla CommandLineAPIHost.storageId documentation> 
storageId_ ::
           (MonadIO m, ToJSVal storage) =>
             CommandLineAPIHost -> storage -> m ()
storageId_ self storage
  = liftIO
      (void
         (toJSVal storage >>= \ storage' -> js_storageId self storage'))