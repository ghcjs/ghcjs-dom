{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SubtleCrypto
       (ghcjs_dom_subtle_crypto_encrypt, subtleCryptoEncrypt,
        ghcjs_dom_subtle_crypto_decrypt, subtleCryptoDecrypt,
        ghcjs_dom_subtle_crypto_sign, subtleCryptoSign,
        ghcjs_dom_subtle_crypto_verify, subtleCryptoVerify,
        ghcjs_dom_subtle_crypto_digest, subtleCryptoDigest,
        ghcjs_dom_subtle_crypto_generate_key, subtleCryptoGenerateKey,
        ghcjs_dom_subtle_crypto_import_key, subtleCryptoImportKey,
        ghcjs_dom_subtle_crypto_export_key, subtleCryptoExportKey,
        ghcjs_dom_subtle_crypto_wrap_key, subtleCryptoWrapKey,
        ghcjs_dom_subtle_crypto_unwrap_key, subtleCryptoUnwrapKey,
        SubtleCrypto, IsSubtleCrypto, castToSubtleCrypto,
        gTypeSubtleCrypto, toSubtleCrypto)
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

 
foreign import javascript unsafe "$1[\"encrypt\"]($2, $3, $4)"
        ghcjs_dom_subtle_crypto_encrypt ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
subtleCryptoEncrypt ::
                    (IsSubtleCrypto self, ToJSString algorithm, IsCryptoKey key,
                     IsCryptoOperationData data') =>
                      self ->
                        algorithm -> Maybe key -> [Maybe data'] -> IO (Maybe Promise)
subtleCryptoEncrypt self algorithm key data'
  = (toJSRef data' >>=
       \ data'' ->
         ghcjs_dom_subtle_crypto_encrypt
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           (maybe jsNull (unCryptoKey . toCryptoKey) key)
           data'')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"decrypt\"]($2, $3, $4)"
        ghcjs_dom_subtle_crypto_decrypt ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
subtleCryptoDecrypt ::
                    (IsSubtleCrypto self, ToJSString algorithm, IsCryptoKey key,
                     IsCryptoOperationData data') =>
                      self ->
                        algorithm -> Maybe key -> [Maybe data'] -> IO (Maybe Promise)
subtleCryptoDecrypt self algorithm key data'
  = (toJSRef data' >>=
       \ data'' ->
         ghcjs_dom_subtle_crypto_decrypt
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           (maybe jsNull (unCryptoKey . toCryptoKey) key)
           data'')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"sign\"]($2, $3, $4)"
        ghcjs_dom_subtle_crypto_sign ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
subtleCryptoSign ::
                 (IsSubtleCrypto self, ToJSString algorithm, IsCryptoKey key,
                  IsCryptoOperationData data') =>
                   self ->
                     algorithm -> Maybe key -> [Maybe data'] -> IO (Maybe Promise)
subtleCryptoSign self algorithm key data'
  = (toJSRef data' >>=
       \ data'' ->
         ghcjs_dom_subtle_crypto_sign (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           (maybe jsNull (unCryptoKey . toCryptoKey) key)
           data'')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"verify\"]($2, $3, $4, $5)"
        ghcjs_dom_subtle_crypto_verify ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey ->
              JSRef CryptoOperationData ->
                JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
subtleCryptoVerify ::
                   (IsSubtleCrypto self, ToJSString algorithm, IsCryptoKey key,
                    IsCryptoOperationData signature, IsCryptoOperationData data') =>
                     self ->
                       algorithm ->
                         Maybe key -> Maybe signature -> [Maybe data'] -> IO (Maybe Promise)
subtleCryptoVerify self algorithm key signature data'
  = (toJSRef data' >>=
       \ data'' ->
         ghcjs_dom_subtle_crypto_verify
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           (maybe jsNull (unCryptoKey . toCryptoKey) key)
           (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
              signature)
           data'')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"digest\"]($2, $3)"
        ghcjs_dom_subtle_crypto_digest ::
        JSRef SubtleCrypto ->
          JSString -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
subtleCryptoDigest ::
                   (IsSubtleCrypto self, ToJSString algorithm,
                    IsCryptoOperationData data') =>
                     self -> algorithm -> [Maybe data'] -> IO (Maybe Promise)
subtleCryptoDigest self algorithm data'
  = (toJSRef data' >>=
       \ data'' ->
         ghcjs_dom_subtle_crypto_digest
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           data'')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"generateKey\"]($2, $3, $4)"
        ghcjs_dom_subtle_crypto_generate_key ::
        JSRef SubtleCrypto ->
          JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
subtleCryptoGenerateKey ::
                        (IsSubtleCrypto self, ToJSString algorithm) =>
                          self -> algorithm -> Bool -> [KeyUsage] -> IO (Maybe Promise)
subtleCryptoGenerateKey self algorithm extractable keyUsages
  = (toJSRef keyUsages >>=
       \ keyUsages' ->
         ghcjs_dom_subtle_crypto_generate_key
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString algorithm)
           extractable
           keyUsages')
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"importKey\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_subtle_crypto_import_key ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoOperationData ->
              JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
subtleCryptoImportKey ::
                      (IsSubtleCrypto self, ToJSString format,
                       IsCryptoOperationData keyData, ToJSString algorithm) =>
                        self ->
                          format ->
                            Maybe keyData ->
                              Maybe algorithm -> Bool -> [KeyUsage] -> IO (Maybe Promise)
subtleCryptoImportKey self format keyData algorithm extractable
  keyUsages
  = (toJSRef keyUsages >>=
       \ keyUsages' ->
         ghcjs_dom_subtle_crypto_import_key
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString format)
           (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
              keyData)
           (maybe jsNull toJSString algorithm)
           extractable
           keyUsages')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"exportKey\"]($2, $3)"
        ghcjs_dom_subtle_crypto_export_key ::
        JSRef SubtleCrypto ->
          JSString -> JSRef CryptoKey -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
subtleCryptoExportKey ::
                      (IsSubtleCrypto self, ToJSString format, IsCryptoKey key) =>
                        self -> format -> Maybe key -> IO (Maybe Promise)
subtleCryptoExportKey self format key
  = (ghcjs_dom_subtle_crypto_export_key
       (unSubtleCrypto (toSubtleCrypto self))
       (toJSString format)
       (maybe jsNull (unCryptoKey . toCryptoKey) key))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"wrapKey\"]($2, $3, $4, $5)"
        ghcjs_dom_subtle_crypto_wrap_key ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey ->
              JSRef CryptoKey -> JSString -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
subtleCryptoWrapKey ::
                    (IsSubtleCrypto self, ToJSString format, IsCryptoKey key,
                     IsCryptoKey wrappingKey, ToJSString wrapAlgorithm) =>
                      self ->
                        format ->
                          Maybe key ->
                            Maybe wrappingKey -> wrapAlgorithm -> IO (Maybe Promise)
subtleCryptoWrapKey self format key wrappingKey wrapAlgorithm
  = (ghcjs_dom_subtle_crypto_wrap_key
       (unSubtleCrypto (toSubtleCrypto self))
       (toJSString format)
       (maybe jsNull (unCryptoKey . toCryptoKey) key)
       (maybe jsNull (unCryptoKey . toCryptoKey) wrappingKey)
       (toJSString wrapAlgorithm))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"unwrapKey\"]($2, $3, $4, $5,\n$6, $7, $8)"
        ghcjs_dom_subtle_crypto_unwrap_key ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoOperationData ->
              JSRef CryptoKey ->
                JSString ->
                  JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
subtleCryptoUnwrapKey ::
                      (IsSubtleCrypto self, ToJSString format,
                       IsCryptoOperationData wrappedKey, IsCryptoKey unwrappingKey,
                       ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
                        self ->
                          format ->
                            Maybe wrappedKey ->
                              Maybe unwrappingKey ->
                                unwrapAlgorithm ->
                                  Maybe unwrappedKeyAlgorithm ->
                                    Bool -> [KeyUsage] -> IO (Maybe Promise)
subtleCryptoUnwrapKey self format wrappedKey unwrappingKey
  unwrapAlgorithm unwrappedKeyAlgorithm extractable keyUsages
  = (toJSRef keyUsages >>=
       \ keyUsages' ->
         ghcjs_dom_subtle_crypto_unwrap_key
           (unSubtleCrypto (toSubtleCrypto self))
           (toJSString format)
           (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
              wrappedKey)
           (maybe jsNull (unCryptoKey . toCryptoKey) unwrappingKey)
           (toJSString unwrapAlgorithm)
           (maybe jsNull toJSString unwrappedKeyAlgorithm)
           extractable
           keyUsages')
      >>= fromJSRef
#else
module GHCJS.DOM.SubtleCrypto (
  ) where
#endif
