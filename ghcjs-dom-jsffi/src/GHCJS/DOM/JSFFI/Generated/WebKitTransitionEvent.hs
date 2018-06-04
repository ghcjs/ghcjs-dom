{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitTransitionEvent
       (js_newWebKitTransitionEvent, newWebKitTransitionEvent,
        js_getPropertyName, getPropertyName, js_getElapsedTime,
        getElapsedTime, js_getPseudoElement, getPseudoElement,
        WebKitTransitionEvent(..), gTypeWebKitTransitionEvent)
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
        "new window[\"WebKitTransitionEvent\"]($1,\n$2)"
        js_newWebKitTransitionEvent ::
        JSString ->
          Optional WebKitTransitionEventInit -> IO WebKitTransitionEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent Mozilla WebKitTransitionEvent documentation> 
newWebKitTransitionEvent ::
                         (MonadIO m, ToJSString type') =>
                           type' -> Maybe WebKitTransitionEventInit -> m WebKitTransitionEvent
newWebKitTransitionEvent type' eventInitDict
  = liftIO
      (js_newWebKitTransitionEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"propertyName\"]"
        js_getPropertyName :: WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.propertyName Mozilla WebKitTransitionEvent.propertyName documentation> 
getPropertyName ::
                (MonadIO m, FromJSString result) =>
                  WebKitTransitionEvent -> m result
getPropertyName self
  = liftIO (fromJSString <$> (js_getPropertyName self))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: WebKitTransitionEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.elapsedTime Mozilla WebKitTransitionEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => WebKitTransitionEvent -> m Double
getElapsedTime self = liftIO (js_getElapsedTime self)
 
foreign import javascript unsafe "$1[\"pseudoElement\"]"
        js_getPseudoElement :: WebKitTransitionEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitTransitionEvent.pseudoElement Mozilla WebKitTransitionEvent.pseudoElement documentation> 
getPseudoElement ::
                 (MonadIO m, FromJSString result) =>
                   WebKitTransitionEvent -> m result
getPseudoElement self
  = liftIO (fromJSString <$> (js_getPseudoElement self))