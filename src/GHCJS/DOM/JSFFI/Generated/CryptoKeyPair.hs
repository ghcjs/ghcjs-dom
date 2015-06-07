{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CryptoKeyPair
       (js_getPublicKey, getPublicKey, js_getPrivateKey, getPrivateKey,
        CryptoKeyPair, castToCryptoKeyPair, gTypeCryptoKeyPair)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"publicKey\"]"
        js_getPublicKey :: JSRef CryptoKeyPair -> IO (JSRef CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.publicKey Mozilla CryptoKeyPair.publicKey documentation> 
getPublicKey :: (MonadIO m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPublicKey self
  = liftIO ((js_getPublicKey (unCryptoKeyPair self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"privateKey\"]"
        js_getPrivateKey :: JSRef CryptoKeyPair -> IO (JSRef CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKeyPair.privateKey Mozilla CryptoKeyPair.privateKey documentation> 
getPrivateKey ::
              (MonadIO m) => CryptoKeyPair -> m (Maybe CryptoKey)
getPrivateKey self
  = liftIO ((js_getPrivateKey (unCryptoKeyPair self)) >>= fromJSRef)