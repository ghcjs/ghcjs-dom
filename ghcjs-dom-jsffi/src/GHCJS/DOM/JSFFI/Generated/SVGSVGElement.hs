{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGSVGElement
       (js_suspendRedraw, suspendRedraw, js_unsuspendRedraw,
        unsuspendRedraw, js_unsuspendRedrawAll, unsuspendRedrawAll,
        js_forceRedraw, forceRedraw, js_pauseAnimations, pauseAnimations,
        js_unpauseAnimations, unpauseAnimations, js_animationsPaused,
        animationsPaused, js_getCurrentTime, getCurrentTime,
        js_setCurrentTime, setCurrentTime, js_getIntersectionList,
        getIntersectionList, js_getEnclosureList, getEnclosureList,
        js_checkIntersection, checkIntersection, js_checkEnclosure,
        checkEnclosure, js_deselectAll, deselectAll, js_createSVGNumber,
        createSVGNumber, js_createSVGLength, createSVGLength,
        js_createSVGAngle, createSVGAngle, js_createSVGPoint,
        createSVGPoint, js_createSVGMatrix, createSVGMatrix,
        js_createSVGRect, createSVGRect, js_createSVGTransform,
        createSVGTransform, js_createSVGTransformFromMatrix,
        createSVGTransformFromMatrix, js_getElementById, getElementById,
        js_getX, getX, js_getY, getY, js_getWidth, getWidth, js_getHeight,
        getHeight, js_setContentScriptType, setContentScriptType,
        js_getContentScriptType, getContentScriptType,
        js_setContentStyleType, setContentStyleType,
        js_getContentStyleType, getContentStyleType, js_getViewport,
        getViewport, js_getPixelUnitToMillimeterX,
        getPixelUnitToMillimeterX, js_getPixelUnitToMillimeterY,
        getPixelUnitToMillimeterY, js_getScreenPixelToMillimeterX,
        getScreenPixelToMillimeterX, js_getScreenPixelToMillimeterY,
        getScreenPixelToMillimeterY, js_getUseCurrentView,
        getUseCurrentView, js_getCurrentView, getCurrentView,
        js_setCurrentScale, setCurrentScale, js_getCurrentScale,
        getCurrentScale, js_getCurrentTranslate, getCurrentTranslate,
        SVGSVGElement, castToSVGSVGElement, gTypeSVGSVGElement)
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
 
foreign import javascript unsafe "$1[\"suspendRedraw\"]($2)"
        js_suspendRedraw :: SVGSVGElement -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.suspendRedraw Mozilla SVGSVGElement.suspendRedraw documentation> 
suspendRedraw :: (MonadIO m) => SVGSVGElement -> Word -> m Word
suspendRedraw self maxWaitMilliseconds
  = liftIO (js_suspendRedraw (self) maxWaitMilliseconds)
 
foreign import javascript unsafe "$1[\"unsuspendRedraw\"]($2)"
        js_unsuspendRedraw :: SVGSVGElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedraw Mozilla SVGSVGElement.unsuspendRedraw documentation> 
unsuspendRedraw :: (MonadIO m) => SVGSVGElement -> Word -> m ()
unsuspendRedraw self suspendHandleId
  = liftIO (js_unsuspendRedraw (self) suspendHandleId)
 
foreign import javascript unsafe "$1[\"unsuspendRedrawAll\"]()"
        js_unsuspendRedrawAll :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unsuspendRedrawAll Mozilla SVGSVGElement.unsuspendRedrawAll documentation> 
unsuspendRedrawAll :: (MonadIO m) => SVGSVGElement -> m ()
unsuspendRedrawAll self = liftIO (js_unsuspendRedrawAll (self))
 
foreign import javascript unsafe "$1[\"forceRedraw\"]()"
        js_forceRedraw :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.forceRedraw Mozilla SVGSVGElement.forceRedraw documentation> 
forceRedraw :: (MonadIO m) => SVGSVGElement -> m ()
forceRedraw self = liftIO (js_forceRedraw (self))
 
foreign import javascript unsafe "$1[\"pauseAnimations\"]()"
        js_pauseAnimations :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pauseAnimations Mozilla SVGSVGElement.pauseAnimations documentation> 
pauseAnimations :: (MonadIO m) => SVGSVGElement -> m ()
pauseAnimations self = liftIO (js_pauseAnimations (self))
 
foreign import javascript unsafe "$1[\"unpauseAnimations\"]()"
        js_unpauseAnimations :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.unpauseAnimations Mozilla SVGSVGElement.unpauseAnimations documentation> 
unpauseAnimations :: (MonadIO m) => SVGSVGElement -> m ()
unpauseAnimations self = liftIO (js_unpauseAnimations (self))
 
foreign import javascript unsafe
        "($1[\"animationsPaused\"]() ? 1 : 0)" js_animationsPaused ::
        SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.animationsPaused Mozilla SVGSVGElement.animationsPaused documentation> 
animationsPaused :: (MonadIO m) => SVGSVGElement -> m Bool
animationsPaused self = liftIO (js_animationsPaused (self))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        js_getCurrentTime :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getCurrentTime Mozilla SVGSVGElement.getCurrentTime documentation> 
getCurrentTime :: (MonadIO m) => SVGSVGElement -> m Float
getCurrentTime self = liftIO (js_getCurrentTime (self))
 
foreign import javascript unsafe "$1[\"setCurrentTime\"]($2)"
        js_setCurrentTime :: SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.setCurrentTime Mozilla SVGSVGElement.setCurrentTime documentation> 
setCurrentTime :: (MonadIO m) => SVGSVGElement -> Float -> m ()
setCurrentTime self seconds
  = liftIO (js_setCurrentTime (self) seconds)
 
foreign import javascript unsafe
        "$1[\"getIntersectionList\"]($2,\n$3)" js_getIntersectionList ::
        SVGSVGElement ->
          Nullable SVGRect -> Nullable SVGElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getIntersectionList Mozilla SVGSVGElement.getIntersectionList documentation> 
getIntersectionList ::
                    (MonadIO m, IsSVGElement referenceElement) =>
                      SVGSVGElement ->
                        Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getIntersectionList self rect referenceElement
  = liftIO
      (nullableToMaybe <$>
         (js_getIntersectionList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))
 
foreign import javascript unsafe "$1[\"getEnclosureList\"]($2, $3)"
        js_getEnclosureList ::
        SVGSVGElement ->
          Nullable SVGRect -> Nullable SVGElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getEnclosureList Mozilla SVGSVGElement.getEnclosureList documentation> 
getEnclosureList ::
                 (MonadIO m, IsSVGElement referenceElement) =>
                   SVGSVGElement ->
                     Maybe SVGRect -> Maybe referenceElement -> m (Maybe NodeList)
getEnclosureList self rect referenceElement
  = liftIO
      (nullableToMaybe <$>
         (js_getEnclosureList (self) (maybeToNullable rect)
            (maybeToNullable (fmap toSVGElement referenceElement))))
 
foreign import javascript unsafe
        "($1[\"checkIntersection\"]($2,\n$3) ? 1 : 0)" js_checkIntersection
        ::
        SVGSVGElement -> Nullable SVGElement -> Nullable SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkIntersection Mozilla SVGSVGElement.checkIntersection documentation> 
checkIntersection ::
                  (MonadIO m, IsSVGElement element) =>
                    SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkIntersection self element rect
  = liftIO
      (js_checkIntersection (self)
         (maybeToNullable (fmap toSVGElement element))
         (maybeToNullable rect))
 
foreign import javascript unsafe
        "($1[\"checkEnclosure\"]($2,\n$3) ? 1 : 0)" js_checkEnclosure ::
        SVGSVGElement -> Nullable SVGElement -> Nullable SVGRect -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.checkEnclosure Mozilla SVGSVGElement.checkEnclosure documentation> 
checkEnclosure ::
               (MonadIO m, IsSVGElement element) =>
                 SVGSVGElement -> Maybe element -> Maybe SVGRect -> m Bool
checkEnclosure self element rect
  = liftIO
      (js_checkEnclosure (self)
         (maybeToNullable (fmap toSVGElement element))
         (maybeToNullable rect))
 
foreign import javascript unsafe "$1[\"deselectAll\"]()"
        js_deselectAll :: SVGSVGElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.deselectAll Mozilla SVGSVGElement.deselectAll documentation> 
deselectAll :: (MonadIO m) => SVGSVGElement -> m ()
deselectAll self = liftIO (js_deselectAll (self))
 
foreign import javascript unsafe "$1[\"createSVGNumber\"]()"
        js_createSVGNumber :: SVGSVGElement -> IO (Nullable SVGNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGNumber Mozilla SVGSVGElement.createSVGNumber documentation> 
createSVGNumber ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGNumber)
createSVGNumber self
  = liftIO (nullableToMaybe <$> (js_createSVGNumber (self)))
 
foreign import javascript unsafe "$1[\"createSVGLength\"]()"
        js_createSVGLength :: SVGSVGElement -> IO (Nullable SVGLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGLength Mozilla SVGSVGElement.createSVGLength documentation> 
createSVGLength ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGLength)
createSVGLength self
  = liftIO (nullableToMaybe <$> (js_createSVGLength (self)))
 
foreign import javascript unsafe "$1[\"createSVGAngle\"]()"
        js_createSVGAngle :: SVGSVGElement -> IO (Nullable SVGAngle)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGAngle Mozilla SVGSVGElement.createSVGAngle documentation> 
createSVGAngle ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGAngle)
createSVGAngle self
  = liftIO (nullableToMaybe <$> (js_createSVGAngle (self)))
 
foreign import javascript unsafe "$1[\"createSVGPoint\"]()"
        js_createSVGPoint :: SVGSVGElement -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGPoint Mozilla SVGSVGElement.createSVGPoint documentation> 
createSVGPoint ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGPoint)
createSVGPoint self
  = liftIO (nullableToMaybe <$> (js_createSVGPoint (self)))
 
foreign import javascript unsafe "$1[\"createSVGMatrix\"]()"
        js_createSVGMatrix :: SVGSVGElement -> IO (Nullable SVGMatrix)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGMatrix Mozilla SVGSVGElement.createSVGMatrix documentation> 
createSVGMatrix ::
                (MonadIO m) => SVGSVGElement -> m (Maybe SVGMatrix)
createSVGMatrix self
  = liftIO (nullableToMaybe <$> (js_createSVGMatrix (self)))
 
foreign import javascript unsafe "$1[\"createSVGRect\"]()"
        js_createSVGRect :: SVGSVGElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGRect Mozilla SVGSVGElement.createSVGRect documentation> 
createSVGRect :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGRect)
createSVGRect self
  = liftIO (nullableToMaybe <$> (js_createSVGRect (self)))
 
foreign import javascript unsafe "$1[\"createSVGTransform\"]()"
        js_createSVGTransform ::
        SVGSVGElement -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransform Mozilla SVGSVGElement.createSVGTransform documentation> 
createSVGTransform ::
                   (MonadIO m) => SVGSVGElement -> m (Maybe SVGTransform)
createSVGTransform self
  = liftIO (nullableToMaybe <$> (js_createSVGTransform (self)))
 
foreign import javascript unsafe
        "$1[\"createSVGTransformFromMatrix\"]($2)"
        js_createSVGTransformFromMatrix ::
        SVGSVGElement -> Nullable SVGMatrix -> IO (Nullable SVGTransform)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.createSVGTransformFromMatrix Mozilla SVGSVGElement.createSVGTransformFromMatrix documentation> 
createSVGTransformFromMatrix ::
                             (MonadIO m) =>
                               SVGSVGElement -> Maybe SVGMatrix -> m (Maybe SVGTransform)
createSVGTransformFromMatrix self matrix
  = liftIO
      (nullableToMaybe <$>
         (js_createSVGTransformFromMatrix (self) (maybeToNullable matrix)))
 
foreign import javascript unsafe "$1[\"getElementById\"]($2)"
        js_getElementById ::
        SVGSVGElement -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.getElementById Mozilla SVGSVGElement.getElementById documentation> 
getElementById ::
               (MonadIO m, ToJSString elementId) =>
                 SVGSVGElement -> elementId -> m (Maybe Element)
getElementById self elementId
  = liftIO
      (nullableToMaybe <$>
         (js_getElementById (self) (toJSString elementId)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.x Mozilla SVGSVGElement.x documentation> 
getX :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.y Mozilla SVGSVGElement.y documentation> 
getY :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.width Mozilla SVGSVGElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGSVGElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.height Mozilla SVGSVGElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGSVGElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"contentScriptType\"] = $2;"
        js_setContentScriptType :: SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
setContentScriptType ::
                     (MonadIO m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentScriptType self val
  = liftIO (js_setContentScriptType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"contentScriptType\"]"
        js_getContentScriptType :: SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentScriptType Mozilla SVGSVGElement.contentScriptType documentation> 
getContentScriptType ::
                     (MonadIO m, FromJSString result) => SVGSVGElement -> m result
getContentScriptType self
  = liftIO (fromJSString <$> (js_getContentScriptType (self)))
 
foreign import javascript unsafe "$1[\"contentStyleType\"] = $2;"
        js_setContentStyleType :: SVGSVGElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
setContentStyleType ::
                    (MonadIO m, ToJSString val) => SVGSVGElement -> val -> m ()
setContentStyleType self val
  = liftIO (js_setContentStyleType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"contentStyleType\"]"
        js_getContentStyleType :: SVGSVGElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.contentStyleType Mozilla SVGSVGElement.contentStyleType documentation> 
getContentStyleType ::
                    (MonadIO m, FromJSString result) => SVGSVGElement -> m result
getContentStyleType self
  = liftIO (fromJSString <$> (js_getContentStyleType (self)))
 
foreign import javascript unsafe "$1[\"viewport\"]" js_getViewport
        :: SVGSVGElement -> IO (Nullable SVGRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.viewport Mozilla SVGSVGElement.viewport documentation> 
getViewport :: (MonadIO m) => SVGSVGElement -> m (Maybe SVGRect)
getViewport self
  = liftIO (nullableToMaybe <$> (js_getViewport (self)))
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterX\"]"
        js_getPixelUnitToMillimeterX :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterX Mozilla SVGSVGElement.pixelUnitToMillimeterX documentation> 
getPixelUnitToMillimeterX ::
                          (MonadIO m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterX self
  = liftIO (js_getPixelUnitToMillimeterX (self))
 
foreign import javascript unsafe "$1[\"pixelUnitToMillimeterY\"]"
        js_getPixelUnitToMillimeterY :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.pixelUnitToMillimeterY Mozilla SVGSVGElement.pixelUnitToMillimeterY documentation> 
getPixelUnitToMillimeterY ::
                          (MonadIO m) => SVGSVGElement -> m Float
getPixelUnitToMillimeterY self
  = liftIO (js_getPixelUnitToMillimeterY (self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterX\"]"
        js_getScreenPixelToMillimeterX :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterX Mozilla SVGSVGElement.screenPixelToMillimeterX documentation> 
getScreenPixelToMillimeterX ::
                            (MonadIO m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterX self
  = liftIO (js_getScreenPixelToMillimeterX (self))
 
foreign import javascript unsafe "$1[\"screenPixelToMillimeterY\"]"
        js_getScreenPixelToMillimeterY :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.screenPixelToMillimeterY Mozilla SVGSVGElement.screenPixelToMillimeterY documentation> 
getScreenPixelToMillimeterY ::
                            (MonadIO m) => SVGSVGElement -> m Float
getScreenPixelToMillimeterY self
  = liftIO (js_getScreenPixelToMillimeterY (self))
 
foreign import javascript unsafe "($1[\"useCurrentView\"] ? 1 : 0)"
        js_getUseCurrentView :: SVGSVGElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.useCurrentView Mozilla SVGSVGElement.useCurrentView documentation> 
getUseCurrentView :: (MonadIO m) => SVGSVGElement -> m Bool
getUseCurrentView self = liftIO (js_getUseCurrentView (self))
 
foreign import javascript unsafe "$1[\"currentView\"]"
        js_getCurrentView :: SVGSVGElement -> IO (Nullable SVGViewSpec)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentView Mozilla SVGSVGElement.currentView documentation> 
getCurrentView ::
               (MonadIO m) => SVGSVGElement -> m (Maybe SVGViewSpec)
getCurrentView self
  = liftIO (nullableToMaybe <$> (js_getCurrentView (self)))
 
foreign import javascript unsafe "$1[\"currentScale\"] = $2;"
        js_setCurrentScale :: SVGSVGElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
setCurrentScale :: (MonadIO m) => SVGSVGElement -> Float -> m ()
setCurrentScale self val = liftIO (js_setCurrentScale (self) val)
 
foreign import javascript unsafe "$1[\"currentScale\"]"
        js_getCurrentScale :: SVGSVGElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentScale Mozilla SVGSVGElement.currentScale documentation> 
getCurrentScale :: (MonadIO m) => SVGSVGElement -> m Float
getCurrentScale self = liftIO (js_getCurrentScale (self))
 
foreign import javascript unsafe "$1[\"currentTranslate\"]"
        js_getCurrentTranslate :: SVGSVGElement -> IO (Nullable SVGPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGSVGElement.currentTranslate Mozilla SVGSVGElement.currentTranslate documentation> 
getCurrentTranslate ::
                    (MonadIO m) => SVGSVGElement -> m (Maybe SVGPoint)
getCurrentTranslate self
  = liftIO (nullableToMaybe <$> (js_getCurrentTranslate (self)))