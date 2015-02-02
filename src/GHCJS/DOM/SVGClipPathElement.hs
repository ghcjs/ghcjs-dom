{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGClipPathElement
       (ghcjs_dom_svg_clip_path_element_get_clip_path_units,
        svgClipPathElementGetClipPathUnits, SVGClipPathElement,
        IsSVGClipPathElement, castToSVGClipPathElement,
        gTypeSVGClipPathElement, toSVGClipPathElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"clipPathUnits\"]"
        ghcjs_dom_svg_clip_path_element_get_clip_path_units ::
        JSRef SVGClipPathElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGClipPathElement.clipPathUnits Mozilla SVGClipPathElement.clipPathUnits documentation> 
svgClipPathElementGetClipPathUnits ::
                                   (IsSVGClipPathElement self) =>
                                     self -> IO (Maybe SVGAnimatedEnumeration)
svgClipPathElementGetClipPathUnits self
  = (ghcjs_dom_svg_clip_path_element_get_clip_path_units
       (unSVGClipPathElement (toSVGClipPathElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGClipPathElement (
  ) where
#endif
