{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGGraphicsElement
       (js_getBBox, getBBox, getBBox_, js_getCTM, getCTM, getCTM_,
        js_getScreenCTM, getScreenCTM, getScreenCTM_,
        js_getTransformToElement, getTransformToElement,
        getTransformToElement_, js_getTransform, getTransform,
        js_getNearestViewportElement, getNearestViewportElement,
        js_getFarthestViewportElement, getFarthestViewportElement,
        SVGGraphicsElement(..), gTypeSVGGraphicsElement,
        IsSVGGraphicsElement, toSVGGraphicsElement)
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
 
foreign import javascript unsafe "$1[\"getBBox\"]()" js_getBBox ::
        SVGGraphicsElement -> IO SVGRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox ::
        (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGRect
getBBox self = liftIO (js_getBBox (toSVGGraphicsElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox_ :: (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getBBox_ self
  = liftIO (void (js_getBBox (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getCTM\"]()" js_getCTM ::
        SVGGraphicsElement -> IO SVGMatrix

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM ::
       (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGMatrix
getCTM self = liftIO (js_getCTM (toSVGGraphicsElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM_ :: (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getCTM_ self
  = liftIO (void (js_getCTM (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        js_getScreenCTM :: SVGGraphicsElement -> IO SVGMatrix

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM ::
             (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGMatrix
getScreenCTM self
  = liftIO (js_getScreenCTM (toSVGGraphicsElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM_ ::
              (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getScreenCTM_ self
  = liftIO (void (js_getScreenCTM (toSVGGraphicsElement self)))
 
foreign import javascript safe "$1[\"getTransformToElement\"]($2)"
        js_getTransformToElement ::
        SVGGraphicsElement -> Optional SVGElement -> IO SVGMatrix

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement ::
                      (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                        self -> Maybe element -> m SVGMatrix
getTransformToElement self element
  = liftIO
      (js_getTransformToElement (toSVGGraphicsElement self)
         (maybeToOptional (fmap toSVGElement element)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement_ ::
                       (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                         self -> Maybe element -> m ()
getTransformToElement_ self element
  = liftIO
      (void
         (js_getTransformToElement (toSVGGraphicsElement self)
            (maybeToOptional (fmap toSVGElement element))))
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform ::
        SVGGraphicsElement -> IO SVGAnimatedTransformList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransform ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m SVGAnimatedTransformList
getTransform self
  = liftIO (js_getTransform (toSVGGraphicsElement self))
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        js_getNearestViewportElement :: SVGGraphicsElement -> IO SVGElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElement ::
                          (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGElement
getNearestViewportElement self
  = liftIO (js_getNearestViewportElement (toSVGGraphicsElement self))
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        js_getFarthestViewportElement ::
        SVGGraphicsElement -> IO SVGElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElement ::
                           (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGElement
getFarthestViewportElement self
  = liftIO
      (js_getFarthestViewportElement (toSVGGraphicsElement self))