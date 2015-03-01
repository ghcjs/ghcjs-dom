{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DatabaseCallback
       (newDatabaseCallbackSync, newDatabaseCallbackSync',
        newDatabaseCallbackAsync, newDatabaseCallbackAsync',
        DatabaseCallback, castToDatabaseCallback, gTypeDatabaseCallback)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackSync ::
                        (MonadIO m) => (Maybe Database -> IO Bool) -> m DatabaseCallback
newDatabaseCallbackSync callback
  = liftIO
      (DatabaseCallback . castRef <$>
         syncCallback1 AlwaysRetain True
           (\ database ->
              fromJSRefUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackSync' ::
                         (MonadIO m) =>
                           ForeignRetention ->
                             Bool -> (Maybe Database -> IO Bool) -> m DatabaseCallback
newDatabaseCallbackSync' retention continueAsync callback
  = liftIO
      (DatabaseCallback . castRef <$>
         syncCallback1 retention continueAsync
           (\ database ->
              fromJSRefUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackAsync ::
                         (MonadIO m) => (Maybe Database -> IO Bool) -> m DatabaseCallback
newDatabaseCallbackAsync callback
  = liftIO
      (DatabaseCallback . castRef <$>
         asyncCallback1 AlwaysRetain
           (\ database ->
              fromJSRefUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackAsync' ::
                          (MonadIO m) =>
                            ForeignRetention ->
                              (Maybe Database -> IO Bool) -> m DatabaseCallback
newDatabaseCallbackAsync' retention callback
  = liftIO
      (DatabaseCallback . castRef <$>
         asyncCallback1 retention
           (\ database ->
              fromJSRefUnchecked database >>= \ database' -> callback database'))
#else
module GHCJS.DOM.DatabaseCallback (
  ) where
#endif
