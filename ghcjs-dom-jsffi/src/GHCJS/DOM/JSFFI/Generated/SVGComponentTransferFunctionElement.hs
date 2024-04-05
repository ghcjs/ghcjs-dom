{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
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
        SVGComponentTransferFunctionElement(..),
        gTypeSVGComponentTransferFunctionElement,
        IsSVGComponentTransferFunctionElement,
        toSVGComponentTransferFunctionElement)
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
pattern SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN = 0
pattern SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY = 1
pattern SVG_FECOMPONENTTRANSFER_TYPE_TABLE = 2
pattern SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE = 3
pattern SVG_FECOMPONENTTRANSFER_TYPE_LINEAR = 4
pattern SVG_FECOMPONENTTRANSFER_TYPE_GAMMA = 5
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedEnumeration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.type Mozilla SVGComponentTransferFunctionElement.type documentation> 
getType ::
        (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
          self -> m SVGAnimatedEnumeration
getType self
  = liftIO (js_getType (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"tableValues\"]"
        js_getTableValues ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedNumberList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.tableValues Mozilla SVGComponentTransferFunctionElement.tableValues documentation> 
getTableValues ::
               (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
                 self -> m SVGAnimatedNumberList
getTableValues self
  = liftIO
      (js_getTableValues (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"slope\"]" js_getSlope ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.slope Mozilla SVGComponentTransferFunctionElement.slope documentation> 
getSlope ::
         (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
           self -> m SVGAnimatedNumber
getSlope self
  = liftIO (js_getSlope (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"intercept\"]"
        js_getIntercept ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.intercept Mozilla SVGComponentTransferFunctionElement.intercept documentation> 
getIntercept ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m SVGAnimatedNumber
getIntercept self
  = liftIO
      (js_getIntercept (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"amplitude\"]"
        js_getAmplitude ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.amplitude Mozilla SVGComponentTransferFunctionElement.amplitude documentation> 
getAmplitude ::
             (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
               self -> m SVGAnimatedNumber
getAmplitude self
  = liftIO
      (js_getAmplitude (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"exponent\"]" js_getExponent
        :: SVGComponentTransferFunctionElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.exponent Mozilla SVGComponentTransferFunctionElement.exponent documentation> 
getExponent ::
            (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
              self -> m SVGAnimatedNumber
getExponent self
  = liftIO
      (js_getExponent (toSVGComponentTransferFunctionElement self))
 
foreign import javascript unsafe "$1[\"offset\"]" js_getOffset ::
        SVGComponentTransferFunctionElement -> IO SVGAnimatedNumber

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGComponentTransferFunctionElement.offset Mozilla SVGComponentTransferFunctionElement.offset documentation> 
getOffset ::
          (MonadIO m, IsSVGComponentTransferFunctionElement self) =>
            self -> m SVGAnimatedNumber
getOffset self
  = liftIO
      (js_getOffset (toSVGComponentTransferFunctionElement self))