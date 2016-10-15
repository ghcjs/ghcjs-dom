{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDisplacementMapElement
       (pattern SVG_CHANNEL_UNKNOWN, pattern SVG_CHANNEL_R,
        pattern SVG_CHANNEL_G, pattern SVG_CHANNEL_B,
        pattern SVG_CHANNEL_A, js_getIn1, getIn1, getIn1Unchecked,
        js_getIn2, getIn2, getIn2Unchecked, js_getScale, getScale,
        getScaleUnchecked, js_getXChannelSelector, getXChannelSelector,
        getXChannelSelectorUnchecked, js_getYChannelSelector,
        getYChannelSelector, getYChannelSelectorUnchecked,
        SVGFEDisplacementMapElement(..), gTypeSVGFEDisplacementMapElement)
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
pattern SVG_CHANNEL_UNKNOWN = 0
pattern SVG_CHANNEL_R = 1
pattern SVG_CHANNEL_G = 2
pattern SVG_CHANNEL_B = 3
pattern SVG_CHANNEL_A = 4
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in1 Mozilla SVGFEDisplacementMapElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in1 Mozilla SVGFEDisplacementMapElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEDisplacementMapElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
getIn2 ::
       (MonadIO m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftIO (nullableToMaybe <$> (js_getIn2 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
getIn2Unchecked ::
                (MonadIO m) => SVGFEDisplacementMapElement -> m SVGAnimatedString
getIn2Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn2 (self)))
 
foreign import javascript unsafe "$1[\"scale\"]" js_getScale ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
getScale ::
         (MonadIO m) =>
           SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedNumber)
getScale self = liftIO (nullableToMaybe <$> (js_getScale (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
getScaleUnchecked ::
                  (MonadIO m) => SVGFEDisplacementMapElement -> m SVGAnimatedNumber
getScaleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getScale (self)))
 
foreign import javascript unsafe "$1[\"xChannelSelector\"]"
        js_getXChannelSelector ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
getXChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getXChannelSelector self
  = liftIO (nullableToMaybe <$> (js_getXChannelSelector (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
getXChannelSelectorUnchecked ::
                             (MonadIO m) =>
                               SVGFEDisplacementMapElement -> m SVGAnimatedEnumeration
getXChannelSelectorUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getXChannelSelector (self)))
 
foreign import javascript unsafe "$1[\"yChannelSelector\"]"
        js_getYChannelSelector ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
getYChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getYChannelSelector self
  = liftIO (nullableToMaybe <$> (js_getYChannelSelector (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
getYChannelSelectorUnchecked ::
                             (MonadIO m) =>
                               SVGFEDisplacementMapElement -> m SVGAnimatedEnumeration
getYChannelSelectorUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getYChannelSelector (self)))