{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedLength
       (js_getBaseVal, getBaseVal, getBaseValUnchecked, js_getAnimVal,
        getAnimVal, getAnimValUnchecked, SVGAnimatedLength,
        castToSVGAnimatedLength, gTypeSVGAnimatedLength)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedLength -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.baseVal Mozilla SVGAnimatedLength.baseVal documentation> 
getBaseVal ::
           (MonadIO m) => SVGAnimatedLength -> m (Maybe SVGLength)
getBaseVal self
  = liftIO (nullableToMaybe <$> (js_getBaseVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.baseVal Mozilla SVGAnimatedLength.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadIO m) => SVGAnimatedLength -> m SVGLength
getBaseValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedLength -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.animVal Mozilla SVGAnimatedLength.animVal documentation> 
getAnimVal ::
           (MonadIO m) => SVGAnimatedLength -> m (Maybe SVGLength)
getAnimVal self
  = liftIO (nullableToMaybe <$> (js_getAnimVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLength.animVal Mozilla SVGAnimatedLength.animVal documentation> 
getAnimValUnchecked ::
                    (MonadIO m) => SVGAnimatedLength -> m SVGLength
getAnimValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnimVal (self)))