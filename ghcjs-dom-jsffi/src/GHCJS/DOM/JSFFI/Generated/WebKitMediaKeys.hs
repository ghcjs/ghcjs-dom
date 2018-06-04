{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitMediaKeys
       (js_newWebKitMediaKeys, newWebKitMediaKeys, js_createSession,
        createSession, createSession_, js_isTypeSupported, isTypeSupported,
        isTypeSupported_, js_getKeySystem, getKeySystem,
        WebKitMediaKeys(..), gTypeWebKitMediaKeys)
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
 
foreign import javascript safe
        "new window[\"WebKitMediaKeys\"]($1)" js_newWebKitMediaKeys ::
        JSString -> IO WebKitMediaKeys

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys Mozilla WebKitMediaKeys documentation> 
newWebKitMediaKeys ::
                   (MonadIO m, ToJSString keySystem) => keySystem -> m WebKitMediaKeys
newWebKitMediaKeys keySystem
  = liftIO (js_newWebKitMediaKeys (toJSString keySystem))
 
foreign import javascript safe "$1[\"createSession\"]($2, $3)"
        js_createSession ::
        WebKitMediaKeys ->
          JSString -> Uint8Array -> IO WebKitMediaKeySession

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession ::
              (MonadIO m, ToJSString type', IsUint8Array initData) =>
                WebKitMediaKeys -> type' -> initData -> m WebKitMediaKeySession
createSession self type' initData
  = liftIO
      (js_createSession self (toJSString type') (toUint8Array initData))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.createSession Mozilla WebKitMediaKeys.createSession documentation> 
createSession_ ::
               (MonadIO m, ToJSString type', IsUint8Array initData) =>
                 WebKitMediaKeys -> type' -> initData -> m ()
createSession_ self type' initData
  = liftIO
      (void
         (js_createSession self (toJSString type') (toUint8Array initData)))
 
foreign import javascript unsafe
        "(window[\"WebKitMediaKeys\"][\"isTypeSupported\"]($1,\n$2) ? 1 : 0)"
        js_isTypeSupported :: JSString -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported ::
                (MonadIO m, ToJSString keySystem, ToJSString type') =>
                  keySystem -> Maybe type' -> m Bool
isTypeSupported keySystem type'
  = liftIO
      (js_isTypeSupported (toJSString keySystem)
         (toOptionalJSString type'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.isTypeSupported Mozilla WebKitMediaKeys.isTypeSupported documentation> 
isTypeSupported_ ::
                 (MonadIO m, ToJSString keySystem, ToJSString type') =>
                   keySystem -> Maybe type' -> m ()
isTypeSupported_ keySystem type'
  = liftIO
      (void
         (js_isTypeSupported (toJSString keySystem)
            (toOptionalJSString type')))
 
foreign import javascript unsafe "$1[\"keySystem\"]"
        js_getKeySystem :: WebKitMediaKeys -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeys.keySystem Mozilla WebKitMediaKeys.keySystem documentation> 
getKeySystem ::
             (MonadIO m, FromJSString result) => WebKitMediaKeys -> m result
getKeySystem self
  = liftIO (fromJSString <$> (js_getKeySystem self))