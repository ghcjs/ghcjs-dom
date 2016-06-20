{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.EventTarget
       (js_addEventListener, addEventListener, js_removeEventListener,
        removeEventListener, js_dispatchEvent, dispatchEvent, EventTarget,
        castToEventTarget, gTypeEventTarget, IsEventTarget, toEventTarget)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "$1[\"addEventListener\"]($2, $3,\n$4)" js_addEventListener ::
        EventTarget -> JSString -> Nullable EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
addEventListener ::
                 (MonadIO m, IsEventTarget self, ToJSString type') =>
                   self -> type' -> Maybe EventListener -> Bool -> m ()
addEventListener self type' listener useCapture
  = liftIO
      (js_addEventListener (toEventTarget self) (toJSString type')
         (maybeToNullable listener)
         useCapture)
 
foreign import javascript unsafe
        "$1[\"removeEventListener\"]($2,\n$3, $4)" js_removeEventListener
        ::
        EventTarget -> JSString -> Nullable EventListener -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
removeEventListener ::
                    (MonadIO m, IsEventTarget self, ToJSString type') =>
                      self -> type' -> Maybe EventListener -> Bool -> m ()
removeEventListener self type' listener useCapture
  = liftIO
      (js_removeEventListener (toEventTarget self) (toJSString type')
         (maybeToNullable listener)
         useCapture)
 
foreign import javascript unsafe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)" js_dispatchEvent ::
        EventTarget -> Nullable Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent ::
              (MonadIO m, IsEventTarget self, IsEvent event) =>
                self -> Maybe event -> m Bool
dispatchEvent self event
  = liftIO
      (js_dispatchEvent (toEventTarget self)
         (maybeToNullable (fmap toEvent event)))