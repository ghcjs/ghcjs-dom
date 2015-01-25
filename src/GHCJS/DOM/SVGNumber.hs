{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGNumber
       (ghcjs_dom_svg_number_set_value, svgNumberSetValue,
        ghcjs_dom_svg_number_get_value, svgNumberGetValue, SVGNumber,
        IsSVGNumber, castToSVGNumber, gTypeSVGNumber, toSVGNumber)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_svg_number_set_value :: JSRef SVGNumber -> Float -> IO ()
 
svgNumberSetValue :: (IsSVGNumber self) => self -> Float -> IO ()
svgNumberSetValue self val
  = ghcjs_dom_svg_number_set_value (unSVGNumber (toSVGNumber self))
      val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_svg_number_get_value :: JSRef SVGNumber -> IO Float
 
svgNumberGetValue :: (IsSVGNumber self) => self -> IO Float
svgNumberGetValue self
  = ghcjs_dom_svg_number_get_value (unSVGNumber (toSVGNumber self))
#else
module GHCJS.DOM.SVGNumber (
  module Graphics.UI.Gtk.WebKit.DOM.SVGNumber
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGNumber
#endif
