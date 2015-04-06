{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGExternalResourcesRequired
       (js_getExternalResourcesRequired, getExternalResourcesRequired,
        SVGExternalResourcesRequired, castToSVGExternalResourcesRequired,
        gTypeSVGExternalResourcesRequired)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"externalResourcesRequired\"]" js_getExternalResourcesRequired
        ::
        JSRef SVGExternalResourcesRequired -> IO (JSRef SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired.externalResourcesRequired Mozilla SVGExternalResourcesRequired.externalResourcesRequired documentation> 
getExternalResourcesRequired ::
                             (MonadIO m) =>
                               SVGExternalResourcesRequired -> m (Maybe SVGAnimatedBoolean)
getExternalResourcesRequired self
  = liftIO
      ((js_getExternalResourcesRequired
          (unSVGExternalResourcesRequired self))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGExternalResourcesRequired (
  ) where
#endif
