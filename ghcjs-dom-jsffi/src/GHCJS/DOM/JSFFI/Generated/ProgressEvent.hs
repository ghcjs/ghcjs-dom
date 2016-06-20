{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ProgressEvent
       (js_getLengthComputable, getLengthComputable, js_getLoaded,
        getLoaded, js_getTotal, getTotal, ProgressEvent,
        castToProgressEvent, gTypeProgressEvent, IsProgressEvent,
        toProgressEvent)
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