{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGURIReference
       (js_getHref, getHref, SVGURIReference, castToSVGURIReference,
        gTypeSVGURIReference)
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
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef SVGURIReference -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGURIReference.href Mozilla SVGURIReference.href documentation> 
getHref ::
        (MonadIO m) => SVGURIReference -> m (Maybe SVGAnimatedString)
getHref self
  = liftIO ((js_getHref (unSVGURIReference self)) >>= fromJSRef)