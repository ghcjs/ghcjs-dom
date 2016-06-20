{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SubtleCrypto
       (js_encrypt, encrypt, js_decrypt, decrypt, js_sign, sign,
        js_verify, verify, js_digest, digest, js_generateKey, generateKey,
        js_importKey, importKey, js_exportKey, exportKey, js_wrapKey,
        wrapKey, js_unwrapKey, unwrapKey, SubtleCrypto, castToSubtleCrypto,
        gTypeSubtleCrypto)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"encrypt\"]($2, $3, $4)"
        js_encrypt ::
        SubtleCrypto ->
          JSString -> Nullable CryptoKey -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
encrypt self algorithm key data'
  = liftIO
      (nullableToMaybe <$>
         (toJSVal data' >>=
            \ data'' ->
              js_encrypt (self) (toJSString algorithm) (maybeToNullable key)
                data''))
 
foreign import javascript unsafe "$1[\"decrypt\"]($2, $3, $4)"
        js_decrypt ::
        SubtleCrypto ->
          JSString -> Nullable CryptoKey -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
decrypt self algorithm key data'
  = liftIO
      (nullableToMaybe <$>
         (toJSVal data' >>=
            \ data'' ->
              js_decrypt (self) (toJSString algorithm) (maybeToNullable key)
                data''))
 
foreign import javascript unsafe "$1[\"sign\"]($2, $3, $4)" js_sign
        ::
        SubtleCrypto ->
          JSString -> Nullable CryptoKey -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
       SubtleCrypto ->
         algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
sign self algorithm key data'
  = liftIO
      (nullableToMaybe <$>
         (toJSVal data' >>=
            \ data'' ->
              js_sign (self) (toJSString algorithm) (maybeToNullable key)
                data''))
 
foreign import javascript unsafe "$1[\"verify\"]($2, $3, $4, $5)"
        js_verify ::
        SubtleCrypto ->
          JSString ->
            Nullable CryptoKey ->
              Nullable CryptoOperationData -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify ::
       (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
        IsCryptoOperationData data') =>
         SubtleCrypto ->
           algorithm ->
             Maybe CryptoKey ->
               Maybe signature -> [Maybe data'] -> m (Maybe Promise)
verify self algorithm key signature data'
  = liftIO
      (nullableToMaybe <$>
         (toJSVal data' >>=
            \ data'' ->
              js_verify (self) (toJSString algorithm) (maybeToNullable key)
                (maybeToNullable (fmap toCryptoOperationData signature))
                data''))
 
foreign import javascript unsafe "$1[\"digest\"]($2, $3)" js_digest
        :: SubtleCrypto -> JSString -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
         SubtleCrypto -> algorithm -> [Maybe data'] -> m (Maybe Promise)
digest self algorithm data'
  = liftIO
      (nullableToMaybe <$>
         (toJSVal data' >>=
            \ data'' -> js_digest (self) (toJSString algorithm) data''))
 
foreign import javascript unsafe "$1[\"generateKey\"]($2, $3, $4)"
        js_generateKey ::
        SubtleCrypto -> JSString -> Bool -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadIO m, ToJSString algorithm) =>
              SubtleCrypto ->
                algorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
generateKey self algorithm extractable keyUsages
  = liftIO
      (nullableToMaybe <$>
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_generateKey (self) (toJSString algorithm) extractable
                keyUsages'))
 
foreign import javascript unsafe
        "$1[\"importKey\"]($2, $3, $4, $5,\n$6)" js_importKey ::
        SubtleCrypto ->
          JSString ->
            Nullable CryptoOperationData ->
              JSString -> Bool -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey ::
          (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
           ToJSString algorithm) =>
            SubtleCrypto ->
              format ->
                Maybe keyData ->
                  algorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
importKey self format keyData algorithm extractable keyUsages
  = liftIO
      (nullableToMaybe <$>
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_importKey (self) (toJSString format)
                (maybeToNullable (fmap toCryptoOperationData keyData))
                (toJSString algorithm)
                extractable
                keyUsages'))
 
foreign import javascript unsafe "$1[\"exportKey\"]($2, $3)"
        js_exportKey ::
        SubtleCrypto ->
          JSString -> Nullable CryptoKey -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadIO m, ToJSString format) =>
            SubtleCrypto -> format -> Maybe CryptoKey -> m (Maybe Promise)
exportKey self format key
  = liftIO
      (nullableToMaybe <$>
         (js_exportKey (self) (toJSString format) (maybeToNullable key)))
 
foreign import javascript unsafe "$1[\"wrapKey\"]($2, $3, $4, $5)"
        js_wrapKey ::
        SubtleCrypto ->
          JSString ->
            Nullable CryptoKey ->
              Nullable CryptoKey -> JSString -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
          SubtleCrypto ->
            format ->
              Maybe CryptoKey ->
                Maybe CryptoKey -> wrapAlgorithm -> m (Maybe Promise)
wrapKey self format key wrappingKey wrapAlgorithm
  = liftIO
      (nullableToMaybe <$>
         (js_wrapKey (self) (toJSString format) (maybeToNullable key)
            (maybeToNullable wrappingKey)
            (toJSString wrapAlgorithm)))
 
foreign import javascript unsafe
        "$1[\"unwrapKey\"]($2, $3, $4, $5,\n$6, $7, $8)" js_unwrapKey ::
        SubtleCrypto ->
          JSString ->
            Nullable CryptoOperationData ->
              Nullable CryptoKey ->
                JSString -> JSString -> Bool -> JSVal -> IO (Nullable Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey ::
          (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
           ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
            SubtleCrypto ->
              format ->
                Maybe wrappedKey ->
                  Maybe CryptoKey ->
                    unwrapAlgorithm ->
                      unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
unwrapKey self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      (nullableToMaybe <$>
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_unwrapKey (self) (toJSString format)
                (maybeToNullable (fmap toCryptoOperationData wrappedKey))
                (maybeToNullable unwrappingKey)
                (toJSString unwrapAlgorithm)
                (toJSString unwrappedKeyAlgorithm)
                extractable
                keyUsages'))