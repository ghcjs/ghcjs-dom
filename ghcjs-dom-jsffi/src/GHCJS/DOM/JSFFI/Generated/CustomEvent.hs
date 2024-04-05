{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CustomEvent
       (js_newCustomEvent, newCustomEvent, js_initCustomEvent,
        initCustomEvent, js_getDetail, getDetail, CustomEvent(..),
        gTypeCustomEvent)
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
        "new window[\"CustomEvent\"]($1,\n$2)" js_newCustomEvent ::
        JSString -> Optional CustomEventInit -> IO CustomEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent Mozilla CustomEvent documentation> 
newCustomEvent ::
               (MonadIO m, ToJSString type') =>
                 type' -> Maybe CustomEventInit -> m CustomEvent
newCustomEvent type' eventInitDict
  = liftIO
      (js_newCustomEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe
        "$1[\"initCustomEvent\"]($2, $3,\n$4, $5)" js_initCustomEvent ::
        CustomEvent -> JSString -> Bool -> Bool -> Optional JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.initCustomEvent Mozilla CustomEvent.initCustomEvent documentation> 
initCustomEvent ::
                (MonadIO m, ToJSString type', ToJSVal detail) =>
                  CustomEvent -> type' -> Bool -> Bool -> Maybe detail -> m ()
initCustomEvent self type' bubbles cancelable detail
  = liftIO
      (mapM toJSVal detail >>=
         \ detail' ->
           js_initCustomEvent self (toJSString type') bubbles cancelable
             (maybeToOptional detail'))
 
foreign import javascript unsafe "$1[\"detail\"]" js_getDetail ::
        CustomEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent.detail Mozilla CustomEvent.detail documentation> 
getDetail :: (MonadIO m) => CustomEvent -> m JSVal
getDetail self = liftIO (js_getDetail self)