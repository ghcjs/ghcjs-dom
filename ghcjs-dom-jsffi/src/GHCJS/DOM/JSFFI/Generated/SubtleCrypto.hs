{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SubtleCrypto
       (js_encrypt, encrypt, encrypt_, js_decrypt, decrypt, decrypt_,
        js_sign, sign, sign_, js_verify, verify, verify_, js_digest,
        digest, digest_, js_deriveKey, deriveKey, deriveKey_,
        js_deriveBits, deriveBits, deriveBits_, js_generateKey,
        generateKey, generateKey_, js_importKey, importKey, importKey_,
        js_exportKey, exportKey, exportKey_, js_wrapKey, wrapKey, wrapKey_,
        js_unwrapKey, unwrapKey, unwrapKey_, SubtleCrypto(..),
        gTypeSubtleCrypto)
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
 
foreign import javascript interruptible
        "$1[\"encrypt\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_encrypt ::
        SubtleCrypto ->
          JSString -> CryptoKey -> BufferSource -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
encrypt self algorithm key data'
  = liftIO
      ((js_encrypt self (toJSString algorithm) key
          (toBufferSource data'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
           SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
encrypt_ self algorithm key data'
  = liftIO
      (void
         (js_encrypt self (toJSString algorithm) key
            (toBufferSource data')))
 
foreign import javascript interruptible
        "$1[\"decrypt\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_decrypt ::
        SubtleCrypto ->
          JSString -> CryptoKey -> BufferSource -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
decrypt self algorithm key data'
  = liftIO
      ((js_decrypt self (toJSString algorithm) key
          (toBufferSource data'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
           SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
decrypt_ self algorithm key data'
  = liftIO
      (void
         (js_decrypt self (toJSString algorithm) key
            (toBufferSource data')))
 
foreign import javascript interruptible
        "$1[\"sign\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_sign ::
        SubtleCrypto ->
          JSString -> CryptoKey -> BufferSource -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
       SubtleCrypto -> algorithm -> CryptoKey -> data' -> m JSVal
sign self algorithm key data'
  = liftIO
      ((js_sign self (toJSString algorithm) key (toBufferSource data'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
        SubtleCrypto -> algorithm -> CryptoKey -> data' -> m ()
sign_ self algorithm key data'
  = liftIO
      (void
         (js_sign self (toJSString algorithm) key (toBufferSource data')))
 
foreign import javascript interruptible
        "$1[\"verify\"]($2, $3, $4, $5).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_verify ::
        SubtleCrypto ->
          JSString ->
            CryptoKey -> BufferSource -> BufferSource -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadIO m, ToJSString algorithm, IsBufferSource signature,
        IsBufferSource data') =>
         SubtleCrypto ->
           algorithm -> CryptoKey -> signature -> data' -> m JSVal
verify self algorithm key signature data'
  = liftIO
      ((js_verify self (toJSString algorithm) key
          (toBufferSource signature)
          (toBufferSource data'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadIO m, ToJSString algorithm, IsBufferSource signature,
         IsBufferSource data') =>
          SubtleCrypto ->
            algorithm -> CryptoKey -> signature -> data' -> m ()
verify_ self algorithm key signature data'
  = liftIO
      (void
         (js_verify self (toJSString algorithm) key
            (toBufferSource signature)
            (toBufferSource data')))
 
foreign import javascript interruptible
        "$1[\"digest\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_digest ::
        SubtleCrypto -> JSString -> BufferSource -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
         SubtleCrypto -> algorithm -> data' -> m JSVal
digest self algorithm data'
  = liftIO
      ((js_digest self (toJSString algorithm) (toBufferSource data')) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadIO m, ToJSString algorithm, IsBufferSource data') =>
          SubtleCrypto -> algorithm -> data' -> m ()
digest_ self algorithm data'
  = liftIO
      (void
         (js_digest self (toJSString algorithm) (toBufferSource data')))
 
foreign import javascript interruptible
        "$1[\"deriveKey\"]($2, $3, $4, $5,\n$6).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_deriveKey ::
        SubtleCrypto ->
          JSString ->
            CryptoKey -> JSString -> Bool -> JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveKey Mozilla WebKitSubtleCrypto.deriveKey documentation> 
deriveKey ::
          (MonadIO m, ToJSString algorithm, ToJSString derivedKeyType) =>
            SubtleCrypto ->
              algorithm ->
                CryptoKey -> derivedKeyType -> Bool -> [CryptoKeyUsage] -> m JSVal
deriveKey self algorithm baseKey derivedKeyType extractable
  keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_deriveKey self (toJSString algorithm) baseKey
              (toJSString derivedKeyType)
              extractable
              keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveKey Mozilla WebKitSubtleCrypto.deriveKey documentation> 
deriveKey_ ::
           (MonadIO m, ToJSString algorithm, ToJSString derivedKeyType) =>
             SubtleCrypto ->
               algorithm ->
                 CryptoKey -> derivedKeyType -> Bool -> [CryptoKeyUsage] -> m ()
deriveKey_ self algorithm baseKey derivedKeyType extractable
  keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_deriveKey self (toJSString algorithm) baseKey
                (toJSString derivedKeyType)
                extractable
                keyUsages'))
 
foreign import javascript interruptible
        "$1[\"deriveBits\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_deriveBits ::
        SubtleCrypto ->
          JSString -> CryptoKey -> Word -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveBits Mozilla WebKitSubtleCrypto.deriveBits documentation> 
deriveBits ::
           (MonadIO m, ToJSString algorithm) =>
             SubtleCrypto -> algorithm -> CryptoKey -> Word -> m ArrayBuffer
deriveBits self algorithm baseKey length
  = liftIO
      ((js_deriveBits self (toJSString algorithm) baseKey length) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.deriveBits Mozilla WebKitSubtleCrypto.deriveBits documentation> 
deriveBits_ ::
            (MonadIO m, ToJSString algorithm) =>
              SubtleCrypto -> algorithm -> CryptoKey -> Word -> m ()
deriveBits_ self algorithm baseKey length
  = liftIO
      (void (js_deriveBits self (toJSString algorithm) baseKey length))
 
foreign import javascript interruptible
        "$1[\"generateKey\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_generateKey ::
        SubtleCrypto -> JSString -> Bool -> JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadIO m, ToJSString algorithm) =>
              SubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m JSVal
generateKey self algorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_generateKey self (toJSString algorithm) extractable keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadIO m, ToJSString algorithm) =>
               SubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_generateKey self (toJSString algorithm) extractable keyUsages'))
 
foreign import javascript interruptible
        "$1[\"importKey\"]($2, $3, $4, $5,\n$6).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_importKey ::
        SubtleCrypto ->
          JSString ->
            KeyData -> JSString -> Bool -> JSVal -> IO (JSVal, CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadIO m, ToJSString format, IsKeyData keyData,
           ToJSString algorithm) =>
            SubtleCrypto ->
              format ->
                keyData -> algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
importKey self format keyData algorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            toJSVal keyData >>=
              \ keyData' ->
                js_importKey self (toJSString format) (KeyData keyData')
              (toJSString algorithm)
              extractable
              keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadIO m, ToJSString format, IsKeyData keyData,
            ToJSString algorithm) =>
             SubtleCrypto ->
               format -> keyData -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              toJSVal keyData >>=
                \ keyData' ->
                  js_importKey self (toJSString format) (KeyData keyData')
                (toJSString algorithm)
                extractable
                keyUsages'))
 
foreign import javascript interruptible
        "$1[\"exportKey\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_exportKey ::
        SubtleCrypto -> JSString -> CryptoKey -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadIO m, ToJSString format) =>
            SubtleCrypto -> format -> CryptoKey -> m JSVal
exportKey self format key
  = liftIO
      ((js_exportKey self (toJSString format) key) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadIO m, ToJSString format) =>
             SubtleCrypto -> format -> CryptoKey -> m ()
exportKey_ self format key
  = liftIO (void (js_exportKey self (toJSString format) key))
 
foreign import javascript interruptible
        "$1[\"wrapKey\"]($2, $3, $4, $5).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_wrapKey ::
        SubtleCrypto ->
          JSString -> CryptoKey -> CryptoKey -> JSString -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
          SubtleCrypto ->
            format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m JSVal
wrapKey self format key wrappingKey wrapAlgorithm
  = liftIO
      ((js_wrapKey self (toJSString format) key wrappingKey
          (toJSString wrapAlgorithm))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
           SubtleCrypto ->
             format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftIO
      (void
         (js_wrapKey self (toJSString format) key wrappingKey
            (toJSString wrapAlgorithm)))
 
foreign import javascript interruptible
        "$1[\"unwrapKey\"]($2, $3, $4, $5,\n$6, $7, $8).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_unwrapKey ::
        SubtleCrypto ->
          JSString ->
            BufferSource ->
              CryptoKey ->
                JSString -> JSString -> Bool -> JSVal -> IO (JSVal, CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadIO m, ToJSString format, IsBufferSource wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            SubtleCrypto ->
              format ->
                wrappedKey ->
                  CryptoKey ->
                    unwrapAlgorithm ->
                      unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
unwrapKey self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_unwrapKey self (toJSString format) (toBufferSource wrappedKey)
              unwrappingKey
              (toJSString unwrapAlgorithm)
              (toJSString unwrappedKeyAlgorithm)
              extractable
              keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey_ ::
           (MonadIO m, ToJSString format, IsBufferSource wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             SubtleCrypto ->
               format ->
                 wrappedKey ->
                   CryptoKey ->
                     unwrapAlgorithm ->
                       unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_unwrapKey self (toJSString format) (toBufferSource wrappedKey)
                unwrappingKey
                (toJSString unwrapAlgorithm)
                (toJSString unwrappedKeyAlgorithm)
                extractable
                keyUsages'))