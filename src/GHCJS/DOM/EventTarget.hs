{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventTarget
       (js_addEventListener, addEventListener, js_removeEventListener,
        removeEventListener, js_dispatchEvent, dispatchEvent, EventTarget,
        castToEventTarget, gTypeEventTarget, IsEventTarget, toEventTarget)
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
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"addEventListener\"]($2, $3,\n$4)" js_addEventListener ::
        JSRef EventTarget ->
          JSString -> JSRef EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
addEventListener ::
                 (MonadIO m, IsEventTarget self, ToJSString type') =>
                   self -> type' -> Maybe EventListener -> Bool -> m ()
addEventListener self type' listener useCapture
  = liftIO
      (js_addEventListener (unEventTarget (toEventTarget self))
         (toJSString type')
         (maybe jsNull unEventListener listener)
         useCapture)
 
foreign import javascript unsafe
        "$1[\"removeEventListener\"]($2,\n$3, $4)" js_removeEventListener
        ::
        JSRef EventTarget ->
          JSString -> JSRef EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
removeEventListener ::
                    (MonadIO m, IsEventTarget self, ToJSString type') =>
                      self -> type' -> Maybe EventListener -> Bool -> m ()
removeEventListener self type' listener useCapture
  = liftIO
      (js_removeEventListener (unEventTarget (toEventTarget self))
         (toJSString type')
         (maybe jsNull unEventListener listener)
         useCapture)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)" js_dispatchEvent ::
        JSRef EventTarget -> JSRef Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent ::
              (MonadIO m, IsEventTarget self, IsEvent event) =>
                self -> Maybe event -> m Bool
dispatchEvent self event
  = liftIO
      (js_dispatchEvent (unEventTarget (toEventTarget self))
         (maybe jsNull (unEvent . toEvent) event))
#else
module GHCJS.DOM.EventTarget (
  module Graphics.UI.Gtk.WebKit.DOM.EventTarget
  ) where
import Graphics.UI.Gtk.WebKit.DOM.EventTarget
#endif
