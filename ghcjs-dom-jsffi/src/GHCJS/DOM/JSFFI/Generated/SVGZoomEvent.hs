{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGZoomEvent
       (js_getZoomRectScreen, getZoomRectScreen, getZoomRectScreenUnsafe,
        getZoomRectScreenUnchecked, js_getPreviousScale, getPreviousScale,
        js_getPreviousTranslate, getPreviousTranslate,
        getPreviousTranslateUnsafe, getPreviousTranslateUnchecked,
        js_getNewScale, getNewScale, js_getNewTranslate, getNewTranslate,
        getNewTranslateUnsafe, getNewTranslateUnchecked, SVGZoomEvent(..),
        gTypeSVGZoomEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"zoomRectScreen\"]"
        js_getZoomRectScreen :: SVGZoomEvent -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreen ::
                  (MonadIO m) => SVGZoomEvent -> m (Maybe SVGRect)
getZoomRectScreen self
  = liftIO (nullableToMaybe <$> (js_getZoomRectScreen (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreenUnsafe ::
                        (MonadIO m, HasCallStack) => SVGZoomEvent -> m SVGRect
getZoomRectScreenUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getZoomRectScreen (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.zoomRectScreen Mozilla SVGZoomEvent.zoomRectScreen documentation> 
getZoomRectScreenUnchecked ::
                           (MonadIO m) => SVGZoomEvent -> m SVGRect
getZoomRectScreenUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getZoomRectScreen (self)))
 
foreign import javascript unsafe "$1[\"previousScale\"]"
        js_getPreviousScale :: SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousScale Mozilla SVGZoomEvent.previousScale documentation> 
getPreviousScale :: (MonadIO m) => SVGZoomEvent -> m Float
getPreviousScale self = liftIO (js_getPreviousScale (self))
 
foreign import javascript unsafe "$1[\"previousTranslate\"]"
        js_getPreviousTranslate :: SVGZoomEvent -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslate ::
                     (MonadIO m) => SVGZoomEvent -> m (Maybe SVGPoint)
getPreviousTranslate self
  = liftIO (nullableToMaybe <$> (js_getPreviousTranslate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslateUnsafe ::
                           (MonadIO m, HasCallStack) => SVGZoomEvent -> m SVGPoint
getPreviousTranslateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPreviousTranslate (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.previousTranslate Mozilla SVGZoomEvent.previousTranslate documentation> 
getPreviousTranslateUnchecked ::
                              (MonadIO m) => SVGZoomEvent -> m SVGPoint
getPreviousTranslateUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPreviousTranslate (self)))
 
foreign import javascript unsafe "$1[\"newScale\"]" js_getNewScale
        :: SVGZoomEvent -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newScale Mozilla SVGZoomEvent.newScale documentation> 
getNewScale :: (MonadIO m) => SVGZoomEvent -> m Float
getNewScale self = liftIO (js_getNewScale (self))
 
foreign import javascript unsafe "$1[\"newTranslate\"]"
        js_getNewTranslate :: SVGZoomEvent -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslate ::
                (MonadIO m) => SVGZoomEvent -> m (Maybe SVGPoint)
getNewTranslate self
  = liftIO (nullableToMaybe <$> (js_getNewTranslate (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslateUnsafe ::
                      (MonadIO m, HasCallStack) => SVGZoomEvent -> m SVGPoint
getNewTranslateUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNewTranslate (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomEvent.newTranslate Mozilla SVGZoomEvent.newTranslate documentation> 
getNewTranslateUnchecked ::
                         (MonadIO m) => SVGZoomEvent -> m SVGPoint
getNewTranslateUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getNewTranslate (self)))