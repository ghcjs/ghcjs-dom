{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PageTransitionEvent
       (js_getPersisted, getPersisted, PageTransitionEvent,
        castToPageTransitionEvent, gTypePageTransitionEvent)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "($1[\"persisted\"] ? 1 : 0)"
        js_getPersisted :: PageTransitionEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent.persisted Mozilla PageTransitionEvent.persisted documentation> 
getPersisted :: (MonadIO m) => PageTransitionEvent -> m Bool
getPersisted self = liftIO (js_getPersisted (self))