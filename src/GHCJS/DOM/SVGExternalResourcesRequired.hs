{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGExternalResourcesRequired
       (ghcjs_dom_svg_external_resources_required_get_external_resources_required,
        svgExternalResourcesRequiredGetExternalResourcesRequired,
        SVGExternalResourcesRequired, IsSVGExternalResourcesRequired,
        castToSVGExternalResourcesRequired,
        gTypeSVGExternalResourcesRequired, toSVGExternalResourcesRequired)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"externalResourcesRequired\"]"
        ghcjs_dom_svg_external_resources_required_get_external_resources_required
        ::
        JSRef SVGExternalResourcesRequired -> IO (JSRef SVGAnimatedBoolean)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGExternalResourcesRequired.externalResourcesRequired Mozilla SVGExternalResourcesRequired.externalResourcesRequired documentation> 
svgExternalResourcesRequiredGetExternalResourcesRequired ::
                                                         (MonadIO m,
                                                          IsSVGExternalResourcesRequired self) =>
                                                           self -> m (Maybe SVGAnimatedBoolean)
svgExternalResourcesRequiredGetExternalResourcesRequired self
  = liftIO
      ((ghcjs_dom_svg_external_resources_required_get_external_resources_required
          (unSVGExternalResourcesRequired
             (toSVGExternalResourcesRequired self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGExternalResourcesRequired (
  ) where
#endif
