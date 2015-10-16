{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEDisplacementMapElement
       (pattern SVG_CHANNEL_UNKNOWN, pattern SVG_CHANNEL_R,
        pattern SVG_CHANNEL_G, pattern SVG_CHANNEL_B,
        pattern SVG_CHANNEL_A, js_getIn1, getIn1, js_getIn2, getIn2,
        js_getScale, getScale, js_getXChannelSelector, getXChannelSelector,
        js_getYChannelSelector, getYChannelSelector,
        SVGFEDisplacementMapElement, castToSVGFEDisplacementMapElement,
        gTypeSVGFEDisplacementMapElement)
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
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
getIn2 ::
       (MonadIO m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn2 self = liftIO (nullableToMaybe <$> (js_getIn2 (self)))
 
foreign import javascript unsafe "$1[\"scale\"]" js_getScale ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
getScale ::
         (MonadIO m) =>
           SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedNumber)
getScale self = liftIO (nullableToMaybe <$> (js_getScale (self)))
 
foreign import javascript unsafe "$1[\"xChannelSelector\"]"
        js_getXChannelSelector ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
getXChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getXChannelSelector self
  = liftIO (nullableToMaybe <$> (js_getXChannelSelector (self)))
 
foreign import javascript unsafe "$1[\"yChannelSelector\"]"
        js_getYChannelSelector ::
        SVGFEDisplacementMapElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
getYChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getYChannelSelector self
  = liftIO (nullableToMaybe <$> (js_getYChannelSelector (self)))