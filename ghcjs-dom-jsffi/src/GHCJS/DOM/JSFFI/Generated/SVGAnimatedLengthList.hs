{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedLengthList
       (js_getBaseVal, getBaseVal, getBaseValUnchecked, js_getAnimVal,
        getAnimVal, getAnimValUnchecked, SVGAnimatedLengthList(..),
        gTypeSVGAnimatedLengthList)
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
        SVGAnimatedLengthList -> IO (Nullable SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
getBaseVal ::
           (MonadIO m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getBaseVal self
  = liftIO (nullableToMaybe <$> (js_getBaseVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.baseVal Mozilla SVGAnimatedLengthList.baseVal documentation> 
getBaseValUnchecked ::
                    (MonadIO m) => SVGAnimatedLengthList -> m SVGLengthList
getBaseValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedLengthList -> IO (Nullable SVGLengthList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
getAnimVal ::
           (MonadIO m) => SVGAnimatedLengthList -> m (Maybe SVGLengthList)
getAnimVal self
  = liftIO (nullableToMaybe <$> (js_getAnimVal (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedLengthList.animVal Mozilla SVGAnimatedLengthList.animVal documentation> 
getAnimValUnchecked ::
                    (MonadIO m) => SVGAnimatedLengthList -> m SVGLengthList
getAnimValUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnimVal (self)))