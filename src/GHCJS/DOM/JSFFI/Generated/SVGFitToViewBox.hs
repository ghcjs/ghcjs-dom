{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFitToViewBox
       (js_getViewBox, getViewBox, js_getPreserveAspectRatio,
        getPreserveAspectRatio, SVGFitToViewBox, castToSVGFitToViewBox,
        gTypeSVGFitToViewBox)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"viewBox\"]" js_getViewBox ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedRect)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBox ::
           (MonadIO m) => SVGFitToViewBox -> m (Maybe SVGAnimatedRect)
getViewBox self
  = liftIO ((js_getViewBox (unSVGFitToViewBox self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        JSRef SVGFitToViewBox -> IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m) =>
                         SVGFitToViewBox -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftIO
      ((js_getPreserveAspectRatio (unSVGFitToViewBox self)) >>=
         fromJSRef)