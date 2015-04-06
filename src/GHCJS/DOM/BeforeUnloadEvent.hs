{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BeforeUnloadEvent
       (js_setReturnValue, setReturnValue, js_getReturnValue,
        getReturnValue, BeforeUnloadEvent, castToBeforeUnloadEvent,
        gTypeBeforeUnloadEvent)
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

 
foreign import javascript unsafe "$1[\"returnValue\"] = $2;"
        js_setReturnValue :: JSRef BeforeUnloadEvent -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
setReturnValue ::
               (MonadIO m, ToJSString val) => BeforeUnloadEvent -> val -> m ()
setReturnValue self val
  = liftIO
      (js_setReturnValue (unBeforeUnloadEvent self) (toJSString val))
 
foreign import javascript unsafe "$1[\"returnValue\"]"
        js_getReturnValue :: JSRef BeforeUnloadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeUnloadEvent.returnValue Mozilla BeforeUnloadEvent.returnValue documentation> 
getReturnValue ::
               (MonadIO m, FromJSString result) => BeforeUnloadEvent -> m result
getReturnValue self
  = liftIO
      (fromJSString <$> (js_getReturnValue (unBeforeUnloadEvent self)))
#else
module GHCJS.DOM.BeforeUnloadEvent (
  ) where
#endif
