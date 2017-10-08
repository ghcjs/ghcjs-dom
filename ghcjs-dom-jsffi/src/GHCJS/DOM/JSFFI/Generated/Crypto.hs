{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Crypto
       (js_getRandomValues, getRandomValues, getRandomValues_,
        js_getSubtle, getSubtle, js_getWebkitSubtle, getWebkitSubtle,
        Crypto(..), gTypeCrypto)
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
 
foreign import javascript safe "$1[\"getRandomValues\"]($2)"
        js_getRandomValues ::
        Crypto -> ArrayBufferView -> IO ArrayBufferView

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues ::
                (MonadIO m, IsArrayBufferView array) =>
                  Crypto -> array -> m ArrayBufferView
getRandomValues self array
  = liftIO (js_getRandomValues self (toArrayBufferView array))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.getRandomValues Mozilla Crypto.getRandomValues documentation> 
getRandomValues_ ::
                 (MonadIO m, IsArrayBufferView array) => Crypto -> array -> m ()
getRandomValues_ self array
  = liftIO (void (js_getRandomValues self (toArrayBufferView array)))
 
foreign import javascript unsafe "$1[\"subtle\"]" js_getSubtle ::
        Crypto -> IO SubtleCrypto

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.subtle Mozilla Crypto.subtle documentation> 
getSubtle :: (MonadIO m) => Crypto -> m SubtleCrypto
getSubtle self = liftIO (js_getSubtle self)
 
foreign import javascript safe "$1[\"webkitSubtle\"]"
        js_getWebkitSubtle :: Crypto -> IO WebKitSubtleCrypto

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
getWebkitSubtle :: (MonadIO m) => Crypto -> m WebKitSubtleCrypto
getWebkitSubtle self = liftIO (js_getWebkitSubtle self)