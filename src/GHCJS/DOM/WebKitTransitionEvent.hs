{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitTransitionEvent
       (js_getPropertyName, getPropertyName, js_getElapsedTime,
        getElapsedTime, js_getPseudoElement, getPseudoElement,
        WebKitTransitionEvent, castToWebKitTransitionEvent,
        gTypeWebKitTransitionEvent)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"propertyName\"]"
        js_getPropertyName :: JSRef WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.propertyName Mozilla WebKitTransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadIO m, FromJSString result) =>
                  WebKitTransitionEvent -> m result
getPropertyName self
  = liftIO
      (fromJSString <$>
         (js_getPropertyName (unWebKitTransitionEvent self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: JSRef WebKitTransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.elapsedTime Mozilla WebKitTransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => WebKitTransitionEvent -> m Double
getElapsedTime self
  = liftIO (js_getElapsedTime (unWebKitTransitionEvent self))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        js_getPseudoElement :: JSRef WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.pseudoElement Mozilla WebKitTransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadIO m, FromJSString result) =>
                   WebKitTransitionEvent -> m result
getPseudoElement self
  = liftIO
      (fromJSString <$>
         (js_getPseudoElement (unWebKitTransitionEvent self)))
#else
module GHCJS.DOM.WebKitTransitionEvent (
  ) where
#endif
