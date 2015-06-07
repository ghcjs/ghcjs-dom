{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.IDBKeyRange
       (js_only, only, js_lowerBound, lowerBound, js_upperBound,
        upperBound, js_bound, bound, js_getLower, getLower, js_getUpper,
        getUpper, js_getLowerOpen, getLowerOpen, js_getUpperOpen,
        getUpperOpen, IDBKeyRange, castToIDBKeyRange, gTypeIDBKeyRange)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"only\"]($2)" js_only ::
        JSRef IDBKeyRange -> JSRef a -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.only Mozilla IDBKeyRange.only documentation> 
only ::
     (MonadIO m) => IDBKeyRange -> JSRef a -> m (Maybe IDBKeyRange)
only self value
  = liftIO ((js_only (unIDBKeyRange self) value) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lowerBound\"]($2, $3)"
        js_lowerBound ::
        JSRef IDBKeyRange -> JSRef a -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerBound Mozilla IDBKeyRange.lowerBound documentation> 
lowerBound ::
           (MonadIO m) =>
             IDBKeyRange -> JSRef a -> Bool -> m (Maybe IDBKeyRange)
lowerBound self lower open
  = liftIO
      ((js_lowerBound (unIDBKeyRange self) lower open) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"upperBound\"]($2, $3)"
        js_upperBound ::
        JSRef IDBKeyRange -> JSRef a -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperBound Mozilla IDBKeyRange.upperBound documentation> 
upperBound ::
           (MonadIO m) =>
             IDBKeyRange -> JSRef a -> Bool -> m (Maybe IDBKeyRange)
upperBound self upper open
  = liftIO
      ((js_upperBound (unIDBKeyRange self) upper open) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"bound\"]($2, $3, $4, $5)"
        js_bound ::
        JSRef IDBKeyRange ->
          JSRef a -> JSRef a -> Bool -> Bool -> IO (JSRef IDBKeyRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.bound Mozilla IDBKeyRange.bound documentation> 
bound ::
      (MonadIO m) =>
        IDBKeyRange ->
          JSRef a -> JSRef a -> Bool -> Bool -> m (Maybe IDBKeyRange)
bound self lower upper lowerOpen upperOpen
  = liftIO
      ((js_bound (unIDBKeyRange self) lower upper lowerOpen upperOpen)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lower\"]" js_getLower ::
        JSRef IDBKeyRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lower Mozilla IDBKeyRange.lower documentation> 
getLower :: (MonadIO m) => IDBKeyRange -> m (JSRef a)
getLower self = liftIO (js_getLower (unIDBKeyRange self))
 
foreign import javascript unsafe "$1[\"upper\"]" js_getUpper ::
        JSRef IDBKeyRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upper Mozilla IDBKeyRange.upper documentation> 
getUpper :: (MonadIO m) => IDBKeyRange -> m (JSRef a)
getUpper self = liftIO (js_getUpper (unIDBKeyRange self))
 
foreign import javascript unsafe "($1[\"lowerOpen\"] ? 1 : 0)"
        js_getLowerOpen :: JSRef IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.lowerOpen Mozilla IDBKeyRange.lowerOpen documentation> 
getLowerOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getLowerOpen self = liftIO (js_getLowerOpen (unIDBKeyRange self))
 
foreign import javascript unsafe "($1[\"upperOpen\"] ? 1 : 0)"
        js_getUpperOpen :: JSRef IDBKeyRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBKeyRange.upperOpen Mozilla IDBKeyRange.upperOpen documentation> 
getUpperOpen :: (MonadIO m) => IDBKeyRange -> m Bool
getUpperOpen self = liftIO (js_getUpperOpen (unIDBKeyRange self))