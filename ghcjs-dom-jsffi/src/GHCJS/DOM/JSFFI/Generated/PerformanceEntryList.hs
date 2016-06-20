{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PerformanceEntryList
       (js_item, item, js_getLength, getLength, PerformanceEntryList,
        castToPerformanceEntryList, gTypePerformanceEntryList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        PerformanceEntryList -> Word -> IO (Nullable PerformanceEntry)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.item Mozilla PerformanceEntryList.item documentation> 
item ::
     (MonadIO m) =>
       PerformanceEntryList -> Word -> m (Maybe PerformanceEntry)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        PerformanceEntryList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceEntryList.length Mozilla PerformanceEntryList.length documentation> 
getLength :: (MonadIO m) => PerformanceEntryList -> m Word
getLength self = liftIO (js_getLength (self))