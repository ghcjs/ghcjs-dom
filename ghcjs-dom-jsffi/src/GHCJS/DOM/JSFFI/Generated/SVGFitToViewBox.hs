{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFitToViewBox
       (js_getViewBox, getViewBox, js_getPreserveAspectRatio,
        getPreserveAspectRatio, SVGFitToViewBox(..), gTypeSVGFitToViewBox,
        IsSVGFitToViewBox, toSVGFitToViewBox)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"viewBox\"]" js_getViewBox ::
        SVGFitToViewBox -> IO SVGAnimatedRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.viewBox Mozilla SVGFitToViewBox.viewBox documentation> 
getViewBox ::
           (MonadIO m, IsSVGFitToViewBox self) => self -> m SVGAnimatedRect
getViewBox self = liftIO (js_getViewBox (toSVGFitToViewBox self))
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        SVGFitToViewBox -> IO SVGAnimatedPreserveAspectRatio

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFitToViewBox.preserveAspectRatio Mozilla SVGFitToViewBox.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m, IsSVGFitToViewBox self) =>
                         self -> m SVGAnimatedPreserveAspectRatio
getPreserveAspectRatio self
  = liftIO (js_getPreserveAspectRatio (toSVGFitToViewBox self))