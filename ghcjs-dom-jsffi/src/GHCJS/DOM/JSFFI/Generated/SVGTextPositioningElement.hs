{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGTextPositioningElement
       (js_getX, getX, js_getY, getY, js_getDx, getDx, js_getDy, getDy,
        js_getRotate, getRotate, SVGTextPositioningElement(..),
        gTypeSVGTextPositioningElement, IsSVGTextPositioningElement,
        toSVGTextPositioningElement)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGTextPositioningElement -> IO SVGAnimatedLengthList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.x Mozilla SVGTextPositioningElement.x documentation> 
getX ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m SVGAnimatedLengthList
getX self = liftIO (js_getX (toSVGTextPositioningElement self))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGTextPositioningElement -> IO SVGAnimatedLengthList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.y Mozilla SVGTextPositioningElement.y documentation> 
getY ::
     (MonadIO m, IsSVGTextPositioningElement self) =>
       self -> m SVGAnimatedLengthList
getY self = liftIO (js_getY (toSVGTextPositioningElement self))
 
foreign import javascript unsafe "$1[\"dx\"]" js_getDx ::
        SVGTextPositioningElement -> IO SVGAnimatedLengthList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dx Mozilla SVGTextPositioningElement.dx documentation> 
getDx ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m SVGAnimatedLengthList
getDx self = liftIO (js_getDx (toSVGTextPositioningElement self))
 
foreign import javascript unsafe "$1[\"dy\"]" js_getDy ::
        SVGTextPositioningElement -> IO SVGAnimatedLengthList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.dy Mozilla SVGTextPositioningElement.dy documentation> 
getDy ::
      (MonadIO m, IsSVGTextPositioningElement self) =>
        self -> m SVGAnimatedLengthList
getDy self = liftIO (js_getDy (toSVGTextPositioningElement self))
 
foreign import javascript unsafe "$1[\"rotate\"]" js_getRotate ::
        SVGTextPositioningElement -> IO SVGAnimatedNumberList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTextPositioningElement.rotate Mozilla SVGTextPositioningElement.rotate documentation> 
getRotate ::
          (MonadIO m, IsSVGTextPositioningElement self) =>
            self -> m SVGAnimatedNumberList
getRotate self
  = liftIO (js_getRotate (toSVGTextPositioningElement self))