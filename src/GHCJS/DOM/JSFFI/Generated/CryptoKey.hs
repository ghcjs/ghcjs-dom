{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CryptoKey
       (js_getType, getType, js_getExtractable, getExtractable,
        js_getAlgorithm, getAlgorithm, js_getUsages, getUsages, CryptoKey,
        castToCryptoKey, gTypeCryptoKey)
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
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        CryptoKey -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.type Mozilla CryptoKey.type documentation> 
getType :: (MonadIO m) => CryptoKey -> m KeyType
getType self = liftIO ((js_getType (self)) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "($1[\"extractable\"] ? 1 : 0)"
        js_getExtractable :: CryptoKey -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.extractable Mozilla CryptoKey.extractable documentation> 
getExtractable :: (MonadIO m) => CryptoKey -> m Bool
getExtractable self = liftIO (js_getExtractable (self))
 
foreign import javascript unsafe "$1[\"algorithm\"]"
        js_getAlgorithm :: CryptoKey -> IO (Nullable Algorithm)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.algorithm Mozilla CryptoKey.algorithm documentation> 
getAlgorithm :: (MonadIO m) => CryptoKey -> m (Maybe Algorithm)
getAlgorithm self
  = liftIO (nullableToMaybe <$> (js_getAlgorithm (self)))
 
foreign import javascript unsafe "$1[\"usages\"]" js_getUsages ::
        CryptoKey -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CryptoKey.usages Mozilla CryptoKey.usages documentation> 
getUsages :: (MonadIO m) => CryptoKey -> m [KeyUsage]
getUsages self
  = liftIO ((js_getUsages (self)) >>= fromJSValUnchecked)