{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.KeyboardEvent
       (js_getModifierState, getModifierState, js_initKeyboardEvent,
        initKeyboardEvent, js_initKeyboardEvent', initKeyboardEvent',
        pattern KEY_LOCATION_STANDARD, pattern KEY_LOCATION_LEFT,
        pattern KEY_LOCATION_RIGHT, pattern KEY_LOCATION_NUMPAD,
        js_getKeyIdentifier, getKeyIdentifier, js_getLocation, getLocation,
        js_getKeyLocation, getKeyLocation, js_getCtrlKey, getCtrlKey,
        js_getShiftKey, getShiftKey, js_getAltKey, getAltKey,
        js_getMetaKey, getMetaKey, js_getAltGraphKey, getAltGraphKey,
        js_getKeyCode, getKeyCode, js_getCharCode, getCharCode,
        KeyboardEvent, castToKeyboardEvent, gTypeKeyboardEvent)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"getModifierState\"]($2) ? 1 : 0)" js_getModifierState ::
        JSRef KeyboardEvent -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.getModifierState Mozilla KeyboardEvent.getModifierState documentation> 
getModifierState ::
                 (MonadIO m, ToJSString keyIdentifierArg) =>
                   KeyboardEvent -> keyIdentifierArg -> m Bool
getModifierState self keyIdentifierArg
  = liftIO
      (js_getModifierState (unKeyboardEvent self)
         (toJSString keyIdentifierArg))
 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        js_initKeyboardEvent ::
        JSRef KeyboardEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef DOMWindow ->
                  JSString -> Word -> Bool -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent ::
                  (MonadIO m, ToJSString type', ToJSString keyIdentifier) =>
                    KeyboardEvent ->
                      type' ->
                        Bool ->
                          Bool ->
                            Maybe DOMWindow ->
                              keyIdentifier ->
                                Word -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
initKeyboardEvent self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey altGraphKey
  = liftIO
      (js_initKeyboardEvent (unKeyboardEvent self) (toJSString type')
         canBubble
         cancelable
         (maybe jsNull unDOMWindow view)
         (toJSString keyIdentifier)
         location
         ctrlKey
         altKey
         shiftKey
         metaKey
         altGraphKey)
 
foreign import javascript unsafe
        "$1[\"initKeyboardEvent\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11)"
        js_initKeyboardEvent' ::
        JSRef KeyboardEvent ->
          JSString ->
            Bool ->
              Bool ->
                JSRef DOMWindow ->
                  JSString -> Word -> Bool -> Bool -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.initKeyboardEvent Mozilla KeyboardEvent.initKeyboardEvent documentation> 
initKeyboardEvent' ::
                   (MonadIO m, ToJSString type', ToJSString keyIdentifier) =>
                     KeyboardEvent ->
                       type' ->
                         Bool ->
                           Bool ->
                             Maybe DOMWindow ->
                               keyIdentifier -> Word -> Bool -> Bool -> Bool -> Bool -> m ()
initKeyboardEvent' self type' canBubble cancelable view
  keyIdentifier location ctrlKey altKey shiftKey metaKey
  = liftIO
      (js_initKeyboardEvent' (unKeyboardEvent self) (toJSString type')
         canBubble
         cancelable
         (maybe jsNull unDOMWindow view)
         (toJSString keyIdentifier)
         location
         ctrlKey
         altKey
         shiftKey
         metaKey)
pattern KEY_LOCATION_STANDARD = 0
pattern KEY_LOCATION_LEFT = 1
pattern KEY_LOCATION_RIGHT = 2
pattern KEY_LOCATION_NUMPAD = 3
 
foreign import javascript unsafe "$1[\"keyIdentifier\"]"
        js_getKeyIdentifier :: JSRef KeyboardEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyIdentifier Mozilla KeyboardEvent.keyIdentifier documentation> 
getKeyIdentifier ::
                 (MonadIO m, FromJSString result) => KeyboardEvent -> m result
getKeyIdentifier self
  = liftIO
      (fromJSString <$> (js_getKeyIdentifier (unKeyboardEvent self)))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: JSRef KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.location Mozilla KeyboardEvent.location documentation> 
getLocation :: (MonadIO m) => KeyboardEvent -> m Word
getLocation self = liftIO (js_getLocation (unKeyboardEvent self))
 
foreign import javascript unsafe "$1[\"keyLocation\"]"
        js_getKeyLocation :: JSRef KeyboardEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyLocation Mozilla KeyboardEvent.keyLocation documentation> 
getKeyLocation :: (MonadIO m) => KeyboardEvent -> m Word
getKeyLocation self
  = liftIO (js_getKeyLocation (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"ctrlKey\"] ? 1 : 0)"
        js_getCtrlKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.ctrlKey Mozilla KeyboardEvent.ctrlKey documentation> 
getCtrlKey :: (MonadIO m) => KeyboardEvent -> m Bool
getCtrlKey self = liftIO (js_getCtrlKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"shiftKey\"] ? 1 : 0)"
        js_getShiftKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.shiftKey Mozilla KeyboardEvent.shiftKey documentation> 
getShiftKey :: (MonadIO m) => KeyboardEvent -> m Bool
getShiftKey self = liftIO (js_getShiftKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altKey\"] ? 1 : 0)"
        js_getAltKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altKey Mozilla KeyboardEvent.altKey documentation> 
getAltKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltKey self = liftIO (js_getAltKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"metaKey\"] ? 1 : 0)"
        js_getMetaKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.metaKey Mozilla KeyboardEvent.metaKey documentation> 
getMetaKey :: (MonadIO m) => KeyboardEvent -> m Bool
getMetaKey self = liftIO (js_getMetaKey (unKeyboardEvent self))
 
foreign import javascript unsafe "($1[\"altGraphKey\"] ? 1 : 0)"
        js_getAltGraphKey :: JSRef KeyboardEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.altGraphKey Mozilla KeyboardEvent.altGraphKey documentation> 
getAltGraphKey :: (MonadIO m) => KeyboardEvent -> m Bool
getAltGraphKey self
  = liftIO (js_getAltGraphKey (unKeyboardEvent self))
 
foreign import javascript unsafe "$1[\"keyCode\"]" js_getKeyCode ::
        JSRef KeyboardEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.keyCode Mozilla KeyboardEvent.keyCode documentation> 
getKeyCode :: (MonadIO m) => KeyboardEvent -> m Int
getKeyCode self = liftIO (js_getKeyCode (unKeyboardEvent self))
 
foreign import javascript unsafe "$1[\"charCode\"]" js_getCharCode
        :: JSRef KeyboardEvent -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyboardEvent.charCode Mozilla KeyboardEvent.charCode documentation> 
getCharCode :: (MonadIO m) => KeyboardEvent -> m Int
getCharCode self = liftIO (js_getCharCode (unKeyboardEvent self))
#else
module GHCJS.DOM.KeyboardEvent (
  module Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
  ) where
import Graphics.UI.Gtk.WebKit.DOM.KeyboardEvent
#endif
