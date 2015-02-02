{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CryptoKeyPair
       (ghcjs_dom_crypto_key_pair_get_public_key,
        cryptoKeyPairGetPublicKey,
        ghcjs_dom_crypto_key_pair_get_private_key,
        cryptoKeyPairGetPrivateKey, CryptoKeyPair, IsCryptoKeyPair,
        castToCryptoKeyPair, gTypeCryptoKeyPair, toCryptoKeyPair)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"publicKey\"]"
        ghcjs_dom_crypto_key_pair_get_public_key ::
        JSRef CryptoKeyPair -> IO (JSRef CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyPair.publicKey Mozilla KeyPair.publicKey documentation> 
cryptoKeyPairGetPublicKey ::
                          (IsCryptoKeyPair self) => self -> IO (Maybe CryptoKey)
cryptoKeyPairGetPublicKey self
  = (ghcjs_dom_crypto_key_pair_get_public_key
       (unCryptoKeyPair (toCryptoKeyPair self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"privateKey\"]"
        ghcjs_dom_crypto_key_pair_get_private_key ::
        JSRef CryptoKeyPair -> IO (JSRef CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/KeyPair.privateKey Mozilla KeyPair.privateKey documentation> 
cryptoKeyPairGetPrivateKey ::
                           (IsCryptoKeyPair self) => self -> IO (Maybe CryptoKey)
cryptoKeyPairGetPrivateKey self
  = (ghcjs_dom_crypto_key_pair_get_private_key
       (unCryptoKeyPair (toCryptoKeyPair self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CryptoKeyPair (
  ) where
#endif
