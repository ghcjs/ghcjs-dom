{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEOffsetElement
       (ghcjs_dom_svgfe_offset_element_get_in1, svgfeOffsetElementGetIn1,
        ghcjs_dom_svgfe_offset_element_get_dx, svgfeOffsetElementGetDx,
        ghcjs_dom_svgfe_offset_element_get_dy, svgfeOffsetElementGetDy,
        SVGFEOffsetElement, IsSVGFEOffsetElement, castToSVGFEOffsetElement,
        gTypeSVGFEOffsetElement, toSVGFEOffsetElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"in1\"]"
        ghcjs_dom_svgfe_offset_element_get_in1 ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedString)
 
svgfeOffsetElementGetIn1 ::
                         (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedString)
svgfeOffsetElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_offset_element_get_in1
         (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
 
foreign import javascript unsafe "$1[\"dx\"]"
        ghcjs_dom_svgfe_offset_element_get_dx ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeOffsetElementGetDx ::
                        (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgfeOffsetElementGetDx self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_offset_element_get_dx
         (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
 
foreign import javascript unsafe "$1[\"dy\"]"
        ghcjs_dom_svgfe_offset_element_get_dy ::
        JSRef SVGFEOffsetElement -> IO (JSRef SVGAnimatedNumber)
 
svgfeOffsetElementGetDy ::
                        (IsSVGFEOffsetElement self) => self -> IO (Maybe SVGAnimatedNumber)
svgfeOffsetElementGetDy self
  = fmap SVGAnimatedNumber . maybeJSNull <$>
      (ghcjs_dom_svgfe_offset_element_get_dy
         (unSVGFEOffsetElement (toSVGFEOffsetElement self)))
#else
module GHCJS.DOM.SVGFEOffsetElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEOffsetElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEOffsetElement
#endif
