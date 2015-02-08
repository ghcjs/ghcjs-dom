{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGURIReference
       (ghcjs_dom_svguri_reference_get_href, svguriReferenceGetHref,
        SVGURIReference, IsSVGURIReference, castToSVGURIReference,
        gTypeSVGURIReference, toSVGURIReference)
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

 
foreign import javascript unsafe "$1[\"href\"]"
        ghcjs_dom_svguri_reference_get_href ::
        JSRef SVGURIReference -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGURIReference.href Mozilla SVGURIReference.href documentation> 
svguriReferenceGetHref ::
                       (MonadIO m, IsSVGURIReference self) =>
                         self -> m (Maybe SVGAnimatedString)
svguriReferenceGetHref self
  = liftIO
      ((ghcjs_dom_svguri_reference_get_href
          (unSVGURIReference (toSVGURIReference self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGURIReference (
  ) where
#endif
