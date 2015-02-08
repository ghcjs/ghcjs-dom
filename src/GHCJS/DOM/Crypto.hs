{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Crypto
       (ghcjs_dom_crypto_get_random_values, cryptoGetRandomValues,
        ghcjs_dom_crypto_get_webkit_subtle, cryptoGetWebkitSubtle, Crypto,
        IsCrypto, castToCrypto, gTypeCrypto, toCrypto)
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

 
foreign import javascript unsafe "$1[\"getRandomValues\"]($2)"
        ghcjs_dom_crypto_get_random_values ::
        JSRef Crypto -> JSRef ArrayBufferView -> IO (JSRef ArrayBufferView)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.randomValues Mozilla Crypto.randomValues documentation> 
cryptoGetRandomValues ::
                      (MonadIO m, IsCrypto self, IsArrayBufferView array) =>
                        self -> Maybe array -> m (Maybe ArrayBufferView)
cryptoGetRandomValues self array
  = liftIO
      ((ghcjs_dom_crypto_get_random_values (unCrypto (toCrypto self))
          (maybe jsNull (unArrayBufferView . toArrayBufferView) array))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitSubtle\"]"
        ghcjs_dom_crypto_get_webkit_subtle ::
        JSRef Crypto -> IO (JSRef SubtleCrypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Crypto.webkitSubtle Mozilla Crypto.webkitSubtle documentation> 
cryptoGetWebkitSubtle ::
                      (MonadIO m, IsCrypto self) => self -> m (Maybe SubtleCrypto)
cryptoGetWebkitSubtle self
  = liftIO
      ((ghcjs_dom_crypto_get_webkit_subtle (unCrypto (toCrypto self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.Crypto (
  ) where
#endif
