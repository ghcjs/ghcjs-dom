{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGElementInstanceList
       (ghcjs_dom_svg_element_instance_list_item,
        svgElementInstanceListItem,
        ghcjs_dom_svg_element_instance_list_get_length,
        svgElementInstanceListGetLength, SVGElementInstanceList,
        IsSVGElementInstanceList, castToSVGElementInstanceList,
        gTypeSVGElementInstanceList, toSVGElementInstanceList)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_svg_element_instance_list_item ::
        JSRef SVGElementInstanceList ->
          Word -> IO (JSRef SVGElementInstance)
 
svgElementInstanceListItem ::
                           (IsSVGElementInstanceList self) =>
                             self -> Word -> IO (Maybe SVGElementInstance)
svgElementInstanceListItem self index
  = fmap SVGElementInstance . maybeJSNull <$>
      (ghcjs_dom_svg_element_instance_list_item
         (unSVGElementInstanceList (toSVGElementInstanceList self))
         index)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_svg_element_instance_list_get_length ::
        JSRef SVGElementInstanceList -> IO Word
 
svgElementInstanceListGetLength ::
                                (IsSVGElementInstanceList self) => self -> IO Word
svgElementInstanceListGetLength self
  = ghcjs_dom_svg_element_instance_list_get_length
      (unSVGElementInstanceList (toSVGElementInstanceList self))
#else
module GHCJS.DOM.SVGElementInstanceList (
  module Graphics.UI.Gtk.WebKit.DOM.SVGElementInstanceList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGElementInstanceList
#endif
