{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGUseElement
       (js_getX, getX, getXUnchecked, js_getY, getY, getYUnchecked,
        js_getWidth, getWidth, getWidthUnchecked, js_getHeight, getHeight,
        getHeightUnchecked, SVGUseElement(..), gTypeSVGUseElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        SVGUseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
getX :: (MonadIO m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.x Mozilla SVGUseElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGUseElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGUseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
getY :: (MonadIO m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.y Mozilla SVGUseElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGUseElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        SVGUseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getWidth self = liftIO (nullableToMaybe <$> (js_getWidth (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.width Mozilla SVGUseElement.width documentation> 
getWidthUnchecked ::
                  (MonadIO m) => SVGUseElement -> m SVGAnimatedLength
getWidthUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getWidth (self)))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        SVGUseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGUseElement -> m (Maybe SVGAnimatedLength)
getHeight self = liftIO (nullableToMaybe <$> (js_getHeight (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGUseElement.height Mozilla SVGUseElement.height documentation> 
getHeightUnchecked ::
                   (MonadIO m) => SVGUseElement -> m SVGAnimatedLength
getHeightUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHeight (self)))