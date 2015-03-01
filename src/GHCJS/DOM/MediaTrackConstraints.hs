{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaTrackConstraints
       (js_getMandatory, getMandatory, js_getOptional, getOptional,
        MediaTrackConstraints, castToMediaTrackConstraints,
        gTypeMediaTrackConstraints)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"mandatory\"]"
        js_getMandatory ::
        JSRef MediaTrackConstraints ->
          IO (JSRef (Maybe MediaTrackConstraintSet))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
getMandatory ::
             (MonadIO m) =>
               MediaTrackConstraints -> m (Maybe MediaTrackConstraintSet)
getMandatory self
  = liftIO
      ((js_getMandatory (unMediaTrackConstraints self)) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"optional\"]" js_getOptional
        ::
        JSRef MediaTrackConstraints ->
          IO (JSRef (Maybe [Maybe MediaTrackConstraint]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.optional Mozilla MediaTrackConstraints.optional documentation> 
getOptional ::
            (MonadIO m) =>
              MediaTrackConstraints -> m (Maybe [Maybe MediaTrackConstraint])
getOptional self
  = liftIO
      ((js_getOptional (unMediaTrackConstraints self)) >>=
         fromJSRefUnchecked)
#else
module GHCJS.DOM.MediaTrackConstraints (
  ) where
#endif
