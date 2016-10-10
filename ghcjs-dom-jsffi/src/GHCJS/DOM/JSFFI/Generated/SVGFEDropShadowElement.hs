{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDropShadowElement
       (js_setStdDeviation, setStdDeviation, js_getIn1, getIn1,
        getIn1Unchecked, js_getDx, getDx, getDxUnchecked, js_getDy, getDy,
        getDyUnchecked, js_getStdDeviationX, getStdDeviationX,
        getStdDeviationXUnchecked, js_getStdDeviationY, getStdDeviationY,
        getStdDeviationYUnchecked, SVGFEDropShadowElement,
        castToSVGFEDropShadowElement, gTypeSVGFEDropShadowElement)
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
 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        js_setStdDeviation ::
        SVGFEDropShadowElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.setStdDeviation Mozilla SVGFEDropShadowElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadIO m) => SVGFEDropShadowElement -> Float -> Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftIO (js_setStdDeviation (self) stdDeviationX stdDeviationY)
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEDropShadowElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEDropShadowElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.in1 Mozilla SVGFEDropShadowElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        SVGFEDropShadowElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
getDx ::
      (MonadIO m) =>
        SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getDx self = liftIO (nullableToMaybe <$> (js_getDx (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dx Mozilla SVGFEDropShadowElement.dx documentation> 
getDxUnchecked ::
               (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDxUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDx (self)))
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        SVGFEDropShadowElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
getDy ::
      (MonadIO m) =>
        SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getDy self = liftIO (nullableToMaybe <$> (js_getDy (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.dy Mozilla SVGFEDropShadowElement.dy documentation> 
getDyUnchecked ::
               (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getDyUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getDy (self)))
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        js_getStdDeviationX ::
        SVGFEDropShadowElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadIO m) =>
                   SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationX self
  = liftIO (nullableToMaybe <$> (js_getStdDeviationX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationX Mozilla SVGFEDropShadowElement.stdDeviationX documentation> 
getStdDeviationXUnchecked ::
                          (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationXUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStdDeviationX (self)))
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        js_getStdDeviationY ::
        SVGFEDropShadowElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadIO m) =>
                   SVGFEDropShadowElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationY self
  = liftIO (nullableToMaybe <$> (js_getStdDeviationY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDropShadowElement.stdDeviationY Mozilla SVGFEDropShadowElement.stdDeviationY documentation> 
getStdDeviationYUnchecked ::
                          (MonadIO m) => SVGFEDropShadowElement -> m SVGAnimatedNumber
getStdDeviationYUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getStdDeviationY (self)))