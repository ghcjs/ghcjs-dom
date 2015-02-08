{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAElement
       (ghcjs_dom_svga_element_get_target, svgaElementGetTarget,
        SVGAElement, IsSVGAElement, castToSVGAElement, gTypeSVGAElement,
        toSVGAElement)
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

 
foreign import javascript unsafe "$1[\"target\"]"
        ghcjs_dom_svga_element_get_target ::
        JSRef SVGAElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAElement.target Mozilla SVGAElement.target documentation> 
svgaElementGetTarget ::
                     (MonadIO m, IsSVGAElement self) =>
                       self -> m (Maybe SVGAnimatedString)
svgaElementGetTarget self
  = liftIO
      ((ghcjs_dom_svga_element_get_target
          (unSVGAElement (toSVGAElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGAElement (
  ) where
#endif
