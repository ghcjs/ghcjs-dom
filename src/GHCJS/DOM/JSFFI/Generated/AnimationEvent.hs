{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AnimationEvent
       (js_getAnimationName, getAnimationName, js_getElapsedTime,
        getElapsedTime, AnimationEvent, castToAnimationEvent,
        gTypeAnimationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"animationName\"]"
        js_getAnimationName :: JSRef AnimationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.animationName Mozilla AnimationEvent.animationName documentation> 
getAnimationName ::
                 (MonadIO m, FromJSString result) => AnimationEvent -> m result
getAnimationName self
  = liftIO
      (fromJSString <$> (js_getAnimationName (unAnimationEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: JSRef AnimationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.elapsedTime Mozilla AnimationEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => AnimationEvent -> m Double
getElapsedTime self
  = liftIO (js_getElapsedTime (unAnimationEvent self))