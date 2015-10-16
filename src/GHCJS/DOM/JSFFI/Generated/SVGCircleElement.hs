{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGCircleElement
       (js_getCx, getCx, js_getCy, getCy, js_getR, getR, SVGCircleElement,
        castToSVGCircleElement, gTypeSVGCircleElement)
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
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cx Mozilla SVGCircleElement.cx documentation> 
getCx ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCx self = liftIO (nullableToMaybe <$> (js_getCx (self)))
 
foreign import javascript unsafe "$1[\"cy\"]" js_getCy ::
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.cy Mozilla SVGCircleElement.cy documentation> 
getCy ::
      (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getCy self = liftIO (nullableToMaybe <$> (js_getCy (self)))
 
foreign import javascript unsafe "$1[\"r\"]" js_getR ::
        SVGCircleElement -> IO (Nullable SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCircleElement.r Mozilla SVGCircleElement.r documentation> 
getR ::
     (MonadIO m) => SVGCircleElement -> m (Maybe SVGAnimatedLength)
getR self = liftIO (nullableToMaybe <$> (js_getR (self)))