{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WaveShaperNode
       (js_setCurve, setCurve, js_getCurve, getCurve, js_setOversample,
        setOversample, js_getOversample, getOversample, WaveShaperNode,
        castToWaveShaperNode, gTypeWaveShaperNode)
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
 
foreign import javascript unsafe "$1[\"curve\"] = $2;" js_setCurve
        :: JSRef WaveShaperNode -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
setCurve ::
         (MonadIO m, IsFloat32Array val) =>
           WaveShaperNode -> Maybe val -> m ()
setCurve self val
  = liftIO
      (js_setCurve (unWaveShaperNode self)
         (maybe jsNull (unFloat32Array . toFloat32Array) val))
 
foreign import javascript unsafe "$1[\"curve\"]" js_getCurve ::
        JSRef WaveShaperNode -> IO (JSRef Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
getCurve :: (MonadIO m) => WaveShaperNode -> m (Maybe Float32Array)
getCurve self
  = liftIO ((js_getCurve (unWaveShaperNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"oversample\"] = $2;"
        js_setOversample ::
        JSRef WaveShaperNode -> JSRef OverSampleType -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
setOversample ::
              (MonadIO m) => WaveShaperNode -> OverSampleType -> m ()
setOversample self val
  = liftIO (js_setOversample (unWaveShaperNode self) (pToJSRef val))
 
foreign import javascript unsafe "$1[\"oversample\"]"
        js_getOversample ::
        JSRef WaveShaperNode -> IO (JSRef OverSampleType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
getOversample :: (MonadIO m) => WaveShaperNode -> m OverSampleType
getOversample self
  = liftIO
      ((js_getOversample (unWaveShaperNode self)) >>= fromJSRefUnchecked)