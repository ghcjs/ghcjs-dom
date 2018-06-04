{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ProgressEvent
       (js_newProgressEvent, newProgressEvent, js_getLengthComputable,
        getLengthComputable, js_getLoaded, getLoaded, js_getTotal,
        getTotal, ProgressEvent(..), gTypeProgressEvent, IsProgressEvent,
        toProgressEvent)
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
 
foreign import javascript unsafe
        "new window[\"ProgressEvent\"]($1,\n$2)" js_newProgressEvent ::
        JSString -> Optional ProgressEventInit -> IO ProgressEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent Mozilla ProgressEvent documentation> 
newProgressEvent ::
                 (MonadIO m, ToJSString type') =>
                   type' -> Maybe ProgressEventInit -> m ProgressEvent
newProgressEvent type' eventInitDict
  = liftIO
      (js_newProgressEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "($1[\"lengthComputable\"] ? 1 : 0)" js_getLengthComputable ::
        ProgressEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.lengthComputable Mozilla ProgressEvent.lengthComputable documentation> 
getLengthComputable ::
                    (MonadIO m, IsProgressEvent self) => self -> m Bool
getLengthComputable self
  = liftIO (js_getLengthComputable (toProgressEvent self))
 
foreign import javascript unsafe "$1[\"loaded\"]" js_getLoaded ::
        ProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.loaded Mozilla ProgressEvent.loaded documentation> 
getLoaded :: (MonadIO m, IsProgressEvent self) => self -> m Word64
getLoaded self
  = liftIO (round <$> (js_getLoaded (toProgressEvent self)))
 
foreign import javascript unsafe "$1[\"total\"]" js_getTotal ::
        ProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent.total Mozilla ProgressEvent.total documentation> 
getTotal :: (MonadIO m, IsProgressEvent self) => self -> m Word64
getTotal self
  = liftIO (round <$> (js_getTotal (toProgressEvent self)))