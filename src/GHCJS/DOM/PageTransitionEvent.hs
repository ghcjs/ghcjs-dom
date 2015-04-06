{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PageTransitionEvent
       (js_getPersisted, getPersisted, PageTransitionEvent,
        castToPageTransitionEvent, gTypePageTransitionEvent)
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

 
foreign import javascript unsafe "($1[\"persisted\"] ? 1 : 0)"
        js_getPersisted :: JSRef PageTransitionEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PageTransitionEvent.persisted Mozilla PageTransitionEvent.persisted documentation> 
getPersisted :: (MonadIO m) => PageTransitionEvent -> m Bool
getPersisted self
  = liftIO (js_getPersisted (unPageTransitionEvent self))
#else
module GHCJS.DOM.PageTransitionEvent (
  ) where
#endif
