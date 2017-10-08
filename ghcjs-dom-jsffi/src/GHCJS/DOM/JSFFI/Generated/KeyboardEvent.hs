{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.KeyboardEvent
       (js_newKeyboardEvent, newKeyboardEvent, js_getModifierState,
        getModifierState, getModifierState_, js_initKeyboardEvent,
        initKeyboardEvent, pattern DOM_KEY_LOCATION_STANDARD,
        pattern DOM_KEY_LOCATION_LEFT, pattern DOM_KEY_LOCATION_RIGHT,
        pattern DOM_KEY_LOCATION_NUMPAD, js_getKey, getKey, js_getCode,
        getCode, js_getLocation, getLocation, js_getCtrlKey, getCtrlKey,
        js_getShiftKey, getShiftKey, js_getAltKey, getAltKey,
        js_getMetaKey, getMetaKey, js_getRepeat, getRepeat,
        js_getIsComposing, getIsComposing, js_getKeyIdentifier,
        getKeyIdentifier, js_getKeyLocation, getKeyLocation,
        js_getAltGraphKey, getAltGraphKey, js_getCharCode, getCharCode,
        js_getKeyCode, getKeyCode, js_getWhich, getWhich,
        KeyboardEvent(..), gTypeKeyboardEvent)
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
        "new window[\"KeyboardEvent\"]($1,\n$2)" js_newKeyboardEvent ::
        JSString -> Optional KeyboardEventInit -> IO KeyboardEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent Mozilla KeyboardEvent documentation> 
newKeyboardEvent ::
                 (MonadIO m, ToJSString type') =>
                   type' -> Maybe KeyboardEventInit -> m KeyboardEvent
newKeyboardEvent type' eventInitDict
  = liftIO
      (js_newKeyboardEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "($1[\"getModifierState\"]($2) ? 1 : 0)" js_getModifierState ::
        KeyboardEvent -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.getModifierState Mozilla KeyboardEvent.getModifierState documentation> 
getModifierState ::
                 (MonadIO m, ToJSString keyArg) => KeyboardEvent -> keyArg -> m Bool
getModifierState self keyArg
  = liftIO (js_getModifierState self (toJSString keyArg))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.getModifierState Mozilla KeyboardEvent.getModifierState documentation> 
getModifierState_ ::
                  (MonadIO m, ToJSString keyArg) => KeyboardEvent -> keyArg -> m ()
getModifierState_ self keyArg
  = liftIO (void (js_getModifierState self (toJSString keyArg)))
 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        js_initKeyboardEvent ::
        KeyboardEvent ->
          Optional JSString ->
            Bool ->
              Bool ->
                Optional Window ->
                  Optional JSString ->
                    Optional Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent ::
                  (MonadIO m, ToJSString type', ToJSString keyIdentifier) =>
                    KeyboardEvent ->
                      Maybe type' ->
                        Bool ->
                          Bool ->
                            Maybe Window ->
                              Maybe keyIdentifier ->
                                Maybe Word -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
initKeyboardEvent self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey altGraphKey
  = liftIO
      (js_initKeyboardEvent self (toOptionalJSString type') canBubble
         cancelable
         (maybeToOptional view)
         (toOptionalJSString keyIdentifier)
         (maybeToOptional location)
         ctrlKey
         altKey
         shiftKey
         metaKey
         altGraphKey)
pattern DOM_KEY_LOCATION_STANDARD = 0
pattern DOM_KEY_LOCATION_LEFT = 1
pattern DOM_KEY_LOCATION_RIGHT = 2
pattern DOM_KEY_LOCATION_NUMPAD = 3
 
foreign import javascript unsafe "$1[\"key\"]" js_getKey ::
        KeyboardEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.key Mozilla KeyboardEvent.key documentation> 
getKey ::
       (MonadIO m, FromJSString result) => KeyboardEvent -> m result
getKey self = liftIO (fromJSString <$> (js_getKey self))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        KeyboardEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.code Mozilla KeyboardEvent.code documentation> 
getCode ::
        (MonadIO m, FromJSString result) => KeyboardEvent -> m result
getCode self = liftIO (fromJSString <$> (js_getCode self))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.location Mozilla KeyboardEvent.location documentation> 
getLocation :: (MonadIO m) => KeyboardEvent -> m Word
getLocation self = liftIO (js_getLocation self)
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.ctrlKey Mozilla KeyboardEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => KeyboardEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey self)
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.shiftKey Mozilla KeyboardEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => KeyboardEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey self)
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altKey Mozilla KeyboardEvent.altKey documentation> 
getAltKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltKey self = liftIO (js_getAltKey self)
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.metaKey Mozilla KeyboardEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => KeyboardEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey self)
 
foreign import javascript unsafe "($1[\"repeat\"] ? 1 : 0)"
        js_getRepeat :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.repeat Mozilla KeyboardEvent.repeat documentation> 
getRepeat :: (MonadIO m) => KeyboardEvent -> m Bool
getRepeat self = liftIO (js_getRepeat self)
 
foreign import javascript unsafe "($1[\"isComposing\"] ? 1 : 0)"
        js_getIsComposing :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.isComposing Mozilla KeyboardEvent.isComposing documentation> 
getIsComposing :: (MonadIO m) => KeyboardEvent -> m Bool
getIsComposing self = liftIO (js_getIsComposing self)
 
foreign import javascript unsafe "$1[\"keyIdentifier\"]"
        js_getKeyIdentifier :: KeyboardEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyIdentifier Mozilla KeyboardEvent.keyIdentifier documentation> 
getKeyIdentifier ::
                 (MonadIO m, FromJSString result) => KeyboardEvent -> m result
getKeyIdentifier self
  = liftIO (fromJSString <$> (js_getKeyIdentifier self))
 
foreign import javascript unsafe "$1[\"keyLocation\"]"
        js_getKeyLocation :: KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyLocation Mozilla KeyboardEvent.keyLocation documentation> 
getKeyLocation :: (MonadIO m) => KeyboardEvent -> m Word
getKeyLocation self = liftIO (js_getKeyLocation self)
 
foreign import javascript unsafe "($1[\"altGraphKey\"] ? 1 : 0)"
        js_getAltGraphKey :: KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altGraphKey Mozilla KeyboardEvent.altGraphKey documentation> 
getAltGraphKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltGraphKey self = liftIO (js_getAltGraphKey self)
 
foreign import javascript unsafe "$1[\"charCode\"]" js_getCharCode
        :: KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.charCode Mozilla KeyboardEvent.charCode documentation> 
getCharCode :: (MonadIO m) => KeyboardEvent -> m Word
getCharCode self = liftIO (js_getCharCode self)
 
foreign import javascript unsafe "$1[\"keyCode\"]" js_getKeyCode ::
        KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyCode Mozilla KeyboardEvent.keyCode documentation> 
getKeyCode :: (MonadIO m) => KeyboardEvent -> m Word
getKeyCode self = liftIO (js_getKeyCode self)
 
foreign import javascript unsafe "$1[\"which\"]" js_getWhich ::
        KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.which Mozilla KeyboardEvent.which documentation> 
getWhich :: (MonadIO m) => KeyboardEvent -> m Word
getWhich self = liftIO (js_getWhich self)