{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaRemoteControls
       (js_newMediaRemoteControls, newMediaRemoteControls,
        js_setPreviousTrackEnabled, setPreviousTrackEnabled,
        js_getPreviousTrackEnabled, getPreviousTrackEnabled,
        js_setNextTrackEnabled, setNextTrackEnabled,
        js_getNextTrackEnabled, getNextTrackEnabled, previoustrack,
        nexttrack, MediaRemoteControls(..), gTypeMediaRemoteControls)
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
        "new window[\"MediaRemoteControls\"]()" js_newMediaRemoteControls
        :: IO MediaRemoteControls

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls Mozilla MediaRemoteControls documentation> 
newMediaRemoteControls :: (MonadIO m) => m MediaRemoteControls
newMediaRemoteControls = liftIO (js_newMediaRemoteControls)
 
foreign import javascript unsafe
        "$1[\"previousTrackEnabled\"] = $2;" js_setPreviousTrackEnabled ::
        MediaRemoteControls -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.previousTrackEnabled Mozilla MediaRemoteControls.previousTrackEnabled documentation> 
setPreviousTrackEnabled ::
                        (MonadIO m) => MediaRemoteControls -> Bool -> m ()
setPreviousTrackEnabled self val
  = liftIO (js_setPreviousTrackEnabled self val)
 
foreign import javascript unsafe
        "($1[\"previousTrackEnabled\"] ? 1 : 0)" js_getPreviousTrackEnabled
        :: MediaRemoteControls -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.previousTrackEnabled Mozilla MediaRemoteControls.previousTrackEnabled documentation> 
getPreviousTrackEnabled ::
                        (MonadIO m) => MediaRemoteControls -> m Bool
getPreviousTrackEnabled self
  = liftIO (js_getPreviousTrackEnabled self)
 
foreign import javascript unsafe "$1[\"nextTrackEnabled\"] = $2;"
        js_setNextTrackEnabled :: MediaRemoteControls -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.nextTrackEnabled Mozilla MediaRemoteControls.nextTrackEnabled documentation> 
setNextTrackEnabled ::
                    (MonadIO m) => MediaRemoteControls -> Bool -> m ()
setNextTrackEnabled self val
  = liftIO (js_setNextTrackEnabled self val)
 
foreign import javascript unsafe
        "($1[\"nextTrackEnabled\"] ? 1 : 0)" js_getNextTrackEnabled ::
        MediaRemoteControls -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.nextTrackEnabled Mozilla MediaRemoteControls.nextTrackEnabled documentation> 
getNextTrackEnabled :: (MonadIO m) => MediaRemoteControls -> m Bool
getNextTrackEnabled self = liftIO (js_getNextTrackEnabled self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.onprevioustrack Mozilla MediaRemoteControls.onprevioustrack documentation> 
previoustrack :: EventName MediaRemoteControls onprevioustrack
previoustrack = unsafeEventName (toJSString "previoustrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaRemoteControls.onnexttrack Mozilla MediaRemoteControls.onnexttrack documentation> 
nexttrack :: EventName MediaRemoteControls onnexttrack
nexttrack = unsafeEventName (toJSString "nexttrack")