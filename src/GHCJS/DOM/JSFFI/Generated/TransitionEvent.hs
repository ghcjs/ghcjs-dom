{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TransitionEvent
       (js_getPropertyName, getPropertyName, js_getElapsedTime,
        getElapsedTime, js_getPseudoElement, getPseudoElement,
        TransitionEvent, castToTransitionEvent, gTypeTransitionEvent)
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
        js_getPropertyName :: TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.propertyName Mozilla TransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadIO m, FromJSString result) => TransitionEvent -> m result
getPropertyName self
  = liftIO (fromJSString <$> (js_getPropertyName (self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: TransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.elapsedTime Mozilla TransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => TransitionEvent -> m Double
getElapsedTime self = liftIO (js_getElapsedTime (self))
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        js_getPseudoElement :: TransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TransitionEvent.pseudoElement Mozilla TransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadIO m, FromJSString result) => TransitionEvent -> m result
getPseudoElement self
  = liftIO (fromJSString <$> (js_getPseudoElement (self)))