{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGGraphicsElement
       (js_getBBox, getBBox, js_getCTM, getCTM, js_getScreenCTM,
        getScreenCTM, js_getTransformToElement, getTransformToElement,
        js_getTransform, getTransform, js_getNearestViewportElement,
        getNearestViewportElement, js_getFarthestViewportElement,
        getFarthestViewportElement, SVGGraphicsElement,
        castToSVGGraphicsElement, gTypeSVGGraphicsElement,
        IsSVGGraphicsElement, toSVGGraphicsElement)
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

 
foreign import javascript unsafe "$1[\"getBBox\"]()" js_getBBox ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox ::
        (MonadIO m, IsSVGGraphicsElement self) => self -> m (Maybe SVGRect)
getBBox self
  = liftIO
      ((js_getBBox (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getCTM\"]()" js_getCTM ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM ::
       (MonadIO m, IsSVGGraphicsElement self) =>
         self -> m (Maybe SVGMatrix)
getCTM self
  = liftIO
      ((js_getCTM (unSVGGraphicsElement (toSVGGraphicsElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        js_getScreenCTM :: JSRef SVGGraphicsElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGMatrix)
getScreenCTM self
  = liftIO
      ((js_getScreenCTM
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"getTransformToElement\"]($2)" js_getTransformToElement ::
        JSRef SVGGraphicsElement ->
          JSRef SVGElement -> IO (JSRef SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement ::
                      (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                        self -> Maybe element -> m (Maybe SVGMatrix)
getTransformToElement self element
  = liftIO
      ((js_getTransformToElement
          (unSVGGraphicsElement (toSVGGraphicsElement self))
          (maybe jsNull (unSVGElement . toSVGElement) element))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransform ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGAnimatedTransformList)
getTransform self
  = liftIO
      ((js_getTransform
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        js_getNearestViewportElement ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElement ::
                          (MonadIO m, IsSVGGraphicsElement self) =>
                            self -> m (Maybe SVGElement)
getNearestViewportElement self
  = liftIO
      ((js_getNearestViewportElement
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        js_getFarthestViewportElement ::
        JSRef SVGGraphicsElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElement ::
                           (MonadIO m, IsSVGGraphicsElement self) =>
                             self -> m (Maybe SVGElement)
getFarthestViewportElement self
  = liftIO
      ((js_getFarthestViewportElement
          (unSVGGraphicsElement (toSVGGraphicsElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGGraphicsElement (
  ) where
#endif
