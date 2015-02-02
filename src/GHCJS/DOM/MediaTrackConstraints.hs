{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaTrackConstraints
       (ghcjs_dom_media_track_constraints_get_mandatory,
        mediaTrackConstraintsGetMandatory,
        ghcjs_dom_media_track_constraints_get_optional,
        mediaTrackConstraintsGetOptional, MediaTrackConstraints,
        IsMediaTrackConstraints, castToMediaTrackConstraints,
        gTypeMediaTrackConstraints, toMediaTrackConstraints)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"mandatory\"]"
        ghcjs_dom_media_track_constraints_get_mandatory ::
        JSRef MediaTrackConstraints ->
          IO (JSRef (Maybe MediaTrackConstraintSet))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.mandatory Mozilla MediaTrackConstraints.mandatory documentation> 
mediaTrackConstraintsGetMandatory ::
                                  (IsMediaTrackConstraints self) =>
                                    self -> IO (Maybe MediaTrackConstraintSet)
mediaTrackConstraintsGetMandatory self
  = (ghcjs_dom_media_track_constraints_get_mandatory
       (unMediaTrackConstraints (toMediaTrackConstraints self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"optional\"]"
        ghcjs_dom_media_track_constraints_get_optional ::
        JSRef MediaTrackConstraints ->
          IO (JSRef (Maybe [Maybe MediaTrackConstraint]))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaTrackConstraints.optional Mozilla MediaTrackConstraints.optional documentation> 
mediaTrackConstraintsGetOptional ::
                                 (IsMediaTrackConstraints self) =>
                                   self -> IO (Maybe [Maybe MediaTrackConstraint])
mediaTrackConstraintsGetOptional self
  = (ghcjs_dom_media_track_constraints_get_optional
       (unMediaTrackConstraints (toMediaTrackConstraints self)))
      >>= fromJSRefUnchecked
#else
module GHCJS.DOM.MediaTrackConstraints (
  ) where
#endif
