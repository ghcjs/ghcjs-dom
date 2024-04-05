{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PageTransitionEvent
       (js_newPageTransitionEvent, newPageTransitionEvent,
        js_getPersisted, getPersisted, PageTransitionEvent(..),
        gTypePageTransitionEvent)
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
        "new window[\"PageTransitionEvent\"]($1,\n$2)"
        js_newPageTransitionEvent ::
        JSString ->
          Optional PageTransitionEventInit -> IO PageTransitionEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent Mozilla PageTransitionEvent documentation> 
newPageTransitionEvent ::
                       (MonadIO m, ToJSString type') =>
                         type' -> Maybe PageTransitionEventInit -> m PageTransitionEvent
newPageTransitionEvent type' eventInitDict
  = liftIO
      (js_newPageTransitionEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "($1[\"persisted\"] ? 1 : 0)"
        js_getPersisted :: PageTransitionEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent.persisted Mozilla PageTransitionEvent.persisted documentation> 
getPersisted :: (MonadIO m) => PageTransitionEvent -> m Bool
getPersisted self = liftIO (js_getPersisted self)