{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DataCue
       (js_newDataCue, newDataCue, js_newDataCue', newDataCue',
        js_setData, setData, js_getData, getData, js_setValue, setValue,
        js_getValue, getValue, js_getType, getType, DataCue(..),
        gTypeDataCue)
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
        "new window[\"WebKitDataCue\"]($1,\n$2, $3)" js_newDataCue ::
        Double -> Double -> ArrayBuffer -> IO DataCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue ::
           (MonadIO m, IsArrayBuffer data') =>
             Double -> Double -> data' -> m DataCue
newDataCue startTime endTime data'
  = liftIO (js_newDataCue startTime endTime (toArrayBuffer data'))
 
foreign import javascript unsafe
        "new window[\"WebKitDataCue\"]($1,\n$2, $3, $4)" js_newDataCue' ::
        Double -> Double -> JSVal -> Optional JSString -> IO DataCue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue Mozilla WebKitDataCue documentation> 
newDataCue' ::
            (MonadIO m, ToJSVal value, ToJSString type') =>
              Double -> Double -> value -> Maybe type' -> m DataCue
newDataCue' startTime endTime value type'
  = liftIO
      (toJSVal value >>=
         \ value' -> js_newDataCue' startTime endTime value'
         (toOptionalJSString type'))
 
foreign import javascript unsafe "$1[\"data\"] = $2;" js_setData ::
        DataCue -> ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
setData :: (MonadIO m, IsArrayBuffer val) => DataCue -> val -> m ()
setData self val = liftIO (js_setData self (toArrayBuffer val))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        DataCue -> IO ArrayBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.data Mozilla WebKitDataCue.data documentation> 
getData :: (MonadIO m) => DataCue -> m ArrayBuffer
getData self = liftIO (js_getData self)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: DataCue -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
setValue :: (MonadIO m, ToJSVal val) => DataCue -> val -> m ()
setValue self val
  = liftIO (toJSVal val >>= \ val' -> js_setValue self val')
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DataCue -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.value Mozilla WebKitDataCue.value documentation> 
getValue :: (MonadIO m) => DataCue -> m JSVal
getValue self = liftIO (js_getValue self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        DataCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitDataCue.type Mozilla WebKitDataCue.type documentation> 
getType :: (MonadIO m, FromJSString result) => DataCue -> m result
getType self = liftIO (fromJSString <$> (js_getType self))