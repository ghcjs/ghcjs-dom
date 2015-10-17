{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WaveShaperNode
       (js_setCurve, setCurve, js_getCurve, getCurve, js_setOversample,
        setOversample, js_getOversample, getOversample, WaveShaperNode,
        castToWaveShaperNode, gTypeWaveShaperNode)
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
 
foreign import javascript unsafe "$1[\"curve\"] = $2;" js_setCurve
        :: WaveShaperNode -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
setCurve ::
         (MonadIO m, IsFloat32Array val) =>
           WaveShaperNode -> Maybe val -> m ()
setCurve self val
  = liftIO
      (js_setCurve (self) (maybeToNullable (fmap toFloat32Array val)))
 
foreign import javascript unsafe "$1[\"curve\"]" js_getCurve ::
        WaveShaperNode -> IO (Nullable Float32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.curve Mozilla WaveShaperNode.curve documentation> 
getCurve :: (MonadIO m) => WaveShaperNode -> m (Maybe Float32Array)
getCurve self = liftIO (nullableToMaybe <$> (js_getCurve (self)))
 
foreign import javascript unsafe "$1[\"oversample\"] = $2;"
        js_setOversample :: WaveShaperNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
setOversample ::
              (MonadIO m) => WaveShaperNode -> OverSampleType -> m ()
setOversample self val
  = liftIO (js_setOversample (self) (pToJSVal val))
 
foreign import javascript unsafe "$1[\"oversample\"]"
        js_getOversample :: WaveShaperNode -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WaveShaperNode.oversample Mozilla WaveShaperNode.oversample documentation> 
getOversample :: (MonadIO m) => WaveShaperNode -> m OverSampleType
getOversample self
  = liftIO ((js_getOversample (self)) >>= fromJSValUnchecked)