{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFilterElement
       (js_setFilterRes, setFilterRes, js_getFilterUnits, getFilterUnits,
        getFilterUnitsUnsafe, getFilterUnitsUnchecked,
        js_getPrimitiveUnits, getPrimitiveUnits, getPrimitiveUnitsUnsafe,
        getPrimitiveUnitsUnchecked, js_getX, getX, getXUnsafe,
        getXUnchecked, js_getY, getY, getYUnsafe, getYUnchecked,
        js_getWidth, getWidth, getWidthUnsafe, getWidthUnchecked,
        js_getHeight, getHeight, getHeightUnsafe, getHeightUnchecked,
        js_getFilterResX, getFilterResX, getFilterResXUnsafe,
        getFilterResXUnchecked, js_getFilterResY, getFilterResY,
        getFilterResYUnsafe, getFilterResYUnchecked, SVGFilterElement(..),
        gTypeSVGFilterElement)
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
 
foreign import javascript unsafe "$1[\"setFilterRes\"]($2, $3)"
        js_setFilterRes :: SVGFilterElement -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.setFilterRes Mozilla SVGFilterElement.setFilterRes documentation> 
setFilterRes ::
             (MonadIO m) => SVGFilterElement -> Word -> Word -> m ()
setFilterRes self filterResX filterResY
  = liftIO (js_setFilterRes (self) filterResX filterResY)
 
foreign import javascript unsafe "$1[\"filterUnits\"]"
        js_getFilterUnits ::
        SVGFilterElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnits ::
               (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getFilterUnits self
  = liftIO (nullableToMaybe <$> (js_getFilterUnits (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnitsUnsafe ::
                     (MonadIO m, HasCallStack) =>
                       SVGFilterElement -> m SVGAnimatedEnumeration
getFilterUnitsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFilterUnits (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterUnits Mozilla SVGFilterElement.filterUnits documentation> 
getFilterUnitsUnchecked ::
                        (MonadIO m) => SVGFilterElement -> m SVGAnimatedEnumeration
getFilterUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getFilterUnits (self)))
 
foreign import javascript unsafe "$1[\"primitiveUnits\"]"
        js_getPrimitiveUnits ::
        SVGFilterElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnits ::
                  (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedEnumeration)
getPrimitiveUnits self
  = liftIO (nullableToMaybe <$> (js_getPrimitiveUnits (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnitsUnsafe ::
                        (MonadIO m, HasCallStack) =>
                          SVGFilterElement -> m SVGAnimatedEnumeration
getPrimitiveUnitsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPrimitiveUnits (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.primitiveUnits Mozilla SVGFilterElement.primitiveUnits documentation> 
getPrimitiveUnitsUnchecked ::
                           (MonadIO m) => SVGFilterElement -> m SVGAnimatedEnumeration
getPrimitiveUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getPrimitiveUnits (self)))
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGFilterElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getX ::
     (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getXUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGFilterElement -> m SVGAnimatedLength
getXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.x Mozilla SVGFilterElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGFilterElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getY ::
     (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getYUnsafe ::
           (MonadIO m, HasCallStack) =>
             SVGFilterElement -> m SVGAnimatedLength
getYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.y Mozilla SVGFilterElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGFilterElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidthUnsafe ::
               (MonadIO m, HasCallStack) =>
                 SVGFilterElement -> m SVGAnimatedLength
getWidthUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getWidth (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.width Mozilla SVGFilterElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGFilterElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeightUnsafe ::
                (MonadIO m, HasCallStack) =>
                  SVGFilterElement -> m SVGAnimatedLength
getHeightUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHeight (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.height Mozilla SVGFilterElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGFilterElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))
 
foreign import javascript unsafe "$1[\"filterResX\"]"
        js_getFilterResX ::
        SVGFilterElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResX ::
              (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResX self
  = liftIO (nullableToMaybe <$> (js_getFilterResX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResXUnsafe ::
                    (MonadIO m, HasCallStack) =>
                      SVGFilterElement -> m SVGAnimatedInteger
getFilterResXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFilterResX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResX Mozilla SVGFilterElement.filterResX documentation> 
getFilterResXUnchecked ::
                       (MonadIO m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFilterResX (self)))
 
foreign import javascript unsafe "$1[\"filterResY\"]"
        js_getFilterResY ::
        SVGFilterElement -> IO (Nullable SVGAnimatedInteger)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResY ::
              (MonadIO m) => SVGFilterElement -> m (Maybe SVGAnimatedInteger)
getFilterResY self
  = liftIO (nullableToMaybe <$> (js_getFilterResY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResYUnsafe ::
                    (MonadIO m, HasCallStack) =>
                      SVGFilterElement -> m SVGAnimatedInteger
getFilterResYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFilterResY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFilterElement.filterResY Mozilla SVGFilterElement.filterResY documentation> 
getFilterResYUnchecked ::
                       (MonadIO m) => SVGFilterElement -> m SVGAnimatedInteger
getFilterResYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFilterResY (self)))