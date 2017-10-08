{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.BeforeUnloadEvent
       (js_setReturnValue, setReturnValue, js_getReturnValue,
        getReturnValue, BeforeUnloadEvent(..), gTypeBeforeUnloadEvent)
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
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        js_setReturnValue :: BeforeUnloadEvent -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
setReturnValue ::
               (MonadIO m, ToJSString val) => BeforeUnloadEvent -> val -> m ()
setReturnValue self val
  = liftIO (js_setReturnValue self (toJSString val))
 
foreign import javascript unsafe "$1[\"returnValue\"]"
        js_getReturnValue :: BeforeUnloadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
getReturnValue ::
               (MonadIO m, FromJSString result) => BeforeUnloadEvent -> m result
getReturnValue self
  = liftIO (fromJSString <$> (js_getReturnValue self))