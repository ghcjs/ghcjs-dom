{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGAnimatedTransformList
       (js_getBaseVal, getBaseVal, js_getAnimVal, getAnimVal,
        SVGAnimatedTransformList, castToSVGAnimatedTransformList,
        gTypeSVGAnimatedTransformList)
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
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        SVGAnimatedTransformList -> IO (Nullable SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.baseVal Mozilla SVGAnimatedTransformList.baseVal documentation> 
getBaseVal ::
           (MonadIO m) =>
             SVGAnimatedTransformList -> m (Maybe SVGTransformList)
getBaseVal self
  = liftIO (nullableToMaybe <$> (js_getBaseVal (self)))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        SVGAnimatedTransformList -> IO (Nullable SVGTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedTransformList.animVal Mozilla SVGAnimatedTransformList.animVal documentation> 
getAnimVal ::
           (MonadIO m) =>
             SVGAnimatedTransformList -> m (Maybe SVGTransformList)
getAnimVal self
  = liftIO (nullableToMaybe <$> (js_getAnimVal (self)))