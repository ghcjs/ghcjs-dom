{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DatabaseCallback
       (newDatabaseCallback, newDatabaseCallbackSync,
        newDatabaseCallbackAsync, DatabaseCallback)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallback ::
                    (MonadIO m) => (Maybe Database -> IO ()) -> m DatabaseCallback
newDatabaseCallback callback
  = liftIO
      (DatabaseCallback <$>
         syncCallback1 ThrowWouldBlock
           (\ database ->
              fromJSValUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackSync ::
                        (MonadIO m) => (Maybe Database -> IO ()) -> m DatabaseCallback
newDatabaseCallbackSync callback
  = liftIO
      (DatabaseCallback <$>
         syncCallback1 ContinueAsync
           (\ database ->
              fromJSValUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackAsync ::
                         (MonadIO m) => (Maybe Database -> IO ()) -> m DatabaseCallback
newDatabaseCallbackAsync callback
  = liftIO
      (DatabaseCallback <$>
         asyncCallback1
           (\ database ->
              fromJSValUnchecked database >>= \ database' -> callback database'))