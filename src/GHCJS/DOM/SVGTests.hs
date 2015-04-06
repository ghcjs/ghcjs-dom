{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTests
       (js_hasExtension, hasExtension, js_getRequiredFeatures,
        getRequiredFeatures, js_getRequiredExtensions,
        getRequiredExtensions, js_getSystemLanguage, getSystemLanguage,
        SVGTests, castToSVGTests, gTypeSVGTests)
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

 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)" js_hasExtension ::
        JSRef SVGTests -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension ::
             (MonadIO m, ToJSString extension) =>
               SVGTests -> extension -> m Bool
hasExtension self extension
  = liftIO (js_hasExtension (unSVGTests self) (toJSString extension))
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        js_getRequiredFeatures ::
        JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeatures ::
                    (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredFeatures self
  = liftIO ((js_getRequiredFeatures (unSVGTests self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        js_getRequiredExtensions ::
        JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensions ::
                      (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getRequiredExtensions self
  = liftIO
      ((js_getRequiredExtensions (unSVGTests self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        js_getSystemLanguage :: JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguage ::
                  (MonadIO m) => SVGTests -> m (Maybe SVGStringList)
getSystemLanguage self
  = liftIO ((js_getSystemLanguage (unSVGTests self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGTests (
  ) where
#endif
