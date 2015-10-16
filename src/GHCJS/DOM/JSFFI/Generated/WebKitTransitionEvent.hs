{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitTransitionEvent
       (js_getPropertyName, getPropertyName, js_getElapsedTime,
        getElapsedTime, js_getPseudoElement, getPseudoElement,
        WebKitTransitionEvent, castToWebKitTransitionEvent,
        gTypeWebKitTransitionEvent)
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
 
foreign import javascript unsafe "$1[\"propertyName\"]"
        js_getPropertyName :: WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.propertyName Mozilla WebKitTransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadIO m, FromJSString result) =>
                  WebKitTransitionEvent -> m result
getPropertyName self
  = liftIO (fromJSString <$> (js_getPropertyName (self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: WebKitTransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.elapsedTime Mozilla WebKitTransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => WebKitTransitionEvent -> m Double
getElapsedTime self = liftIO (js_getElapsedTime (self))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        js_getPseudoElement :: WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.pseudoElement Mozilla WebKitTransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadIO m, FromJSString result) =>
                   WebKitTransitionEvent -> m result
getPseudoElement self
  = liftIO (fromJSString <$> (js_getPseudoElement (self)))