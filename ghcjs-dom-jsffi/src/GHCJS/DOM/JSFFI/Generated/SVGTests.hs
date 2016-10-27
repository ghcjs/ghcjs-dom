{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTests
       (js_hasExtension, hasExtension, hasExtension_,
        js_getRequiredFeatures, getRequiredFeatures,
        getRequiredFeaturesUnsafe, getRequiredFeaturesUnchecked,
        js_getRequiredExtensions, getRequiredExtensions,
        getRequiredExtensionsUnsafe, getRequiredExtensionsUnchecked,
        js_getSystemLanguage, getSystemLanguage, getSystemLanguageUnsafe,
        getSystemLanguageUnchecked, SVGTests(..), gTypeSVGTests)
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
 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)" js_hasExtension ::
        SVGTests -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension ::
             (MonadIO m, ToJSString extension) =>
               SVGTests -> extension -> m Bool
hasExtension self extension
  = liftIO (js_hasExtension (self) (toJSString extension))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension_ ::
              (MonadIO m, ToJSString extension) => SVGTests -> extension -> m ()
hasExtension_ self extension
  = liftIO (void (js_hasExtension (self) (toJSString extension)))
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        js_getRequiredFeatures :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeatures ::
                    (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredFeatures self
  = liftIO (nullableToMaybe <$> (js_getRequiredFeatures (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeaturesUnsafe ::
                          (MonadIO m, HasCallStack) => SVGTests -> m SVGStringList
getRequiredFeaturesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRequiredFeatures (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeaturesUnchecked ::
                             (MonadIO m) => SVGTests -> m SVGStringList
getRequiredFeaturesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRequiredFeatures (self)))
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        js_getRequiredExtensions :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensions ::
                      (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredExtensions self
  = liftIO (nullableToMaybe <$> (js_getRequiredExtensions (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensionsUnsafe ::
                            (MonadIO m, HasCallStack) => SVGTests -> m SVGStringList
getRequiredExtensionsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRequiredExtensions (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensionsUnchecked ::
                               (MonadIO m) => SVGTests -> m SVGStringList
getRequiredExtensionsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRequiredExtensions (self)))
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        js_getSystemLanguage :: SVGTests -> IO (Nullable SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguage ::
                  (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getSystemLanguage self
  = liftIO (nullableToMaybe <$> (js_getSystemLanguage (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguageUnsafe ::
                        (MonadIO m, HasCallStack) => SVGTests -> m SVGStringList
getSystemLanguageUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSystemLanguage (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguageUnchecked ::
                           (MonadIO m) => SVGTests -> m SVGStringList
getSystemLanguageUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getSystemLanguage (self)))