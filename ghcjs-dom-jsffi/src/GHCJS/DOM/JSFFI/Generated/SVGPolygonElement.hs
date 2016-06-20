{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPolygonElement
       (js_getPoints, getPoints, js_getAnimatedPoints, getAnimatedPoints,
        SVGPolygonElement, castToSVGPolygonElement, gTypeSVGPolygonElement)
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
 
foreign import javascript unsafe "$1[\"points\"]" js_getPoints ::
        SVGPolygonElement -> IO (Nullable SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.points Mozilla SVGPolygonElement.points documentation> 
getPoints ::
          (MonadIO m) => SVGPolygonElement -> m (Maybe SVGPointList)
getPoints self = liftIO (nullableToMaybe <$> (js_getPoints (self)))
 
foreign import javascript unsafe "$1[\"animatedPoints\"]"
        js_getAnimatedPoints ::
        SVGPolygonElement -> IO (Nullable SVGPointList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPolygonElement.animatedPoints Mozilla SVGPolygonElement.animatedPoints documentation> 
getAnimatedPoints ::
                  (MonadIO m) => SVGPolygonElement -> m (Maybe SVGPointList)
getAnimatedPoints self
  = liftIO (nullableToMaybe <$> (js_getAnimatedPoints (self)))