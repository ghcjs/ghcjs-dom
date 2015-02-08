{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CryptoKey
       (ghcjs_dom_crypto_key_get_extractable, cryptoKeyGetExtractable,
        ghcjs_dom_crypto_key_get_algorithm, cryptoKeyGetAlgorithm,
        ghcjs_dom_crypto_key_get_usages, cryptoKeyGetUsages, CryptoKey,
        IsCryptoKey, castToCryptoKey, gTypeCryptoKey, toCryptoKey)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"extractable\"] ? 1 : 0)"
        ghcjs_dom_crypto_key_get_extractable :: JSRef CryptoKey -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.extractable Mozilla Key.extractable documentation> 
cryptoKeyGetExtractable ::
                        (MonadIO m, IsCryptoKey self) => self -> m Bool
cryptoKeyGetExtractable self
  = liftIO
      (ghcjs_dom_crypto_key_get_extractable
         (unCryptoKey (toCryptoKey self)))
 
foreign import javascript unsafe "$1[\"algorithm\"]"
        ghcjs_dom_crypto_key_get_algorithm ::
        JSRef CryptoKey -> IO (JSRef Algorithm)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.algorithm Mozilla Key.algorithm documentation> 
cryptoKeyGetAlgorithm ::
                      (MonadIO m, IsCryptoKey self) => self -> m (Maybe Algorithm)
cryptoKeyGetAlgorithm self
  = liftIO
      ((ghcjs_dom_crypto_key_get_algorithm
          (unCryptoKey (toCryptoKey self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"usages\"]"
        ghcjs_dom_crypto_key_get_usages ::
        JSRef CryptoKey -> IO (JSRef [KeyUsage])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.usages Mozilla Key.usages documentation> 
cryptoKeyGetUsages ::
                   (MonadIO m, IsCryptoKey self) => self -> m [KeyUsage]
cryptoKeyGetUsages self
  = liftIO
      ((ghcjs_dom_crypto_key_get_usages (unCryptoKey (toCryptoKey self)))
         >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.CryptoKey (
  ) where
#endif
