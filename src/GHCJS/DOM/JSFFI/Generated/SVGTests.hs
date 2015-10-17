{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGTests
       (js_hasExtension, hasExtension, js_getRequiredFeatures,
        getRequiredFeatures, js_getRequiredExtensions,
        getRequiredExtensions, js_getSystemLanguage, getSystemLanguage,
        SVGTests, castToSVGTests, gTypeSVGTests)
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
 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)" js_hasExtension ::
        SVGTests -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension ::
             (MonadIO m, ToJSString extension) =>
               SVGTests -> extension -> m Bool
hasExtension self extension
  = liftIO (js_hasExtension (self) (toJSString extension))
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        js_getRequiredFeatures :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeatures ::
                    (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredFeatures self
  = liftIO (nullableToMaybe <$> (js_getRequiredFeatures (self)))
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        js_getRequiredExtensions :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensions ::
                      (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredExtensions self
  = liftIO (nullableToMaybe <$> (js_getRequiredExtensions (self)))
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        js_getSystemLanguage :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguage ::
                  (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getSystemLanguage self
  = liftIO (nullableToMaybe <$> (js_getSystemLanguage (self)))