{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Rect
       (ghcjs_dom_rect_get_top, rectGetTop, ghcjs_dom_rect_get_right,
        rectGetRight, ghcjs_dom_rect_get_bottom, rectGetBottom,
        ghcjs_dom_rect_get_left, rectGetLeft, Rect, IsRect, castToRect,
        gTypeRect, toRect)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_rect_get_top ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)
 
rectGetTop :: (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetTop self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rect_get_top (unRect (toRect self)))
 
foreign import javascript unsafe "$1[\"right\"]"
        ghcjs_dom_rect_get_right ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)
 
rectGetRight ::
             (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetRight self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rect_get_right (unRect (toRect self)))
 
foreign import javascript unsafe "$1[\"bottom\"]"
        ghcjs_dom_rect_get_bottom ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)
 
rectGetBottom ::
              (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetBottom self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rect_get_bottom (unRect (toRect self)))
 
foreign import javascript unsafe "$1[\"left\"]"
        ghcjs_dom_rect_get_left ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)
 
rectGetLeft ::
            (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetLeft self
  = fmap CSSPrimitiveValue . maybeJSNull <$>
      (ghcjs_dom_rect_get_left (unRect (toRect self)))
#else
module GHCJS.DOM.Rect (
  module Graphics.UI.Gtk.WebKit.DOM.Rect
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Rect
#endif
