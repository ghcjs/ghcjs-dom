{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SubtleCrypto
       (js_encrypt, encrypt, encrypt_, encryptUnsafe, encryptUnchecked,
        js_decrypt, decrypt, decrypt_, decryptUnsafe, decryptUnchecked,
        js_sign, sign, sign_, signUnsafe, signUnchecked, js_verify, verify,
        verify_, verifyUnsafe, verifyUnchecked, js_digest, digest, digest_,
        digestUnsafe, digestUnchecked, js_generateKey, generateKey,
        generateKey_, generateKeyUnsafe, generateKeyUnchecked,
        js_importKey, importKey, importKey_, importKeyUnsafe,
        importKeyUnchecked, js_exportKey, exportKey, exportKey_,
        exportKeyUnsafe, exportKeyUnchecked, js_wrapKey, wrapKey, wrapKey_,
        wrapKeyUnsafe, wrapKeyUnchecked, js_unwrapKey, unwrapKey,
        unwrapKey_, unwrapKeyUnsafe, unwrapKeyUnchecked, SubtleCrypto(..),
        gTypeSubtleCrypto)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt_ ::
         (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
           SubtleCrypto ->
             algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
encrypt_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' ->
              js_encrypt (self) (toJSString algorithm) (maybeToNullable key)
                data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encryptUnsafe ::
              (MonadIO m, ToJSString algorithm, IsCryptoOperationData data',
               HasCallStack) =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
encryptUnsafe self algorithm key data'
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal data' >>=
             \ data'' ->
               js_encrypt (self) (toJSString algorithm) (maybeToNullable key)
                 data''))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encryptUnchecked ::
                 (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
                   SubtleCrypto ->
                     algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
encryptUnchecked self algorithm key data'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt_ ::
         (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
           SubtleCrypto ->
             algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
decrypt_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' ->
              js_decrypt (self) (toJSString algorithm) (maybeToNullable key)
                data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decryptUnsafe ::
              (MonadIO m, ToJSString algorithm, IsCryptoOperationData data',
               HasCallStack) =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
decryptUnsafe self algorithm key data'
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal data' >>=
             \ data'' ->
               js_decrypt (self) (toJSString algorithm) (maybeToNullable key)
                 data''))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decryptUnchecked ::
                 (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
                   SubtleCrypto ->
                     algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
decryptUnchecked self algorithm key data'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign_ ::
      (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
        SubtleCrypto ->
          algorithm -> Maybe CryptoKey -> [Maybe data'] -> m ()
sign_ self algorithm key data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' ->
              js_sign (self) (toJSString algorithm) (maybeToNullable key)
                data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
signUnsafe ::
           (MonadIO m, ToJSString algorithm, IsCryptoOperationData data',
            HasCallStack) =>
             SubtleCrypto ->
               algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
signUnsafe self algorithm key data'
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal data' >>=
             \ data'' ->
               js_sign (self) (toJSString algorithm) (maybeToNullable key)
                 data''))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
signUnchecked ::
              (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
                SubtleCrypto ->
                  algorithm -> Maybe CryptoKey -> [Maybe data'] -> m Promise
signUnchecked self algorithm key data'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verify_ ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
         IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm ->
              Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m ()
verify_ self algorithm key signature data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' ->
              js_verify (self) (toJSString algorithm) (maybeToNullable key)
                (maybeToNullable (fmap toCryptoOperationData signature))
                data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verifyUnsafe ::
             (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
              IsCryptoOperationData data', HasCallStack) =>
               SubtleCrypto ->
                 algorithm ->
                   Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m Promise
verifyUnsafe self algorithm key signature data'
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal data' >>=
             \ data'' ->
               js_verify (self) (toJSString algorithm) (maybeToNullable key)
                 (maybeToNullable (fmap toCryptoOperationData signature))
                 data''))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.verify Mozilla WebKitSubtleCrypto.verify documentation> 
verifyUnchecked ::
                (MonadIO m, ToJSString algorithm, IsCryptoOperationData signature,
                 IsCryptoOperationData data') =>
                  SubtleCrypto ->
                    algorithm ->
                      Maybe CryptoKey -> Maybe signature -> [Maybe data'] -> m Promise
verifyUnchecked self algorithm key signature data'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest_ ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto -> algorithm -> [Maybe data'] -> m ()
digest_ self algorithm data'
  = liftIO
      (void
         (toJSVal data' >>=
            \ data'' -> js_digest (self) (toJSString algorithm) data''))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digestUnsafe ::
             (MonadIO m, ToJSString algorithm, IsCryptoOperationData data',
              HasCallStack) =>
               SubtleCrypto -> algorithm -> [Maybe data'] -> m Promise
digestUnsafe self algorithm data'
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal data' >>=
             \ data'' -> js_digest (self) (toJSString algorithm) data''))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digestUnchecked ::
                (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
                  SubtleCrypto -> algorithm -> [Maybe data'] -> m Promise
digestUnchecked self algorithm data'
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey_ ::
             (MonadIO m, ToJSString algorithm) =>
               SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m ()
generateKey_ self algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_generateKey (self) (toJSString algorithm) extractable
                keyUsages'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKeyUnsafe ::
                  (MonadIO m, ToJSString algorithm, HasCallStack) =>
                    SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m Promise
generateKeyUnsafe self algorithm extractable keyUsages
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal keyUsages >>=
             \ keyUsages' ->
               js_generateKey (self) (toJSString algorithm) extractable
                 keyUsages'))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKeyUnchecked ::
                     (MonadIO m, ToJSString algorithm) =>
                       SubtleCrypto -> algorithm -> Bool -> [KeyUsage] -> m Promise
generateKeyUnchecked self algorithm extractable keyUsages
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKey_ ::
           (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
            ToJSString algorithm) =>
             SubtleCrypto ->
               format -> Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m ()
importKey_ self format keyData algorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_importKey (self) (toJSString format)
                (maybeToNullable (fmap toCryptoOperationData keyData))
                (toJSString algorithm)
                extractable
                keyUsages'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKeyUnsafe ::
                (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
                 ToJSString algorithm, HasCallStack) =>
                  SubtleCrypto ->
                    format ->
                      Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m Promise
importKeyUnsafe self format keyData algorithm extractable keyUsages
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal keyUsages >>=
             \ keyUsages' ->
               js_importKey (self) (toJSString format)
                 (maybeToNullable (fmap toCryptoOperationData keyData))
                 (toJSString algorithm)
                 extractable
                 keyUsages'))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.importKey Mozilla WebKitSubtleCrypto.importKey documentation> 
importKeyUnchecked ::
                   (MonadIO m, ToJSString format, IsCryptoOperationData keyData,
                    ToJSString algorithm) =>
                     SubtleCrypto ->
                       format ->
                         Maybe keyData -> algorithm -> Bool -> [KeyUsage] -> m Promise
importKeyUnchecked self format keyData algorithm extractable
  keyUsages
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey_ ::
           (MonadIO m, ToJSString format) =>
             SubtleCrypto -> format -> Maybe CryptoKey -> m ()
exportKey_ self format key
  = liftIO
      (void
         (js_exportKey (self) (toJSString format) (maybeToNullable key)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKeyUnsafe ::
                (MonadIO m, ToJSString format, HasCallStack) =>
                  SubtleCrypto -> format -> Maybe CryptoKey -> m Promise
exportKeyUnsafe self format key
  = liftIO
      ((nullableToMaybe <$>
          (js_exportKey (self) (toJSString format) (maybeToNullable key)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKeyUnchecked ::
                   (MonadIO m, ToJSString format) =>
                     SubtleCrypto -> format -> Maybe CryptoKey -> m Promise
exportKeyUnchecked self format key
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey_ ::
         (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
           SubtleCrypto ->
             format ->
               Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m ()
wrapKey_ self format key wrappingKey wrapAlgorithm
  = liftIO
      (void
         (js_wrapKey (self) (toJSString format) (maybeToNullable key)
            (maybeToNullable wrappingKey)
            (toJSString wrapAlgorithm)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKeyUnsafe ::
              (MonadIO m, ToJSString format, ToJSString wrapAlgorithm,
               HasCallStack) =>
                SubtleCrypto ->
                  format ->
                    Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m Promise
wrapKeyUnsafe self format key wrappingKey wrapAlgorithm
  = liftIO
      ((nullableToMaybe <$>
          (js_wrapKey (self) (toJSString format) (maybeToNullable key)
             (maybeToNullable wrappingKey)
             (toJSString wrapAlgorithm)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKeyUnchecked ::
                 (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
                   SubtleCrypto ->
                     format ->
                       Maybe CryptoKey -> Maybe CryptoKey -> wrapAlgorithm -> m Promise
wrapKeyUnchecked self format key wrappingKey wrapAlgorithm
  = liftIO
      (fromJust . nullableToMaybe <$>
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKey_ ::
           (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
            ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
             SubtleCrypto ->
               format ->
                 Maybe wrappedKey ->
                   Maybe CryptoKey ->
                     unwrapAlgorithm ->
                       unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m ()
unwrapKey_ self format wrappedKey unwrappingKey unwrapAlgorithm
  unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      (void
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_unwrapKey (self) (toJSString format)
                (maybeToNullable (fmap toCryptoOperationData wrappedKey))
                (maybeToNullable unwrappingKey)
                (toJSString unwrapAlgorithm)
                (toJSString unwrappedKeyAlgorithm)
                extractable
                keyUsages'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKeyUnsafe ::
                (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
                 ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm,
                 HasCallStack) =>
                  SubtleCrypto ->
                    format ->
                      Maybe wrappedKey ->
                        Maybe CryptoKey ->
                          unwrapAlgorithm ->
                            unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m Promise
unwrapKeyUnsafe self format wrappedKey unwrappingKey
  unwrapAlgorithm unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      ((nullableToMaybe <$>
          (toJSVal keyUsages >>=
             \ keyUsages' ->
               js_unwrapKey (self) (toJSString format)
                 (maybeToNullable (fmap toCryptoOperationData wrappedKey))
                 (maybeToNullable unwrappingKey)
                 (toJSString unwrapAlgorithm)
                 (toJSString unwrappedKeyAlgorithm)
                 extractable
                 keyUsages'))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.unwrapKey Mozilla WebKitSubtleCrypto.unwrapKey documentation> 
unwrapKeyUnchecked ::
                   (MonadIO m, ToJSString format, IsCryptoOperationData wrappedKey,
                    ToJSString unwrapAlgorithm, ToJSString unwrappedKeyAlgorithm) =>
                     SubtleCrypto ->
                       format ->
                         Maybe wrappedKey ->
                           Maybe CryptoKey ->
                             unwrapAlgorithm ->
                               unwrappedKeyAlgorithm -> Bool -> [KeyUsage] -> m Promise
unwrapKeyUnchecked self format wrappedKey unwrappingKey
  unwrapAlgorithm unwrappedKeyAlgorithm extractable keyUsages
  = liftIO
      (fromJust . nullableToMaybe <$>
         (toJSVal keyUsages >>=
            \ keyUsages' ->
              js_unwrapKey (self) (toJSString format)
                (maybeToNullable (fmap toCryptoOperationData wrappedKey))
                (maybeToNullable unwrappingKey)
                (toJSString unwrapAlgorithm)
                (toJSString unwrappedKeyAlgorithm)
                extractable
                keyUsages'))