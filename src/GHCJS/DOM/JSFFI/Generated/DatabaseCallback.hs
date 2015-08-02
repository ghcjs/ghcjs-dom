{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DatabaseCallback
       (newDatabaseCallback, newDatabaseCallbackSync,
        newDatabaseCallbackAsync, DatabaseCallback)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
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
      (syncCallback1 ThrowWouldBlock
         (\ database ->
            fromJSRefUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackSync ::
                        (MonadIO m) => (Maybe Database -> IO ()) -> m DatabaseCallback
newDatabaseCallbackSync callback
  = liftIO
      (syncCallback1 ContinueAsync
         (\ database ->
            fromJSRefUnchecked database >>= \ database' -> callback database'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DatabaseCallback Mozilla DatabaseCallback documentation> 
newDatabaseCallbackAsync ::
                         (MonadIO m) => (Maybe Database -> IO ()) -> m DatabaseCallback
newDatabaseCallbackAsync callback
  = liftIO
      (asyncCallback1
         (\ database ->
            fromJSRefUnchecked database >>= \ database' -> callback database'))