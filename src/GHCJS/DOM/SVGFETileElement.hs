{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFETileElement
       (ghcjs_dom_svgfe_tile_element_get_in1, svgfeTileElementGetIn1,
        SVGFETileElement, IsSVGFETileElement, castToSVGFETileElement,
        gTypeSVGFETileElement, toSVGFETileElement)
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

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_tile_element_get_in1 ::
        JSRef SVGFETileElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFETileElement.in1 Mozilla SVGFETileElement.in1 documentation> 
svgfeTileElementGetIn1 ::
                       (MonadIO m, IsSVGFETileElement self) =>
                         self -> m (Maybe SVGAnimatedString)
svgfeTileElementGetIn1 self
  = liftIO
      ((ghcjs_dom_svgfe_tile_element_get_in1
          (unSVGFETileElement (toSVGFETileElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGFETileElement (
  ) where
#endif
