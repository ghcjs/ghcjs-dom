{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBFactory
       (js_open, open, open_, js_deleteDatabase, deleteDatabase,
        deleteDatabase_, js_cmp, cmp, cmp_, IDBFactory(..),
        gTypeIDBFactory)
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
 
foreign import javascript safe "$1[\"open\"]($2, $3)" js_open ::
        IDBFactory -> JSString -> Optional Double -> IO IDBOpenDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadIO m, ToJSString name) =>
       IDBFactory -> name -> Maybe Word64 -> m IDBOpenDBRequest
open self name version
  = liftIO
      (js_open self (toJSString name)
         (maybeToOptional (fmap fromIntegral version)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open_ ::
      (MonadIO m, ToJSString name) =>
        IDBFactory -> name -> Maybe Word64 -> m ()
open_ self name version
  = liftIO
      (void
         (js_open self (toJSString name)
            (maybeToOptional (fmap fromIntegral version))))
 
foreign import javascript safe "$1[\"deleteDatabase\"]($2)"
        js_deleteDatabase :: IDBFactory -> JSString -> IO IDBOpenDBRequest

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadIO m, ToJSString name) =>
                 IDBFactory -> name -> m IDBOpenDBRequest
deleteDatabase self name
  = liftIO (js_deleteDatabase self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase_ ::
                (MonadIO m, ToJSString name) => IDBFactory -> name -> m ()
deleteDatabase_ self name
  = liftIO (void (js_deleteDatabase self (toJSString name)))
 
foreign import javascript safe "$1[\"cmp\"]($2, $3)" js_cmp ::
        IDBFactory -> JSVal -> JSVal -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp ::
    (MonadIO m, ToJSVal first, ToJSVal second) =>
      IDBFactory -> first -> second -> m Int
cmp self first second
  = liftIO
      (toJSVal second >>=
         \ second' ->
           toJSVal first >>= \ first' -> js_cmp self first' second')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp_ ::
     (MonadIO m, ToJSVal first, ToJSVal second) =>
       IDBFactory -> first -> second -> m ()
cmp_ self first second
  = liftIO
      (void
         (toJSVal second >>=
            \ second' ->
              toJSVal first >>= \ first' -> js_cmp self first' second'))