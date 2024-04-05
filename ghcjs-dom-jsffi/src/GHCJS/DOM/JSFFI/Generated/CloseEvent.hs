{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CloseEvent
       (js_newCloseEvent, newCloseEvent, js_getWasClean, getWasClean,
        js_getCode, getCode, js_getReason, getReason, CloseEvent(..),
        gTypeCloseEvent)
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
        "new window[\"CloseEvent\"]($1, $2)" js_newCloseEvent ::
        JSString -> Optional CloseEventInit -> IO CloseEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent Mozilla CloseEvent documentation> 
newCloseEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe CloseEventInit -> m CloseEvent
newCloseEvent type' eventInitDict
  = liftIO
      (js_newCloseEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "($1[\"wasClean\"] ? 1 : 0)"
        js_getWasClean :: CloseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.wasClean Mozilla CloseEvent.wasClean documentation> 
getWasClean :: (MonadIO m) => CloseEvent -> m Bool
getWasClean self = liftIO (js_getWasClean self)
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        CloseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.code Mozilla CloseEvent.code documentation> 
getCode :: (MonadIO m) => CloseEvent -> m Word
getCode self = liftIO (js_getCode self)
 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        CloseEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.reason Mozilla CloseEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) => CloseEvent -> m result
getReason self = liftIO (fromJSString <$> (js_getReason self))