{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGUnitTypes
       (cSVG_UNIT_TYPE_UNKNOWN, cSVG_UNIT_TYPE_USERSPACEONUSE,
        cSVG_UNIT_TYPE_OBJECTBOUNDINGBOX, SVGUnitTypes, IsSVGUnitTypes,
        castToSVGUnitTypes, gTypeSVGUnitTypes, toSVGUnitTypes)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cSVG_UNIT_TYPE_UNKNOWN = 0
cSVG_UNIT_TYPE_USERSPACEONUSE = 1
cSVG_UNIT_TYPE_OBJECTBOUNDINGBOX = 2
#else
module GHCJS.DOM.SVGUnitTypes (
  module Graphics.UI.Gtk.WebKit.DOM.SVGUnitTypes
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGUnitTypes
#endif
