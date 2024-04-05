{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGLContextEvent
       (js_newWebGLContextEvent, newWebGLContextEvent,
        js_getStatusMessage, getStatusMessage, WebGLContextEvent(..),
        gTypeWebGLContextEvent)
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
        "new window[\"WebGLContextEvent\"]($1,\n$2)"
        js_newWebGLContextEvent ::
        JSString -> Optional WebGLContextEventInit -> IO WebGLContextEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent Mozilla WebGLContextEvent documentation> 
newWebGLContextEvent ::
                     (MonadIO m, ToJSString type') =>
                       type' -> Maybe WebGLContextEventInit -> m WebGLContextEvent
newWebGLContextEvent type' eventInit
  = liftIO
      (js_newWebGLContextEvent (toJSString type')
         (maybeToOptional eventInit))
 
foreign import javascript unsafe "$1[\"statusMessage\"]"
        js_getStatusMessage :: WebGLContextEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent.statusMessage Mozilla WebGLContextEvent.statusMessage documentation> 
getStatusMessage ::
                 (MonadIO m, FromJSString result) => WebGLContextEvent -> m result
getStatusMessage self
  = liftIO (fromJSString <$> (js_getStatusMessage self))