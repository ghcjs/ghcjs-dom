{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGComponentTransferFunctionElement
       (pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA, js_getType, getType,
        js_getTableValues, getTableValues, js_getSlope, getSlope,
        js_getIntercept, getIntercept, js_getAmplitude, getAmplitude,
        js_getExponent, getExponent, js_getOffset, getOffset,
        SVGComponentTransferFunctionElement,
        castToSVGComponentTransferFunctionElement,
        gTypeSVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
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
pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.type Mozilla SVGComponentTransferFunctionElement.type documentation> 
getType ::
        (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
          self -> m (Maybe SVGAnimatedEnumeration)
getType self
  = liftIO
      (nullableToMaybe <$>
         (js_getType (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"tableValues\"]"
        js_getTableValues ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
getTableValues ::
               (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
                 self -> m (Maybe SVGAnimatedNumberList)
getTableValues self
  = liftIO
      (nullableToMaybe <$>
         (js_getTableValues (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"slope\"]" js_getSlope ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
getSlope ::
         (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
           self -> m (Maybe SVGAnimatedNumber)
getSlope self
  = liftIO
      (nullableToMaybe <$>
         (js_getSlope (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"intercept\"]"
        js_getIntercept ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
getIntercept ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getIntercept self
  = liftIO
      (nullableToMaybe <$>
         (js_getIntercept (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"amplitude\"]"
        js_getAmplitude ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
getAmplitude ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getAmplitude self
  = liftIO
      (nullableToMaybe <$>
         (js_getAmplitude (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"exponent\"]" js_getExponent
        ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
getExponent ::
            (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
              self -> m (Maybe SVGAnimatedNumber)
getExponent self
  = liftIO
      (nullableToMaybe <$>
         (js_getExponent (toSVGComponentTransferFunctionElement self)))
 
foreign import javascript unsafe "$1[\"offset\"]" js_getOffset ::
        SVGComponentTransferFunctionElement ->
          IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
getOffset ::
          (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
            self -> m (Maybe SVGAnimatedNumber)
getOffset self
  = liftIO
      (nullableToMaybe <$>
         (js_getOffset (toSVGComponentTransferFunctionElement self)))