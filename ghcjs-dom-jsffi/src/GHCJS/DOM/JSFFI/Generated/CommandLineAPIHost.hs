{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CommandLineAPIHost
       (js_clearConsoleMessages, clearConsoleMessages, js_copyText,
        copyText, js_inspect, inspect, js_inspectedObject, inspectedObject,
        js_getEventListeners, getEventListeners, js_databaseId, databaseId,
        js_storageId, storageId, CommandLineAPIHost,
        castToCommandLineAPIHost, gTypeCommandLineAPIHost)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"clearConsoleMessages\"]()"
        js_clearConsoleMessages :: CommandLineAPIHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.clearConsoleMessages Mozilla CommandLineAPIHost.clearConsoleMessages documentation> 
clearConsoleMessages :: (MonadIO m) => CommandLineAPIHost -> m ()
clearConsoleMessages self = liftIO (js_clearConsoleMessages (self))
 
foreign import javascript unsafe "$1[\"copyText\"]($2)" js_copyText
        :: CommandLineAPIHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.copyText Mozilla CommandLineAPIHost.copyText documentation> 
copyText ::
         (MonadIO m, ToJSString text) => CommandLineAPIHost -> text -> m ()
copyText self text = liftIO (js_copyText (self) (toJSString text))
 
foreign import javascript unsafe "$1[\"inspect\"]($2, $3)"
        js_inspect :: CommandLineAPIHost -> JSVal -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspect Mozilla CommandLineAPIHost.inspect documentation> 
inspect ::
        (MonadIO m) => CommandLineAPIHost -> JSVal -> JSVal -> m ()
inspect self objectId hints
  = liftIO (js_inspect (self) objectId hints)
 
foreign import javascript unsafe "$1[\"inspectedObject\"]($2)"
        js_inspectedObject :: CommandLineAPIHost -> Int -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspectedObject Mozilla CommandLineAPIHost.inspectedObject documentation> 
inspectedObject ::
                (MonadIO m) => CommandLineAPIHost -> Int -> m JSVal
inspectedObject self num = liftIO (js_inspectedObject (self) num)
 
foreign import javascript unsafe "$1[\"getEventListeners\"]($2)"
        js_getEventListeners ::
        CommandLineAPIHost -> Nullable Node -> IO (Nullable Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.getEventListeners Mozilla CommandLineAPIHost.getEventListeners documentation> 
getEventListeners ::
                  (MonadIO m, IsNode node) =>
                    CommandLineAPIHost -> Maybe node -> m (Maybe Array)
getEventListeners self node
  = liftIO
      (nullableToMaybe <$>
         (js_getEventListeners (self) (maybeToNullable (fmap toNode node))))
 
foreign import javascript unsafe "$1[\"databaseId\"]($2)"
        js_databaseId :: CommandLineAPIHost -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.databaseId Mozilla CommandLineAPIHost.databaseId documentation> 
databaseId ::
           (MonadIO m, FromJSString result) =>
             CommandLineAPIHost -> JSVal -> m result
databaseId self database
  = liftIO (fromJSString <$> (js_databaseId (self) database))
 
foreign import javascript unsafe "$1[\"storageId\"]($2)"
        js_storageId :: CommandLineAPIHost -> JSVal -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.storageId Mozilla CommandLineAPIHost.storageId documentation> 
storageId ::
          (MonadIO m, FromJSString result) =>
            CommandLineAPIHost -> JSVal -> m result
storageId self storage
  = liftIO (fromJSString <$> (js_storageId (self) storage))