{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.IDBKeyRange
       (js_only, only, only_, js_lowerBound, lowerBound, lowerBound_,
        js_upperBound, upperBound, upperBound_, js_bound, bound, bound_,
        js_includes, includes, includes_, js_getLower, getLower,
        js_getUpper, getUpper, js_getLowerOpen, getLowerOpen,
        js_getUpperOpen, getUpperOpen, IDBKeyRange(..), gTypeIDBKeyRange)
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
 
foreign import javascript safe "$1[\"only\"]($2)" js_only ::
        IDBKeyRange -> JSVal -> IO IDBKeyRange

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only ::
     (MonadIO m, ToJSVal value) => IDBKeyRange -> value -> m IDBKeyRange
only self value
  = liftIO (toJSVal value >>= \ value' -> js_only self value')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only_ :: (MonadIO m, ToJSVal value) => IDBKeyRange -> value -> m ()
only_ self value
  = liftIO (void (toJSVal value >>= \ value' -> js_only self value'))
 
foreign import javascript safe "$1[\"lowerBound\"]($2, $3)"
        js_lowerBound :: IDBKeyRange -> JSVal -> Bool -> IO IDBKeyRange

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound ::
           (MonadIO m, ToJSVal lower) =>
             IDBKeyRange -> lower -> Bool -> m IDBKeyRange
lowerBound self lower open
  = liftIO
      (toJSVal lower >>= \ lower' -> js_lowerBound self lower' open)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound_ ::
            (MonadIO m, ToJSVal lower) => IDBKeyRange -> lower -> Bool -> m ()
lowerBound_ self lower open
  = liftIO
      (void
         (toJSVal lower >>= \ lower' -> js_lowerBound self lower' open))
 
foreign import javascript safe "$1[\"upperBound\"]($2, $3)"
        js_upperBound :: IDBKeyRange -> JSVal -> Bool -> IO IDBKeyRange

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound ::
           (MonadIO m, ToJSVal upper) =>
             IDBKeyRange -> upper -> Bool -> m IDBKeyRange
upperBound self upper open
  = liftIO
      (toJSVal upper >>= \ upper' -> js_upperBound self upper' open)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound_ ::
            (MonadIO m, ToJSVal upper) => IDBKeyRange -> upper -> Bool -> m ()
upperBound_ self upper open
  = liftIO
      (void
         (toJSVal upper >>= \ upper' -> js_upperBound self upper' open))
 
foreign import javascript safe "$1[\"bound\"]($2, $3, $4, $5)"
        js_bound ::
        IDBKeyRange -> JSVal -> JSVal -> Bool -> Bool -> IO IDBKeyRange

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound ::
      (MonadIO m, ToJSVal lower, ToJSVal upper) =>
        IDBKeyRange -> lower -> upper -> Bool -> Bool -> m IDBKeyRange
bound self lower upper lowerOpen upperOpen
  = liftIO
      (toJSVal upper >>=
         \ upper' ->
           toJSVal lower >>= \ lower' -> js_bound self lower' upper'
         lowerOpen
         upperOpen)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound_ ::
       (MonadIO m, ToJSVal lower, ToJSVal upper) =>
         IDBKeyRange -> lower -> upper -> Bool -> Bool -> m ()
bound_ self lower upper lowerOpen upperOpen
  = liftIO
      (void
         (toJSVal upper >>=
            \ upper' ->
              toJSVal lower >>= \ lower' -> js_bound self lower' upper'
            lowerOpen
            upperOpen))
 
foreign import javascript safe "($1[\"includes\"]($2) ? 1 : 0)"
        js_includes :: IDBKeyRange -> JSVal -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.includes Mozilla IDBKeyRange.includes documentation> 
includes ::
         (MonadIO m, ToJSVal key) => IDBKeyRange -> key -> m Bool
includes self key
  = liftIO (toJSVal key >>= \ key' -> js_includes self key')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.includes Mozilla IDBKeyRange.includes documentation> 
includes_ :: (MonadIO m, ToJSVal key) => IDBKeyRange -> key -> m ()
includes_ self key
  = liftIO (void (toJSVal key >>= \ key' -> js_includes self key'))
 
foreign import javascript unsafe "$1[\"lower\"]" js_getLower ::
        IDBKeyRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lower Mozilla IDBKeyRange.lower documentation> 
getLower :: (MonadIO m) => IDBKeyRange -> m JSVal
getLower self = liftIO (js_getLower self)
 
foreign import javascript unsafe "$1[\"upper\"]" js_getUpper ::
        IDBKeyRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upper Mozilla IDBKeyRange.upper documentation> 
getUpper :: (MonadIO m) => IDBKeyRange -> m JSVal
getUpper self = liftIO (js_getUpper self)
 
foreign import javascript unsafe "($1[\"lowerOpen\"] ? 1 : 0)"
        js_getLowerOpen :: IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerOpen Mozilla IDBKeyRange.lowerOpen documentation> 
getLowerOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getLowerOpen self = liftIO (js_getLowerOpen self)
 
foreign import javascript unsafe "($1[\"upperOpen\"] ? 1 : 0)"
        js_getUpperOpen :: IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperOpen Mozilla IDBKeyRange.upperOpen documentation> 
getUpperOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getUpperOpen self = liftIO (js_getUpperOpen self)