{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceObserverEntryList
       (js_getEntries, getEntries, getEntries_, js_getEntriesByType,
        getEntriesByType, getEntriesByType_, js_getEntriesByName,
        getEntriesByName, getEntriesByName_,
        PerformanceObserverEntryList(..),
        gTypePerformanceObserverEntryList)
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
 
foreign import javascript unsafe "$1[\"getEntries\"]()"
        js_getEntries :: PerformanceObserverEntryList -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntries Mozilla PerformanceObserverEntryList.getEntries documentation> 
getEntries ::
           (MonadIO m) =>
             PerformanceObserverEntryList -> m PerformanceEntryList
getEntries self
  = liftIO ((js_getEntries self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntries Mozilla PerformanceObserverEntryList.getEntries documentation> 
getEntries_ :: (MonadIO m) => PerformanceObserverEntryList -> m ()
getEntries_ self = liftIO (void (js_getEntries self))
 
foreign import javascript unsafe "$1[\"getEntriesByType\"]($2)"
        js_getEntriesByType ::
        PerformanceObserverEntryList -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByType Mozilla PerformanceObserverEntryList.getEntriesByType documentation> 
getEntriesByType ::
                 (MonadIO m, ToJSString type') =>
                   PerformanceObserverEntryList -> type' -> m PerformanceEntryList
getEntriesByType self type'
  = liftIO
      ((js_getEntriesByType self (toJSString type')) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByType Mozilla PerformanceObserverEntryList.getEntriesByType documentation> 
getEntriesByType_ ::
                  (MonadIO m, ToJSString type') =>
                    PerformanceObserverEntryList -> type' -> m ()
getEntriesByType_ self type'
  = liftIO (void (js_getEntriesByType self (toJSString type')))
 
foreign import javascript unsafe "$1[\"getEntriesByName\"]($2, $3)"
        js_getEntriesByName ::
        PerformanceObserverEntryList ->
          JSString -> Optional JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByName Mozilla PerformanceObserverEntryList.getEntriesByName documentation> 
getEntriesByName ::
                 (MonadIO m, ToJSString name, ToJSString type') =>
                   PerformanceObserverEntryList ->
                     name -> Maybe type' -> m PerformanceEntryList
getEntriesByName self name type'
  = liftIO
      ((js_getEntriesByName self (toJSString name)
          (toOptionalJSString type'))
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceObserverEntryList.getEntriesByName Mozilla PerformanceObserverEntryList.getEntriesByName documentation> 
getEntriesByName_ ::
                  (MonadIO m, ToJSString name, ToJSString type') =>
                    PerformanceObserverEntryList -> name -> Maybe type' -> m ()
getEntriesByName_ self name type'
  = liftIO
      (void
         (js_getEntriesByName self (toJSString name)
            (toOptionalJSString type')))