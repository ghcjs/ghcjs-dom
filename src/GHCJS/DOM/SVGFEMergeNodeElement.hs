{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEMergeNodeElement
       (ghcjs_dom_svgfe_merge_node_element_get_in1,
        svgfeMergeNodeElementGetIn1, SVGFEMergeNodeElement,
        IsSVGFEMergeNodeElement, castToSVGFEMergeNodeElement,
        gTypeSVGFEMergeNodeElement, toSVGFEMergeNodeElement)
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
        ghcjs_dom_svgfe_merge_node_element_get_in1 ::
        JSRef SVGFEMergeNodeElement -> IO (JSRef SVGAnimatedString)
 
svgfeMergeNodeElementGetIn1 ::
                            (IsSVGFEMergeNodeElement self) =>
                              self -> IO (Maybe SVGAnimatedString)
svgfeMergeNodeElementGetIn1 self
  = fmap SVGAnimatedString . maybeJSNull <$>
      (ghcjs_dom_svgfe_merge_node_element_get_in1
         (unSVGFEMergeNodeElement (toSVGFEMergeNodeElement self)))
#else
module GHCJS.DOM.SVGFEMergeNodeElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGFEMergeNodeElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGFEMergeNodeElement
#endif
