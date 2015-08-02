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
 
foreign import javascript unsafe "$1[\"encrypt\"]($2, $3, $4)"
        js_encrypt ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.encrypt Mozilla WebKitSubtleCrypto.encrypt documentation> 
encrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
encrypt self algorithm key data'
  = liftIO
      ((toJSRef data' >>=
          \ data'' ->
            js_encrypt (unSubtleCrypto self) (toJSString algorithm)
              (maybe jsNull pToJSRef key)
              data'')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"decrypt\"]($2, $3, $4)"
        js_decrypt ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.decrypt Mozilla WebKitSubtleCrypto.decrypt documentation> 
decrypt ::
        (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
          SubtleCrypto ->
            algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
decrypt self algorithm key data'
  = liftIO
      ((toJSRef data' >>=
          \ data'' ->
            js_decrypt (unSubtleCrypto self) (toJSString algorithm)
              (maybe jsNull pToJSRef key)
              data'')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"sign\"]($2, $3, $4)" js_sign
        ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.sign Mozilla WebKitSubtleCrypto.sign documentation> 
sign ::
     (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
       SubtleCrypto ->
         algorithm -> Maybe CryptoKey -> [Maybe data'] -> m (Maybe Promise)
sign self algorithm key data'
  = liftIO
      ((toJSRef data' >>=
          \ data'' ->
            js_sign (unSubtleCrypto self) (toJSString algorithm)
              (maybe jsNull pToJSRef key)
              data'')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"verify\"]($2, $3, $4, $5)"
        js_verify ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey ->
              JSRef CryptoOperationData ->
                JSRef [Maybe data'] -> IO (JSRef Promise)

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
      ((toJSRef data' >>=
          \ data'' ->
            js_verify (unSubtleCrypto self) (toJSString algorithm)
              (maybe jsNull pToJSRef key)
              (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
                 signature)
              data'')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"digest\"]($2, $3)" js_digest
        ::
        JSRef SubtleCrypto ->
          JSString -> JSRef [Maybe data'] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.digest Mozilla WebKitSubtleCrypto.digest documentation> 
digest ::
       (MonadIO m, ToJSString algorithm, IsCryptoOperationData data') =>
         SubtleCrypto -> algorithm -> [Maybe data'] -> m (Maybe Promise)
digest self algorithm data'
  = liftIO
      ((toJSRef data' >>=
          \ data'' ->
            js_digest (unSubtleCrypto self) (toJSString algorithm) data'')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"generateKey\"]($2, $3, $4)"
        js_generateKey ::
        JSRef SubtleCrypto ->
          JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.generateKey Mozilla WebKitSubtleCrypto.generateKey documentation> 
generateKey ::
            (MonadIO m, ToJSString algorithm) =>
              SubtleCrypto ->
                algorithm -> Bool -> [KeyUsage] -> m (Maybe Promise)
generateKey self algorithm extractable keyUsages
  = liftIO
      ((toJSRef keyUsages >>=
          \ keyUsages' ->
            js_generateKey (unSubtleCrypto self) (toJSString algorithm)
              extractable
              keyUsages')
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"importKey\"]($2, $3, $4, $5,\n$6)" js_importKey ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoOperationData ->
              JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

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
      ((toJSRef keyUsages >>=
          \ keyUsages' ->
            js_importKey (unSubtleCrypto self) (toJSString format)
              (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
                 keyData)
              (toJSString algorithm)
              extractable
              keyUsages')
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"exportKey\"]($2, $3)"
        js_exportKey ::
        JSRef SubtleCrypto ->
          JSString -> JSRef CryptoKey -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.exportKey Mozilla WebKitSubtleCrypto.exportKey documentation> 
exportKey ::
          (MonadIO m, ToJSString format) =>
            SubtleCrypto -> format -> Maybe CryptoKey -> m (Maybe Promise)
exportKey self format key
  = liftIO
      ((js_exportKey (unSubtleCrypto self) (toJSString format)
          (maybe jsNull pToJSRef key))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"wrapKey\"]($2, $3, $4, $5)"
        js_wrapKey ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoKey ->
              JSRef CryptoKey -> JSString -> IO (JSRef Promise)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitSubtleCrypto.wrapKey Mozilla WebKitSubtleCrypto.wrapKey documentation> 
wrapKey ::
        (MonadIO m, ToJSString format, ToJSString wrapAlgorithm) =>
          SubtleCrypto ->
            format ->
              Maybe CryptoKey ->
                Maybe CryptoKey -> wrapAlgorithm -> m (Maybe Promise)
wrapKey self format key wrappingKey wrapAlgorithm
  = liftIO
      ((js_wrapKey (unSubtleCrypto self) (toJSString format)
          (maybe jsNull pToJSRef key)
          (maybe jsNull pToJSRef wrappingKey)
          (toJSString wrapAlgorithm))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"unwrapKey\"]($2, $3, $4, $5,\n$6, $7, $8)" js_unwrapKey ::
        JSRef SubtleCrypto ->
          JSString ->
            JSRef CryptoOperationData ->
              JSRef CryptoKey ->
                JSString ->
                  JSString -> Bool -> JSRef [KeyUsage] -> IO (JSRef Promise)

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
      ((toJSRef keyUsages >>=
          \ keyUsages' ->
            js_unwrapKey (unSubtleCrypto self) (toJSString format)
              (maybe jsNull (unCryptoOperationData . toCryptoOperationData)
                 wrappedKey)
              (maybe jsNull pToJSRef unwrappingKey)
              (toJSString unwrapAlgorithm)
              (toJSString unwrappedKeyAlgorithm)
              extractable
              keyUsages')
         >>= fromJSRef)