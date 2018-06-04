{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeys
       (js_createSession, createSession, createSession_,
        js_setServerCertificate, setServerCertificate,
        setServerCertificate_, MediaKeys(..), gTypeMediaKeys)
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
 
foreign import javascript safe "$1[\"createSession\"]($2)"
        js_createSession ::
        MediaKeys -> Optional MediaKeySessionType -> IO MediaKeySession

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadIO m) =>
                MediaKeys -> Maybe MediaKeySessionType -> m MediaKeySession
createSession self sessionType
  = liftIO (js_createSession self (maybeToOptional sessionType))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession_ ::
               (MonadIO m) => MediaKeys -> Maybe MediaKeySessionType -> m ()
createSession_ self sessionType
  = liftIO
      (void (js_createSession self (maybeToOptional sessionType)))
 
foreign import javascript interruptible
        "$1[\"setServerCertificate\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_setServerCertificate ::
        MediaKeys -> BufferSource -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.setServerCertificate Mozilla WebKitMediaKeys.setServerCertificate documentation> 
setServerCertificate ::
                     (MonadIO m, IsBufferSource serverCertificate) =>
                       MediaKeys -> serverCertificate -> m Bool
setServerCertificate self serverCertificate
  = liftIO
      ((js_setServerCertificate self (toBufferSource serverCertificate))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.setServerCertificate Mozilla WebKitMediaKeys.setServerCertificate documentation> 
setServerCertificate_ ::
                      (MonadIO m, IsBufferSource serverCertificate) =>
                        MediaKeys -> serverCertificate -> m ()
setServerCertificate_ self serverCertificate
  = liftIO
      (void
         (js_setServerCertificate self (toBufferSource serverCertificate)))