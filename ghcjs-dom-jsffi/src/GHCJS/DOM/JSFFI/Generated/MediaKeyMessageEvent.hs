{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyMessageEvent
       (js_newMediaKeyMessageEvent, newMediaKeyMessageEvent,
        js_getMessageType, getMessageType, js_getMessage, getMessage,
        MediaKeyMessageEvent(..), gTypeMediaKeyMessageEvent)
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
        "new window[\"WebKitMediaKeyMessageEvent\"]($1,\n$2)"
        js_newMediaKeyMessageEvent ::
        JSString -> MediaKeyMessageEventInit -> IO MediaKeyMessageEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation> 
newMediaKeyMessageEvent ::
                        (MonadIO m, ToJSString type') =>
                          type' -> MediaKeyMessageEventInit -> m MediaKeyMessageEvent
newMediaKeyMessageEvent type' eventInitDict
  = liftIO
      (js_newMediaKeyMessageEvent (toJSString type') eventInitDict)
 
foreign import javascript unsafe "$1[\"messageType\"]"
        js_getMessageType :: MediaKeyMessageEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.messageType Mozilla WebKitMediaKeyMessageEvent.messageType documentation> 
getMessageType ::
               (MonadIO m) => MediaKeyMessageEvent -> m MediaKeyMessageType
getMessageType self
  = liftIO ((js_getMessageType self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        MediaKeyMessageEvent -> IO ArrayBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage :: (MonadIO m) => MediaKeyMessageEvent -> m ArrayBuffer
getMessage self = liftIO (js_getMessage self)