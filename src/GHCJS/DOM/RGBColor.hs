{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RGBColor
       (ghcjs_dom_rgb_color_get_red, rgbColorGetRed,
        ghcjs_dom_rgb_color_get_green, rgbColorGetGreen,
        ghcjs_dom_rgb_color_get_blue, rgbColorGetBlue,
        ghcjs_dom_rgb_color_get_alpha, rgbColorGetAlpha, RGBColor,
        IsRGBColor, castToRGBColor, gTypeRGBColor, toRGBColor)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"red\"]"
        ghcjs_dom_rgb_color_get_red ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)
 
rgbColorGetRed ::
               (IsRGBColor self) => self -> IO (Maybe CSSPrimitiveValue)
rgbColorGetRed self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rgb_color_get_red (unRGBColor (toRGBColor self)))
 
foreign import javascript unsafe "$1[\"green\"]"
        ghcjs_dom_rgb_color_get_green ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)
 
rgbColorGetGreen ::
                 (IsRGBColor self) => self -> IO (Maybe CSSPrimitiveValue)
rgbColorGetGreen self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rgb_color_get_green (unRGBColor (toRGBColor self)))
 
foreign import javascript unsafe "$1[\"blue\"]"
        ghcjs_dom_rgb_color_get_blue ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)
 
rgbColorGetBlue ::
                (IsRGBColor self) => self -> IO (Maybe CSSPrimitiveValue)
rgbColorGetBlue self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rgb_color_get_blue (unRGBColor (toRGBColor self)))
 
foreign import javascript unsafe "$1[\"alpha\"]"
        ghcjs_dom_rgb_color_get_alpha ::
        JSRef RGBColor -> IO (JSRef CSSPrimitiveValue)
 
rgbColorGetAlpha ::
                 (IsRGBColor self) => self -> IO (Maybe CSSPrimitiveValue)
rgbColorGetAlpha self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rgb_color_get_alpha (unRGBColor (toRGBColor self)))
#else
module GHCJS.DOM.RGBColor (
  module Graphics.UI.Gtk.WebKit.DOM.RGBColor
  ) where
import Graphics.UI.Gtk.WebKit.DOM.RGBColor
#endif
