{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.BeforeUnloadEvent
       (js_setReturnValue, setReturnValue, js_getReturnValue,
        getReturnValue, BeforeUnloadEvent, castToBeforeUnloadEvent,
        gTypeBeforeUnloadEvent)
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
 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        js_setReturnValue :: BeforeUnloadEvent -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
setReturnValue ::
               (MonadIO m, ToJSString val) => BeforeUnloadEvent -> val -> m ()
setReturnValue self val
  = liftIO (js_setReturnValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"returnValue\"]"
        js_getReturnValue :: BeforeUnloadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
getReturnValue ::
               (MonadIO m, FromJSString result) => BeforeUnloadEvent -> m result
getReturnValue self
  = liftIO (fromJSString <$> (js_getReturnValue (self)))