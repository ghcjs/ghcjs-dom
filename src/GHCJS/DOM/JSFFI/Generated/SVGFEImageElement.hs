{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEImageElement
       (js_getPreserveAspectRatio, getPreserveAspectRatio,
        SVGFEImageElement, castToSVGFEImageElement, gTypeSVGFEImageElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"preserveAspectRatio\"]"
        js_getPreserveAspectRatio ::
        JSRef SVGFEImageElement ->
          IO (JSRef SVGAnimatedPreserveAspectRatio)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEImageElement.preserveAspectRatio Mozilla SVGFEImageElement.preserveAspectRatio documentation> 
getPreserveAspectRatio ::
                       (MonadIO m) =>
                         SVGFEImageElement -> m (Maybe SVGAnimatedPreserveAspectRatio)
getPreserveAspectRatio self
  = liftIO
      ((js_getPreserveAspectRatio (unSVGFEImageElement self)) >>=
         fromJSRef)