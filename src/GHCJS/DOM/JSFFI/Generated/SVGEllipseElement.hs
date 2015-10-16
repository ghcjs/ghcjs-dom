{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGEllipseElement
       (js_getCx, getCx, js_getCy, getCy, js_getRx, getRx, js_getRy,
        getRy, SVGEllipseElement, castToSVGEllipseElement,
        gTypeSVGEllipseElement)
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
 
foreign import javascript unsafe "$1[\"cx\"]" js_getCx ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cx Mozilla SVGEllipseElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCx self = liftIO (nullableToMaybe <$> (js_getCx (self)))
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.cy Mozilla SVGEllipseElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getCy self = liftIO (nullableToMaybe <$> (js_getCy (self)))
 
foreign import javascript unsafe "$1[\"rx\"]" js_getRx ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.rx Mozilla SVGEllipseElement.rx documentation> 
getRx ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRx self = liftIO (nullableToMaybe <$> (js_getRx (self)))
 
foreign import javascript unsafe "$1[\"ry\"]" js_getRy ::
        SVGEllipseElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGEllipseElement.ry Mozilla SVGEllipseElement.ry documentation> 
getRy ::
      (MonadIO m) => SVGEllipseElement -> m (Maybe SVGAnimatedLength)
getRy self = liftIO (nullableToMaybe <$> (js_getRy (self)))