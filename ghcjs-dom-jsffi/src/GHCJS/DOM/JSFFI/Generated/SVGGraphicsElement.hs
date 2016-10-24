{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGGraphicsElement
       (js_getBBox, getBBox, getBBox_, getBBoxUnsafe, getBBoxUnchecked,
        js_getCTM, getCTM, getCTM_, getCTMUnsafe, getCTMUnchecked,
        js_getScreenCTM, getScreenCTM, getScreenCTM_, getScreenCTMUnsafe,
        getScreenCTMUnchecked, js_getTransformToElement,
        getTransformToElement, getTransformToElement_,
        getTransformToElementUnsafe, getTransformToElementUnchecked,
        js_getTransform, getTransform, getTransformUnsafe,
        getTransformUnchecked, js_getNearestViewportElement,
        getNearestViewportElement, getNearestViewportElementUnsafe,
        getNearestViewportElementUnchecked, js_getFarthestViewportElement,
        getFarthestViewportElement, getFarthestViewportElementUnsafe,
        getFarthestViewportElementUnchecked, SVGGraphicsElement(..),
        gTypeSVGGraphicsElement, IsSVGGraphicsElement,
        toSVGGraphicsElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"getBBox\"]()" js_getBBox ::
        SVGGraphicsElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox ::
        (MonadIO m, IsSVGGraphicsElement self) => self -> m (Maybe SVGRect)
getBBox self
  = liftIO
      (nullableToMaybe <$> (js_getBBox (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBox_ :: (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getBBox_ self
  = liftIO (void (js_getBBox (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBoxUnsafe ::
              (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
                self -> m SVGRect
getBBoxUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBBox (toSVGGraphicsElement self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getBBox Mozilla SVGGraphicsElement.getBBox documentation> 
getBBoxUnchecked ::
                 (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGRect
getBBoxUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getBBox (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getCTM\"]()" js_getCTM ::
        SVGGraphicsElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM ::
       (MonadIO m, IsSVGGraphicsElement self) =>
         self -> m (Maybe SVGMatrix)
getCTM self
  = liftIO
      (nullableToMaybe <$> (js_getCTM (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTM_ :: (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getCTM_ self
  = liftIO (void (js_getCTM (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTMUnsafe ::
             (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
               self -> m SVGMatrix
getCTMUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCTM (toSVGGraphicsElement self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getCTM Mozilla SVGGraphicsElement.getCTM documentation> 
getCTMUnchecked ::
                (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGMatrix
getCTMUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCTM (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"getScreenCTM\"]()"
        js_getScreenCTM :: SVGGraphicsElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGMatrix)
getScreenCTM self
  = liftIO
      (nullableToMaybe <$> (js_getScreenCTM (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTM_ ::
              (MonadIO m, IsSVGGraphicsElement self) => self -> m ()
getScreenCTM_ self
  = liftIO (void (js_getScreenCTM (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTMUnsafe ::
                   (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
                     self -> m SVGMatrix
getScreenCTMUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getScreenCTM (toSVGGraphicsElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getScreenCTM Mozilla SVGGraphicsElement.getScreenCTM documentation> 
getScreenCTMUnchecked ::
                      (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGMatrix
getScreenCTMUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getScreenCTM (toSVGGraphicsElement self)))
 
foreign import javascript unsafe
        "$1[\"getTransformToElement\"]($2)" js_getTransformToElement ::
        SVGGraphicsElement ->
          Nullable SVGElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement ::
                      (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                        self -> Maybe element -> m (Maybe SVGMatrix)
getTransformToElement self element
  = liftIO
      (nullableToMaybe <$>
         (js_getTransformToElement (toSVGGraphicsElement self)
            (maybeToNullable (fmap toSVGElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElement_ ::
                       (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                         self -> Maybe element -> m ()
getTransformToElement_ self element
  = liftIO
      (void
         (js_getTransformToElement (toSVGGraphicsElement self)
            (maybeToNullable (fmap toSVGElement element))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElementUnsafe ::
                            (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element,
                             HasCallStack) =>
                              self -> Maybe element -> m SVGMatrix
getTransformToElementUnsafe self element
  = liftIO
      ((nullableToMaybe <$>
          (js_getTransformToElement (toSVGGraphicsElement self)
             (maybeToNullable (fmap toSVGElement element))))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.getTransformToElement Mozilla SVGGraphicsElement.getTransformToElement documentation> 
getTransformToElementUnchecked ::
                               (MonadIO m, IsSVGGraphicsElement self, IsSVGElement element) =>
                                 self -> Maybe element -> m SVGMatrix
getTransformToElementUnchecked self element
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTransformToElement (toSVGGraphicsElement self)
            (maybeToNullable (fmap toSVGElement element))))
 
foreign import javascript unsafe "$1[\"transform\"]"
        js_getTransform ::
        SVGGraphicsElement -> IO (Nullable SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransform ::
             (MonadIO m, IsSVGGraphicsElement self) =>
               self -> m (Maybe SVGAnimatedTransformList)
getTransform self
  = liftIO
      (nullableToMaybe <$> (js_getTransform (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransformUnsafe ::
                   (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
                     self -> m SVGAnimatedTransformList
getTransformUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getTransform (toSVGGraphicsElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.transform Mozilla SVGGraphicsElement.transform documentation> 
getTransformUnchecked ::
                      (MonadIO m, IsSVGGraphicsElement self) =>
                        self -> m SVGAnimatedTransformList
getTransformUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTransform (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"nearestViewportElement\"]"
        js_getNearestViewportElement ::
        SVGGraphicsElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElement ::
                          (MonadIO m, IsSVGGraphicsElement self) =>
                            self -> m (Maybe SVGElement)
getNearestViewportElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getNearestViewportElement (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElementUnsafe ::
                                (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
                                  self -> m SVGElement
getNearestViewportElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getNearestViewportElement (toSVGGraphicsElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.nearestViewportElement Mozilla SVGGraphicsElement.nearestViewportElement documentation> 
getNearestViewportElementUnchecked ::
                                   (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGElement
getNearestViewportElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getNearestViewportElement (toSVGGraphicsElement self)))
 
foreign import javascript unsafe "$1[\"farthestViewportElement\"]"
        js_getFarthestViewportElement ::
        SVGGraphicsElement -> IO (Nullable SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElement ::
                           (MonadIO m, IsSVGGraphicsElement self) =>
                             self -> m (Maybe SVGElement)
getFarthestViewportElement self
  = liftIO
      (nullableToMaybe <$>
         (js_getFarthestViewportElement (toSVGGraphicsElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElementUnsafe ::
                                 (MonadIO m, IsSVGGraphicsElement self, HasCallStack) =>
                                   self -> m SVGElement
getFarthestViewportElementUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getFarthestViewportElement (toSVGGraphicsElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGraphicsElement.farthestViewportElement Mozilla SVGGraphicsElement.farthestViewportElement documentation> 
getFarthestViewportElementUnchecked ::
                                    (MonadIO m, IsSVGGraphicsElement self) => self -> m SVGElement
getFarthestViewportElementUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getFarthestViewportElement (toSVGGraphicsElement self)))