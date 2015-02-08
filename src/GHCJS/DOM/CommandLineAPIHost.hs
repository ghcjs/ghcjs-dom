{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CommandLineAPIHost
       (ghcjs_dom_command_line_api_host_clear_console_messages,
        commandLineAPIHostClearConsoleMessages,
        ghcjs_dom_command_line_api_host_copy_text,
        commandLineAPIHostCopyText,
        ghcjs_dom_command_line_api_host_inspect, commandLineAPIHostInspect,
        ghcjs_dom_command_line_api_host_inspected_object,
        commandLineAPIHostInspectedObject,
        ghcjs_dom_command_line_api_host_get_event_listeners,
        commandLineAPIHostGetEventListeners,
        ghcjs_dom_command_line_api_host_database_id,
        commandLineAPIHostDatabaseId,
        ghcjs_dom_command_line_api_host_storage_id,
        commandLineAPIHostStorageId, CommandLineAPIHost,
        IsCommandLineAPIHost, castToCommandLineAPIHost,
        gTypeCommandLineAPIHost, toCommandLineAPIHost)
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

 
foreign import javascript unsafe "$1[\"clearConsoleMessages\"]()"
        ghcjs_dom_command_line_api_host_clear_console_messages ::
        JSRef CommandLineAPIHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.clearConsoleMessages Mozilla CommandLineAPIHost.clearConsoleMessages documentation> 
commandLineAPIHostClearConsoleMessages ::
                                       (MonadIO m, IsCommandLineAPIHost self) => self -> m ()
commandLineAPIHostClearConsoleMessages self
  = liftIO
      (ghcjs_dom_command_line_api_host_clear_console_messages
         (unCommandLineAPIHost (toCommandLineAPIHost self)))
 
foreign import javascript unsafe "$1[\"copyText\"]($2)"
        ghcjs_dom_command_line_api_host_copy_text ::
        JSRef CommandLineAPIHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.copyText Mozilla CommandLineAPIHost.copyText documentation> 
commandLineAPIHostCopyText ::
                           (MonadIO m, IsCommandLineAPIHost self, ToJSString text) =>
                             self -> text -> m ()
commandLineAPIHostCopyText self text
  = liftIO
      (ghcjs_dom_command_line_api_host_copy_text
         (unCommandLineAPIHost (toCommandLineAPIHost self))
         (toJSString text))
 
foreign import javascript unsafe "$1[\"inspect\"]($2, $3)"
        ghcjs_dom_command_line_api_host_inspect ::
        JSRef CommandLineAPIHost -> JSRef a -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspect Mozilla CommandLineAPIHost.inspect documentation> 
commandLineAPIHostInspect ::
                          (MonadIO m, IsCommandLineAPIHost self) =>
                            self -> JSRef a -> JSRef a -> m ()
commandLineAPIHostInspect self objectId hints
  = liftIO
      (ghcjs_dom_command_line_api_host_inspect
         (unCommandLineAPIHost (toCommandLineAPIHost self))
         objectId
         hints)
 
foreign import javascript unsafe "$1[\"inspectedObject\"]($2)"
        ghcjs_dom_command_line_api_host_inspected_object ::
        JSRef CommandLineAPIHost -> Int -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.inspectedObject Mozilla CommandLineAPIHost.inspectedObject documentation> 
commandLineAPIHostInspectedObject ::
                                  (MonadIO m, IsCommandLineAPIHost self) =>
                                    self -> Int -> m (JSRef a)
commandLineAPIHostInspectedObject self num
  = liftIO
      (ghcjs_dom_command_line_api_host_inspected_object
         (unCommandLineAPIHost (toCommandLineAPIHost self))
         num)
 
foreign import javascript unsafe "$1[\"getEventListeners\"]($2)"
        ghcjs_dom_command_line_api_host_get_event_listeners ::
        JSRef CommandLineAPIHost -> JSRef Node -> IO (JSRef Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.eventListeners Mozilla CommandLineAPIHost.eventListeners documentation> 
commandLineAPIHostGetEventListeners ::
                                    (MonadIO m, IsCommandLineAPIHost self, IsNode node) =>
                                      self -> Maybe node -> m (Maybe Array)
commandLineAPIHostGetEventListeners self node
  = liftIO
      ((ghcjs_dom_command_line_api_host_get_event_listeners
          (unCommandLineAPIHost (toCommandLineAPIHost self))
          (maybe jsNull (unNode . toNode) node))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"databaseId\"]($2)"
        ghcjs_dom_command_line_api_host_database_id ::
        JSRef CommandLineAPIHost -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.databaseId Mozilla CommandLineAPIHost.databaseId documentation> 
commandLineAPIHostDatabaseId ::
                             (MonadIO m, IsCommandLineAPIHost self, FromJSString result) =>
                               self -> JSRef a -> m result
commandLineAPIHostDatabaseId self database
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_command_line_api_host_database_id
            (unCommandLineAPIHost (toCommandLineAPIHost self))
            database))
 
foreign import javascript unsafe "$1[\"storageId\"]($2)"
        ghcjs_dom_command_line_api_host_storage_id ::
        JSRef CommandLineAPIHost -> JSRef a -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CommandLineAPIHost.storageId Mozilla CommandLineAPIHost.storageId documentation> 
commandLineAPIHostStorageId ::
                            (MonadIO m, IsCommandLineAPIHost self, FromJSString result) =>
                              self -> JSRef a -> m result
commandLineAPIHostStorageId self storage
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_command_line_api_host_storage_id
            (unCommandLineAPIHost (toCommandLineAPIHost self))
            storage))
#else
module GHCJS.DOM.CommandLineAPIHost (
  ) where
#endif
