{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TouchEvent
       (js_newTouchEvent, newTouchEvent, js_initTouchEvent,
        initTouchEvent, js_getTouches, getTouches, js_getTargetTouches,
        getTargetTouches, js_getChangedTouches, getChangedTouches,
        js_getCtrlKey, getCtrlKey, js_getShiftKey, getShiftKey,
        js_getAltKey, getAltKey, js_getMetaKey, getMetaKey, TouchEvent(..),
        gTypeTouchEvent)
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
        "new window[\"TouchEvent\"]($1, $2)" js_newTouchEvent ::
        JSString -> Optional TouchEventInit -> IO TouchEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent Mozilla TouchEvent documentation> 
newTouchEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe TouchEventInit -> m TouchEvent
newTouchEvent type' eventInitDict
  = liftIO
      (js_newTouchEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "$1[\"initTouchEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14)"
        js_initTouchEvent ::
        TouchEvent ->
          Optional TouchList ->
            Optional TouchList ->
              Optional TouchList ->
                Optional JSString ->
                  Optional Window ->
                    Optional Int ->
                      Optional Int ->
                        Optional Int ->
                          Optional Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.initTouchEvent Mozilla TouchEvent.initTouchEvent documentation> 
initTouchEvent ::
               (MonadIO m, ToJSString type') =>
                 TouchEvent ->
                   Maybe TouchList ->
                     Maybe TouchList ->
                       Maybe TouchList ->
                         Maybe type' ->
                           Maybe Window ->
                             Maybe Int ->
                               Maybe Int ->
                                 Maybe Int -> Maybe Int -> Bool -> Bool -> Bool -> Bool -> m ()
initTouchEvent self touches targetTouches changedTouches type' view
  screenX screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftIO
      (js_initTouchEvent self (maybeToOptional touches)
         (maybeToOptional targetTouches)
         (maybeToOptional changedTouches)
         (toOptionalJSString type')
         (maybeToOptional view)
         (maybeToOptional screenX)
         (maybeToOptional screenY)
         (maybeToOptional clientX)
         (maybeToOptional clientY)
         ctrlKey
         altKey
         shiftKey
         metaKey)
 
foreign import javascript unsafe "$1[\"touches\"]" js_getTouches ::
        TouchEvent -> IO TouchList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouches :: (MonadIO m) => TouchEvent -> m TouchList
getTouches self = liftIO (js_getTouches self)
 
foreign import javascript unsafe "$1[\"targetTouches\"]"
        js_getTargetTouches :: TouchEvent -> IO TouchList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouches :: (MonadIO m) => TouchEvent -> m TouchList
getTargetTouches self = liftIO (js_getTargetTouches self)
 
foreign import javascript unsafe "$1[\"changedTouches\"]"
        js_getChangedTouches :: TouchEvent -> IO TouchList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouches :: (MonadIO m) => TouchEvent -> m TouchList
getChangedTouches self = liftIO (js_getChangedTouches self)
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.ctrlKey Mozilla TouchEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => TouchEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey self)
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.shiftKey Mozilla TouchEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => TouchEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey self)
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.altKey Mozilla TouchEvent.altKey documentation> 
getAltKey :: (MonadIO m) => TouchEvent -> m Bool
getAltKey self = liftIO (js_getAltKey self)
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.metaKey Mozilla TouchEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => TouchEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey self)