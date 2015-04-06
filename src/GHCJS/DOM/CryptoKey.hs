{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CryptoKey
       (js_getExtractable, getExtractable, js_getAlgorithm, getAlgorithm,
        js_getUsages, getUsages, CryptoKey, castToCryptoKey,
        gTypeCryptoKey)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "($1[\"extractable\"] ? 1 : 0)"
        js_getExtractable :: JSRef CryptoKey -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.extractable Mozilla Key.extractable documentation> 
getExtractable :: (MonadIO m) => CryptoKey -> m Bool
getExtractable self = liftIO (js_getExtractable (unCryptoKey self))
 
foreign import javascript unsafe "$1[\"algorithm\"]"
        js_getAlgorithm :: JSRef CryptoKey -> IO (JSRef Algorithm)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.algorithm Mozilla Key.algorithm documentation> 
getAlgorithm :: (MonadIO m) => CryptoKey -> m (Maybe Algorithm)
getAlgorithm self
  = liftIO ((js_getAlgorithm (unCryptoKey self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"usages\"]" js_getUsages ::
        JSRef CryptoKey -> IO (JSRef [KeyUsage])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Key.usages Mozilla Key.usages documentation> 
getUsages :: (MonadIO m) => CryptoKey -> m [KeyUsage]
getUsages self
  = liftIO ((js_getUsages (unCryptoKey self)) >>= fromJSRefUnchecked)
#else
module GHCJS.DOM.CryptoKey (
  ) where
#endif
