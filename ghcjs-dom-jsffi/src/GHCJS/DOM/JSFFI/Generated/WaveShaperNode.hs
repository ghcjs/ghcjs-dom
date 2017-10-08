{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WaveShaperNode
       (js_setCurve, setCurve, js_getCurve, getCurve, js_setOversample,
        setOversample, js_getOversample, getOversample, WaveShaperNode(..),
        gTypeWaveShaperNode)
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
 
foreign import javascript unsafe "$1[\"curve\"] = $2;" js_setCurve
        :: WaveShaperNode -> Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
setCurve ::
         (MonadIO m, IsFloat32Array val) => WaveShaperNode -> val -> m ()
setCurve self val = liftIO (js_setCurve self (toFloat32Array val))
 
foreign import javascript unsafe "$1[\"curve\"]" js_getCurve ::
        WaveShaperNode -> IO Float32Array

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
getCurve :: (MonadIO m) => WaveShaperNode -> m Float32Array
getCurve self = liftIO (js_getCurve self)
 
foreign import javascript unsafe "$1[\"oversample\"] = $2;"
        js_setOversample :: WaveShaperNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
setOversample ::
              (MonadIO m) => WaveShaperNode -> OverSampleType -> m ()
setOversample self val
  = liftIO (js_setOversample self (pToJSVal val))
 
foreign import javascript unsafe "$1[\"oversample\"]"
        js_getOversample :: WaveShaperNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
getOversample :: (MonadIO m) => WaveShaperNode -> m OverSampleType
getOversample self
  = liftIO ((js_getOversample self) >>= fromJSValUnchecked)