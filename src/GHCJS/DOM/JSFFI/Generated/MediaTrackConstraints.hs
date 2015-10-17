{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaTrackConstraints
       (js_getMandatory, getMandatory, js_getOptional, getOptional,
        MediaTrackConstraints, castToMediaTrackConstraints,
        gTypeMediaTrackConstraints)
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
 
foreign import javascript unsafe "$1[\"mandatory\"]"
        js_getMandatory :: MediaTrackConstraints -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatory ::
             (MonadIO m) =>
               MediaTrackConstraints -> m (Maybe MediaTrackConstraintSet)
getMandatory self
  = liftIO ((js_getMandatory (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"optional\"]" js_getOptional
        :: MediaTrackConstraints -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.optional Mozilla MediaTrackConstraints.optional documentation> 
getOptional ::
            (MonadIO m) =>
              MediaTrackConstraints -> m (Maybe [Maybe MediaTrackConstraint])
getOptional self
  = liftIO ((js_getOptional (self)) >>= fromJSValUnchecked)