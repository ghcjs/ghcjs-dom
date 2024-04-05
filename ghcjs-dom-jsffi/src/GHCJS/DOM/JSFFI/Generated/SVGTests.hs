{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTests
       (js_hasExtension, hasExtension, hasExtension_,
        js_getRequiredFeatures, getRequiredFeatures,
        js_getRequiredExtensions, getRequiredExtensions,
        js_getSystemLanguage, getSystemLanguage, SVGTests(..),
        gTypeSVGTests, IsSVGTests, toSVGTests)
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
 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)" js_hasExtension ::
        SVGTests -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension ::
             (MonadIO m, IsSVGTests self, ToJSString extension) =>
               self -> Maybe extension -> m Bool
hasExtension self extension
  = liftIO
      (js_hasExtension (toSVGTests self) (toOptionalJSString extension))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
hasExtension_ ::
              (MonadIO m, IsSVGTests self, ToJSString extension) =>
                self -> Maybe extension -> m ()
hasExtension_ self extension
  = liftIO
      (void
         (js_hasExtension (toSVGTests self) (toOptionalJSString extension)))
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        js_getRequiredFeatures :: SVGTests -> IO SVGStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
getRequiredFeatures ::
                    (MonadIO m, IsSVGTests self) => self -> m SVGStringList
getRequiredFeatures self
  = liftIO (js_getRequiredFeatures (toSVGTests self))
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        js_getRequiredExtensions :: SVGTests -> IO SVGStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
getRequiredExtensions ::
                      (MonadIO m, IsSVGTests self) => self -> m SVGStringList
getRequiredExtensions self
  = liftIO (js_getRequiredExtensions (toSVGTests self))
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        js_getSystemLanguage :: SVGTests -> IO SVGStringList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
getSystemLanguage ::
                  (MonadIO m, IsSVGTests self) => self -> m SVGStringList
getSystemLanguage self
  = liftIO (js_getSystemLanguage (toSVGTests self))