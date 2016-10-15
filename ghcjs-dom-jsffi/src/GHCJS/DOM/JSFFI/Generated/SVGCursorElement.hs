{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGCursorElement
       (js_getX, getX, getXUnchecked, js_getY, getY, getYUnchecked,
        SVGCursorElement(..), gTypeSVGCursorElement)
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
        SVGCursorElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.x Mozilla SVGCursorElement.x documentation> 
getX ::
     (MonadIO m) => SVGCursorElement -> m (Maybe SVGAnimatedLength)
getX self = liftIO (nullableToMaybe <$> (js_getX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.x Mozilla SVGCursorElement.x documentation> 
getXUnchecked ::
              (MonadIO m) => SVGCursorElement -> m SVGAnimatedLength
getXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getX (self)))
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        SVGCursorElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.y Mozilla SVGCursorElement.y documentation> 
getY ::
     (MonadIO m) => SVGCursorElement -> m (Maybe SVGAnimatedLength)
getY self = liftIO (nullableToMaybe <$> (js_getY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.y Mozilla SVGCursorElement.y documentation> 
getYUnchecked ::
              (MonadIO m) => SVGCursorElement -> m SVGAnimatedLength
getYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getY (self)))