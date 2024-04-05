{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TimeRanges
       (js_start, start, start_, js_end, end, end_, js_getLength,
        getLength, TimeRanges(..), gTypeTimeRanges)
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
 
foreign import javascript safe "$1[\"start\"]($2)" js_start ::
        TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
start :: (MonadIO m) => TimeRanges -> Word -> m Double
start self index = liftIO (js_start self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.start Mozilla TimeRanges.start documentation> 
start_ :: (MonadIO m) => TimeRanges -> Word -> m ()
start_ self index = liftIO (void (js_start self index))
 
foreign import javascript safe "$1[\"end\"]($2)" js_end ::
        TimeRanges -> Word -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
end :: (MonadIO m) => TimeRanges -> Word -> m Double
end self index = liftIO (js_end self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.end Mozilla TimeRanges.end documentation> 
end_ :: (MonadIO m) => TimeRanges -> Word -> m ()
end_ self index = liftIO (void (js_end self index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        TimeRanges -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TimeRanges.length Mozilla TimeRanges.length documentation> 
getLength :: (MonadIO m) => TimeRanges -> m Word
getLength self = liftIO (js_getLength self)