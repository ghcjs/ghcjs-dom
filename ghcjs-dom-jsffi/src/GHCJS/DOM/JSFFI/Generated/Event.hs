{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Event
       (js_newEvent, newEvent, js_composedPath, composedPath,
        composedPath_, js_stopPropagation, stopPropagation,
        js_stopImmediatePropagation, stopImmediatePropagation,
        js_preventDefault, preventDefault, js_initEvent, initEvent,
        pattern NONE, pattern CAPTURING_PHASE, pattern AT_TARGET,
        pattern BUBBLING_PHASE, js_getType, getType, js_getTarget,
        getTarget, getTargetUnsafe, getTargetUnchecked,
        js_getCurrentTarget, getCurrentTarget, getCurrentTargetUnsafe,
        getCurrentTargetUnchecked, js_getEventPhase, getEventPhase,
        js_setCancelBubble, setCancelBubble, js_getCancelBubble,
        getCancelBubble, js_getBubbles, getBubbles, js_getCancelable,
        getCancelable, js_getDefaultPrevented, getDefaultPrevented,
        js_getComposed, getComposed, js_getIsTrusted, getIsTrusted,
        js_getTimeStamp, getTimeStamp, js_getSrcElement, getSrcElement,
        js_setReturnValue, setReturnValue, js_getReturnValue,
        getReturnValue, Event(..), gTypeEvent, IsEvent, toEvent)
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
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"Event\"]($1, $2)"
        js_newEvent :: JSString -> Optional EventInit -> IO Event

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event Mozilla Event documentation> 
newEvent ::
         (MonadIO m, ToJSString type', IsEventInit eventInitDict) =>
           type' -> Maybe eventInitDict -> m Event
newEvent type' eventInitDict
  = liftIO
      (js_newEvent (toJSString type')
         (maybeToOptional (fmap toEventInit eventInitDict)))
 
foreign import javascript unsafe "$1[\"composedPath\"]()"
        js_composedPath :: Event -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composedPath Mozilla Event.composedPath documentation> 
composedPath ::
             (MonadIO m, IsEvent self) => self -> m [EventTarget]
composedPath self
  = liftIO ((js_composedPath (toEvent self)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composedPath Mozilla Event.composedPath documentation> 
composedPath_ :: (MonadIO m, IsEvent self) => self -> m ()
composedPath_ self = liftIO (void (js_composedPath (toEvent self)))
 
foreign import javascript unsafe "$1[\"stopPropagation\"]()"
        js_stopPropagation :: Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopPropagation Mozilla Event.stopPropagation documentation> 
stopPropagation :: (MonadIO m, IsEvent self) => self -> m ()
stopPropagation self = liftIO (js_stopPropagation (toEvent self))
 
foreign import javascript unsafe
        "$1[\"stopImmediatePropagation\"]()" js_stopImmediatePropagation ::
        Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.stopImmediatePropagation Mozilla Event.stopImmediatePropagation documentation> 
stopImmediatePropagation ::
                         (MonadIO m, IsEvent self) => self -> m ()
stopImmediatePropagation self
  = liftIO (js_stopImmediatePropagation (toEvent self))
 
foreign import javascript unsafe "$1[\"preventDefault\"]()"
        js_preventDefault :: Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.preventDefault Mozilla Event.preventDefault documentation> 
preventDefault :: (MonadIO m, IsEvent self) => self -> m ()
preventDefault self = liftIO (js_preventDefault (toEvent self))
 
foreign import javascript unsafe "$1[\"initEvent\"]($2, $3, $4)"
        js_initEvent :: Event -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.initEvent Mozilla Event.initEvent documentation> 
initEvent ::
          (MonadIO m, IsEvent self, ToJSString type') =>
            self -> type' -> Bool -> Bool -> m ()
initEvent self type' bubbles cancelable
  = liftIO
      (js_initEvent (toEvent self) (toJSString type') bubbles cancelable)
pattern NONE = 0
pattern CAPTURING_PHASE = 1
pattern AT_TARGET = 2
pattern BUBBLING_PHASE = 3
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Event -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.type Mozilla Event.type documentation> 
getType ::
        (MonadIO m, IsEvent self, FromJSString result) => self -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (toEvent self)))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        Event -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTarget ::
          (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
getTarget self
  = liftIO (nullableToMaybe <$> (js_getTarget (toEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTargetUnsafe ::
                (MonadIO m, IsEvent self, HasCallStack) => self -> m EventTarget
getTargetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTarget (toEvent self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.target Mozilla Event.target documentation> 
getTargetUnchecked ::
                   (MonadIO m, IsEvent self) => self -> m EventTarget
getTargetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getTarget (toEvent self)))
 
foreign import javascript unsafe "$1[\"currentTarget\"]"
        js_getCurrentTarget :: Event -> IO (Nullable EventTarget)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTarget ::
                 (MonadIO m, IsEvent self) => self -> m (Maybe EventTarget)
getCurrentTarget self
  = liftIO (nullableToMaybe <$> (js_getCurrentTarget (toEvent self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTargetUnsafe ::
                       (MonadIO m, IsEvent self, HasCallStack) => self -> m EventTarget
getCurrentTargetUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCurrentTarget (toEvent self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.currentTarget Mozilla Event.currentTarget documentation> 
getCurrentTargetUnchecked ::
                          (MonadIO m, IsEvent self) => self -> m EventTarget
getCurrentTargetUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCurrentTarget (toEvent self)))
 
foreign import javascript unsafe "$1[\"eventPhase\"]"
        js_getEventPhase :: Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.eventPhase Mozilla Event.eventPhase documentation> 
getEventPhase :: (MonadIO m, IsEvent self) => self -> m Word
getEventPhase self = liftIO (js_getEventPhase (toEvent self))
 
foreign import javascript unsafe "$1[\"cancelBubble\"] = $2;"
        js_setCancelBubble :: Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
setCancelBubble ::
                (MonadIO m, IsEvent self) => self -> Bool -> m ()
setCancelBubble self val
  = liftIO (js_setCancelBubble (toEvent self) val)
 
foreign import javascript unsafe "($1[\"cancelBubble\"] ? 1 : 0)"
        js_getCancelBubble :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelBubble Mozilla Event.cancelBubble documentation> 
getCancelBubble :: (MonadIO m, IsEvent self) => self -> m Bool
getCancelBubble self = liftIO (js_getCancelBubble (toEvent self))
 
foreign import javascript unsafe "($1[\"bubbles\"] ? 1 : 0)"
        js_getBubbles :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.bubbles Mozilla Event.bubbles documentation> 
getBubbles :: (MonadIO m, IsEvent self) => self -> m Bool
getBubbles self = liftIO (js_getBubbles (toEvent self))
 
foreign import javascript unsafe "($1[\"cancelable\"] ? 1 : 0)"
        js_getCancelable :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.cancelable Mozilla Event.cancelable documentation> 
getCancelable :: (MonadIO m, IsEvent self) => self -> m Bool
getCancelable self = liftIO (js_getCancelable (toEvent self))
 
foreign import javascript unsafe
        "($1[\"defaultPrevented\"] ? 1 : 0)" js_getDefaultPrevented ::
        Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.defaultPrevented Mozilla Event.defaultPrevented documentation> 
getDefaultPrevented :: (MonadIO m, IsEvent self) => self -> m Bool
getDefaultPrevented self
  = liftIO (js_getDefaultPrevented (toEvent self))
 
foreign import javascript unsafe "($1[\"composed\"] ? 1 : 0)"
        js_getComposed :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.composed Mozilla Event.composed documentation> 
getComposed :: (MonadIO m, IsEvent self) => self -> m Bool
getComposed self = liftIO (js_getComposed (toEvent self))
 
foreign import javascript unsafe "($1[\"isTrusted\"] ? 1 : 0)"
        js_getIsTrusted :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.isTrusted Mozilla Event.isTrusted documentation> 
getIsTrusted :: (MonadIO m, IsEvent self) => self -> m Bool
getIsTrusted self = liftIO (js_getIsTrusted (toEvent self))
 
foreign import javascript unsafe "$1[\"timeStamp\"]"
        js_getTimeStamp :: Event -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.timeStamp Mozilla Event.timeStamp documentation> 
getTimeStamp :: (MonadIO m, IsEvent self) => self -> m Word
getTimeStamp self = liftIO (js_getTimeStamp (toEvent self))
 
foreign import javascript unsafe "$1[\"srcElement\"]"
        js_getSrcElement :: Event -> IO EventTarget

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.srcElement Mozilla Event.srcElement documentation> 
getSrcElement :: (MonadIO m, IsEvent self) => self -> m EventTarget
getSrcElement self = liftIO (js_getSrcElement (toEvent self))
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        js_setReturnValue :: Event -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
setReturnValue :: (MonadIO m, IsEvent self) => self -> Bool -> m ()
setReturnValue self val
  = liftIO (js_setReturnValue (toEvent self) val)
 
foreign import javascript unsafe "($1[\"returnValue\"] ? 1 : 0)"
        js_getReturnValue :: Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Event.returnValue Mozilla Event.returnValue documentation> 
getReturnValue :: (MonadIO m, IsEvent self) => self -> m Bool
getReturnValue self = liftIO (js_getReturnValue (toEvent self))