{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGComponentTransferFunctionElement
       (pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR,
        pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA, js_getTableValues,
        getTableValues, js_getSlope, getSlope, js_getIntercept,
        getIntercept, js_getAmplitude, getAmplitude, js_getExponent,
        getExponent, js_getOffset, getOffset,
        SVGComponentTransferFunctionElement,
        castToSVGComponentTransferFunctionElement,
        gTypeSVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5
 
foreign import javascript unsafe "$1[\"tableValues\"]"
        js_getTableValues ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
getTableValues ::
               (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
                 self -> m (Maybe SVGAnimatedNumberList)
getTableValues self
  = liftIO
      ((js_getTableValues
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"slope\"]" js_getSlope ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
getSlope ::
         (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
           self -> m (Maybe SVGAnimatedNumber)
getSlope self
  = liftIO
      ((js_getSlope
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"intercept\"]"
        js_getIntercept ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
getIntercept ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getIntercept self
  = liftIO
      ((js_getIntercept
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"amplitude\"]"
        js_getAmplitude ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
getAmplitude ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m (Maybe SVGAnimatedNumber)
getAmplitude self
  = liftIO
      ((js_getAmplitude
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"exponent\"]" js_getExponent
        ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
getExponent ::
            (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
              self -> m (Maybe SVGAnimatedNumber)
getExponent self
  = liftIO
      ((js_getExponent
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"offset\"]" js_getOffset ::
        JSRef SVGComponentTransferFunctionElement ->
          IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
getOffset ::
          (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
            self -> m (Maybe SVGAnimatedNumber)
getOffset self
  = liftIO
      ((js_getOffset
          (unSVGComponentTransferFunctionElement
             (toSVGComponentTransferFunctionElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGComponentTransferFunctionElement (
  ) where
#endif
