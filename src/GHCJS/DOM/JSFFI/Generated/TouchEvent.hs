{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TouchEvent
       (js_initTouchEvent, initTouchEvent, js_getTouches, getTouches,
        js_getTargetTouches, getTargetTouches, js_getChangedTouches,
        getChangedTouches, js_getCtrlKey, getCtrlKey, js_getShiftKey,
        getShiftKey, js_getAltKey, getAltKey, js_getMetaKey, getMetaKey,
        TouchEvent, castToTouchEvent, gTypeTouchEvent)
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
 
foreign import javascript unsafe
        "$1[\"initTouchEvent\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12, $13, $14)"
        js_initTouchEvent ::
        JSRef TouchEvent ->
          JSRef TouchList ->
            JSRef TouchList ->
              JSRef TouchList ->
                JSString ->
                  JSRef Window ->
                    Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.initTouchEvent Mozilla TouchEvent.initTouchEvent documentation> 
initTouchEvent ::
               (MonadIO m, ToJSString type') =>
                 TouchEvent ->
                   Maybe TouchList ->
                     Maybe TouchList ->
                       Maybe TouchList ->
                         type' ->
                           Maybe Window ->
                             Int -> Int -> Int -> Int -> Bool -> Bool -> Bool -> Bool -> m ()
initTouchEvent self touches targetTouches changedTouches type' view
  screenX screenY clientX clientY ctrlKey altKey shiftKey metaKey
  = liftIO
      (js_initTouchEvent (unTouchEvent self)
         (maybe jsNull pToJSRef touches)
         (maybe jsNull pToJSRef targetTouches)
         (maybe jsNull pToJSRef changedTouches)
         (toJSString type')
         (maybe jsNull pToJSRef view)
         screenX
         screenY
         clientX
         clientY
         ctrlKey
         altKey
         shiftKey
         metaKey)
 
foreign import javascript unsafe "$1[\"touches\"]" js_getTouches ::
        JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.touches Mozilla TouchEvent.touches documentation> 
getTouches :: (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getTouches self
  = liftIO ((js_getTouches (unTouchEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"targetTouches\"]"
        js_getTargetTouches :: JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.targetTouches Mozilla TouchEvent.targetTouches documentation> 
getTargetTouches ::
                 (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getTargetTouches self
  = liftIO ((js_getTargetTouches (unTouchEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"changedTouches\"]"
        js_getChangedTouches :: JSRef TouchEvent -> IO (JSRef TouchList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.changedTouches Mozilla TouchEvent.changedTouches documentation> 
getChangedTouches ::
                  (MonadIO m) => TouchEvent -> m (Maybe TouchList)
getChangedTouches self
  = liftIO ((js_getChangedTouches (unTouchEvent self)) >>= fromJSRef)
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.ctrlKey Mozilla TouchEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => TouchEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey (unTouchEvent self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.shiftKey Mozilla TouchEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => TouchEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey (unTouchEvent self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.altKey Mozilla TouchEvent.altKey documentation> 
getAltKey :: (MonadIO m) => TouchEvent -> m Bool
getAltKey self = liftIO (js_getAltKey (unTouchEvent self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: JSRef TouchEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchEvent.metaKey Mozilla TouchEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => TouchEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey (unTouchEvent self))