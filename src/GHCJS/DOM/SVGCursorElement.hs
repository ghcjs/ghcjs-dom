{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGCursorElement
       (ghcjs_dom_svg_cursor_element_get_x, svgCursorElementGetX,
        ghcjs_dom_svg_cursor_element_get_y, svgCursorElementGetY,
        SVGCursorElement, IsSVGCursorElement, castToSVGCursorElement,
        gTypeSVGCursorElement, toSVGCursorElement)
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

 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_cursor_element_get_x ::
        JSRef SVGCursorElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.x Mozilla SVGCursorElement.x documentation> 
svgCursorElementGetX ::
                     (MonadIO m, IsSVGCursorElement self) =>
                       self -> m (Maybe SVGAnimatedLength)
svgCursorElementGetX self
  = liftIO
      ((ghcjs_dom_svg_cursor_element_get_x
          (unSVGCursorElement (toSVGCursorElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_cursor_element_get_y ::
        JSRef SVGCursorElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGCursorElement.y Mozilla SVGCursorElement.y documentation> 
svgCursorElementGetY ::
                     (MonadIO m, IsSVGCursorElement self) =>
                       self -> m (Maybe SVGAnimatedLength)
svgCursorElementGetY self
  = liftIO
      ((ghcjs_dom_svg_cursor_element_get_y
          (unSVGCursorElement (toSVGCursorElement self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGCursorElement (
  ) where
#endif
