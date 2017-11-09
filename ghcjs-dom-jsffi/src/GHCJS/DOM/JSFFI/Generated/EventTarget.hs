{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.EventTarget
       (js_addEventListener, addEventListener, js_removeEventListener,
        removeEventListener, js_dispatchEvent, dispatchEvent,
        dispatchEvent_, EventTarget(..), gTypeEventTarget, IsEventTarget,
        toEventTarget)
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
 
foreign import javascript unsafe
        "$1[\"addEventListener\"]($2, $3,\n$4)" js_addEventListener ::
        EventTarget ->
          JSString ->
            Optional EventListener -> AddEventListenerOptionsOrBool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.addEventListener Mozilla EventTarget.addEventListener documentation> 
addEventListener ::
                 (MonadIO m, IsEventTarget self, ToJSString type',
                  IsAddEventListenerOptionsOrBool options) =>
                   self -> type' -> Maybe EventListener -> options -> m ()
addEventListener self type' callback options
  = liftIO
      (toJSVal options >>=
         \ options' ->
           js_addEventListener (toEventTarget self) (toJSString type')
             (maybeToOptional callback)
             (AddEventListenerOptionsOrBool options'))
 
foreign import javascript unsafe
        "$1[\"removeEventListener\"]($2,\n$3, $4)" js_removeEventListener
        ::
        EventTarget ->
          JSString ->
            Optional EventListener -> EventListenerOptionsOrBool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.removeEventListener Mozilla EventTarget.removeEventListener documentation> 
removeEventListener ::
                    (MonadIO m, IsEventTarget self, ToJSString type',
                     IsEventListenerOptionsOrBool options) =>
                      self -> type' -> Maybe EventListener -> options -> m ()
removeEventListener self type' callback options
  = liftIO
      (toJSVal options >>=
         \ options' ->
           js_removeEventListener (toEventTarget self) (toJSString type')
             (maybeToOptional callback)
             (EventListenerOptionsOrBool options'))
 
foreign import javascript safe
        "($1[\"dispatchEvent\"]($2) ? 1 : 0)" js_dispatchEvent ::
        EventTarget -> Event -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent ::
              (MonadIO m, IsEventTarget self, IsEvent event) =>
                self -> event -> m Bool
dispatchEvent self event
  = liftIO (js_dispatchEvent (toEventTarget self) (toEvent event))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventTarget.dispatchEvent Mozilla EventTarget.dispatchEvent documentation> 
dispatchEvent_ ::
               (MonadIO m, IsEventTarget self, IsEvent event) =>
                 self -> event -> m ()
dispatchEvent_ self event
  = liftIO
      (void (js_dispatchEvent (toEventTarget self) (toEvent event)))