{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitSubtleCrypto
       (js_encrypt, encrypt, encrypt_, js_decrypt, decrypt, decrypt_,
        js_sign, sign, sign_, js_verify, verify, verify_, js_digest,
        digest, digest_, js_generateKey, generateKey, generateKey_,
        js_importKey, importKey, importKey_, js_exportKey, exportKey,
        exportKey_, js_wrapKey, wrapKey, wrapKey_, js_unwrapKey, unwrapKey,
        unwrapKey_, WebKitSubtleCrypto(..), gTypeWebKitSubtleCrypto)
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
        WebKitSubtleCrypto ->
          JSString -> CryptoKey -> JSVal -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
encrypt self algorithm key data'
  = liftIO
      ((toJSVal data' >>=
          \ data'' -> js_encrypt self (toJSString algorithm) key data'')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
           WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
encrypt_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' -> js_encrypt self (toJSString algorithm) key data''))
 
foreign import javascript interruptible
        "$1[\"decrypt\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_decrypt ::
        WebKitSubtleCrypto ->
          JSString -> CryptoKey -> JSVal -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
decrypt self algorithm key data'
  = liftIO
      ((toJSVal data' >>=
          \ data'' -> js_decrypt self (toJSString algorithm) key data'')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
           WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
decrypt_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' -> js_decrypt self (toJSString algorithm) key data''))
 
foreign import javascript interruptible
        "$1[\"sign\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_sign ::
        WebKitSubtleCrypto ->
          JSString -> CryptoKey -> JSVal -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
       WebKitSubtleCrypto ->
         algorithm -> CryptoKey -> [data'] -> m ArrayBuffer
sign self algorithm key data'
  = liftIO
      ((toJSVal data' >>=
          \ data'' -> js_sign self (toJSString algorithm) key data'')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
        WebKitSubtleCrypto -> algorithm -> CryptoKey -> [data'] -> m ()
sign_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' -> js_sign self (toJSString algorithm) key data''))
 
foreign import javascript interruptible
        "$1[\"verify\"]($2, $3, $4, $5).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_verify ::
        WebKitSubtleCrypto ->
          JSString ->
            CryptoKey -> CryptoOperationData -> JSVal -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
        IsCryptoOperationData data') =>
         WebKitSubtleCrypto ->
           algorithm -> CryptoKey -> signature -> [data'] -> m Bool
verify self algorithm key signature data'
  = liftIO
      ((toJSVal data' >>=
          \ data'' ->
            js_verify self (toJSString algorithm) key
              (toCryptoOperationData signature)
              data'')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
         IsCryptoOperationData data') =>
          WebKitSubtleCrypto ->
            algorithm -> CryptoKey -> signature -> [data'] -> m ()
verify_ self algorithm key signature data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' ->
              js_verify self (toJSString algorithm) key
                (toCryptoOperationData signature)
                data''))
 
foreign import javascript interruptible
        "$1[\"digest\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_digest ::
        WebKitSubtleCrypto -> JSString -> JSVal -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
         WebKitSubtleCrypto -> algorithm -> [data'] -> m ArrayBuffer
digest self algorithm data'
  = liftIO
      ((toJSVal data' >>=
          \ data'' -> js_digest self (toJSString algorithm) data'')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          WebKitSubtleCrypto -> algorithm -> [data'] -> m ()
digest_ self algorithm data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' -> js_digest self (toJSString algorithm) data''))
 
foreign import javascript interruptible
        "$1[\"generateKey\"]($2, $3, $4).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_generateKey ::
        WebKitSubtleCrypto ->
          JSString -> Bool -> JSVal -> IO (JSVal, CryptoKeyOrKeyPair)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadIO m, ToJSString algorithm) =>
              WebKitSubtleCrypto ->
                algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKeyOrKeyPair
generateKey self algorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_generateKey self (toJSString algorithm) extractable keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadIO m, ToJSString algorithm) =>
               WebKitSubtleCrypto -> algorithm -> Bool -> [CryptoKeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_generateKey self (toJSString algorithm) extractable keyUsages'))
 
foreign import javascript interruptible
        "$1[\"importKey\"]($2, $3, $4, $5,\n$6).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_importKey ::
        WebKitSubtleCrypto ->
          JSString ->
            CryptoOperationData ->
              Optional JSString -> Bool -> JSVal -> IO (JSVal, CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
           ToJSString algorithm) =>
            WebKitSubtleCrypto ->
              format ->
                keyData ->
                  Maybe algorithm -> Bool -> [CryptoKeyUsage] -> m CryptoKey
importKey self format keyData algorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_importKey self (toJSString format)
              (toCryptoOperationData keyData)
              (toOptionalJSString algorithm)
              extractable
              keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
            ToJSString algorithm) =>
             WebKitSubtleCrypto ->
               format ->
                 keyData -> Maybe algorithm -> Bool -> [CryptoKeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_importKey self (toJSString format)
                (toCryptoOperationData keyData)
                (toOptionalJSString algorithm)
                extractable
                keyUsages'))
 
foreign import javascript interruptible
        "$1[\"exportKey\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_exportKey ::
        WebKitSubtleCrypto ->
          JSString -> CryptoKey -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadIO m, ToJSString format) =>
            WebKitSubtleCrypto -> format -> CryptoKey -> m ArrayBuffer
exportKey self format key
  = liftIO
      ((js_exportKey self (toJSString format) key) >>=
         checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadIO m, ToJSString format) =>
             WebKitSubtleCrypto -> format -> CryptoKey -> m ()
exportKey_ self format key
  = liftIO (void (js_exportKey self (toJSString format) key))
 
foreign import javascript interruptible
        "$1[\"wrapKey\"]($2, $3, $4, $5).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_wrapKey ::
        WebKitSubtleCrypto ->
          JSString ->
            CryptoKey -> CryptoKey -> JSString -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
          WebKitSubtleCrypto ->
            format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ArrayBuffer
wrapKey self format key wrappingKey wrapAlgorithm
  = liftIO
      ((js_wrapKey self (toJSString format) key wrappingKey
          (toJSString wrapAlgorithm))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
           WebKitSubtleCrypto ->
             format -> CryptoKey -> CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftIO
      (void
         (js_wrapKey self (toJSString format) key wrappingKey
            (toJSString wrapAlgorithm)))
 
foreign import javascript interruptible
        "$1[\"unwrapKey\"]($2, $3, $4, $5,\n$6, $7, $8).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_unwrapKey ::
        WebKitSubtleCrypto ->
          JSString ->
            CryptoOperationData ->
              CryptoKey ->
                JSString ->
                  Optional JSString -> Bool -> JSVal -> IO (JSVal, CryptoKey)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            WebKitSubtleCrypto ->
              format ->
                wrappedKey ->
                  CryptoKey ->
                    unwrapAlgorithm ->
                      Maybe unwrappedKeyAlgorithm ->
                        Bool -> [CryptoKeyUsage] -> m CryptoKey
unwrapKey self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      ((toJSVal keyUsages >>=
          \ keyUsages' ->
            js_unwrapKey self (toJSString format)
              (toCryptoOperationData wrappedKey)
              unwrappingKey
              (toJSString unwrapAlgorithm)
              (toOptionalJSString unwrappedKeyAlgorithm)
              extractable
              keyUsages')
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey_ ::
           (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             WebKitSubtleCrypto ->
               format ->
                 wrappedKey ->
                   CryptoKey ->
                     unwrapAlgorithm ->
                       Maybe unwrappedKeyAlgorithm -> Bool -> [CryptoKeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_unwrapKey self (toJSString format)
                (toCryptoOperationData wrappedKey)
                unwrappingKey
                (toJSString unwrapAlgorithm)
                (toOptionalJSString unwrappedKeyAlgorithm)
                extractable
                keyUsages'))