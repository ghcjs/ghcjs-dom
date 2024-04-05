{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Animation
       (js_newAnimation, newAnimation, js_getEffect, getEffect,
        getEffectUnsafe, getEffectUnchecked, js_getTimeline, getTimeline,
        getTimelineUnsafe, getTimelineUnchecked, Animation(..),
        gTypeAnimation)
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
        "new window[\"Animation\"]($1, $2)" js_newAnimation ::
        Optional AnimationEffect ->
          Optional AnimationTimeline -> IO Animation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation Mozilla Animation documentation> 
newAnimation ::
             (MonadIO m, IsAnimationEffect effect,
              IsAnimationTimeline timeline) =>
               Maybe effect -> Maybe timeline -> m Animation
newAnimation effect timeline
  = liftIO
      (js_newAnimation (maybeToOptional (fmap toAnimationEffect effect))
         (maybeToOptional (fmap toAnimationTimeline timeline)))
 
foreign import javascript unsafe "$1[\"effect\"]" js_getEffect ::
        Animation -> IO (Nullable AnimationEffect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffect :: (MonadIO m) => Animation -> m (Maybe AnimationEffect)
getEffect self = liftIO (nullableToMaybe <$> (js_getEffect self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffectUnsafe ::
                (MonadIO m, HasCallStack) => Animation -> m AnimationEffect
getEffectUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEffect self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.effect Mozilla Animation.effect documentation> 
getEffectUnchecked :: (MonadIO m) => Animation -> m AnimationEffect
getEffectUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getEffect self))
 
foreign import javascript unsafe "$1[\"timeline\"]" js_getTimeline
        :: Animation -> IO (Nullable AnimationTimeline)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimeline ::
            (MonadIO m) => Animation -> m (Maybe AnimationTimeline)
getTimeline self
  = liftIO (nullableToMaybe <$> (js_getTimeline self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimelineUnsafe ::
                  (MonadIO m, HasCallStack) => Animation -> m AnimationTimeline
getTimelineUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTimeline self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Animation.timeline Mozilla Animation.timeline documentation> 
getTimelineUnchecked ::
                     (MonadIO m) => Animation -> m AnimationTimeline
getTimelineUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTimeline self))