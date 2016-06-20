{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBFactory
       (js_open, open, js_deleteDatabase, deleteDatabase, js_cmp, cmp,
        IDBFactory, castToIDBFactory, gTypeIDBFactory)
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
 
foreign import javascript unsafe "$1[\"open\"]($2, $3)" js_open ::
        IDBFactory -> JSString -> Double -> IO (Nullable IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadIO m, ToJSString name) =>
       IDBFactory -> name -> Word64 -> m (Maybe IDBOpenDBRequest)
open self name version
  = liftIO
      (nullableToMaybe <$>
         (js_open (self) (toJSString name) (fromIntegral version)))
 
foreign import javascript unsafe "$1[\"deleteDatabase\"]($2)"
        js_deleteDatabase ::
        IDBFactory -> JSString -> IO (Nullable IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadIO m, ToJSString name) =>
                 IDBFactory -> name -> m (Maybe IDBOpenDBRequest)
deleteDatabase self name
  = liftIO
      (nullableToMaybe <$> (js_deleteDatabase (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"cmp\"]($2, $3)" js_cmp ::
        IDBFactory -> JSVal -> JSVal -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp :: (MonadIO m) => IDBFactory -> JSVal -> JSVal -> m Int
cmp self first second = liftIO (js_cmp (self) first second)