{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitNamespace
       (js_getMessageHandlers, getMessageHandlers, WebKitNamespace,
        castToWebKitNamespace, gTypeWebKitNamespace)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"messageHandlers\"]"
        js_getMessageHandlers ::
        JSRef WebKitNamespace -> IO (JSRef UserMessageHandlersNamespace)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
getMessageHandlers ::
                   (MonadIO m) =>
                     WebKitNamespace -> m (Maybe UserMessageHandlersNamespace)
getMessageHandlers self
  = liftIO
      ((js_getMessageHandlers (unWebKitNamespace self)) >>= fromJSRef)