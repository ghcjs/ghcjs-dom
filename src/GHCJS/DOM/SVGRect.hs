{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRect
       (ghcjs_dom_svg_rect_set_x, svgRectSetX, ghcjs_dom_svg_rect_get_x,
        svgRectGetX, ghcjs_dom_svg_rect_set_y, svgRectSetY,
        ghcjs_dom_svg_rect_get_y, svgRectGetY,
        ghcjs_dom_svg_rect_set_width, svgRectSetWidth,
        ghcjs_dom_svg_rect_get_width, svgRectGetWidth,
        ghcjs_dom_svg_rect_set_height, svgRectSetHeight,
        ghcjs_dom_svg_rect_get_height, svgRectGetHeight, SVGRect,
        IsSVGRect, castToSVGRect, gTypeSVGRect, toSVGRect)
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

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_rect_set_x :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
svgRectSetX :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetX self val
  = ghcjs_dom_svg_rect_set_x (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_rect_get_x :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
svgRectGetX :: (IsSVGRect self) => self -> IO Float
svgRectGetX self
  = ghcjs_dom_svg_rect_get_x (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_rect_set_y :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
svgRectSetY :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetY self val
  = ghcjs_dom_svg_rect_set_y (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_rect_get_y :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
svgRectGetY :: (IsSVGRect self) => self -> IO Float
svgRectGetY self
  = ghcjs_dom_svg_rect_get_y (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_svg_rect_set_width :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
svgRectSetWidth :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetWidth self val
  = ghcjs_dom_svg_rect_set_width (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_rect_get_width :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
svgRectGetWidth :: (IsSVGRect self) => self -> IO Float
svgRectGetWidth self
  = ghcjs_dom_svg_rect_get_width (unSVGRect (toSVGRect self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_svg_rect_set_height :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
svgRectSetHeight :: (IsSVGRect self) => self -> Float -> IO ()
svgRectSetHeight self val
  = ghcjs_dom_svg_rect_set_height (unSVGRect (toSVGRect self)) val
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_rect_get_height :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
svgRectGetHeight :: (IsSVGRect self) => self -> IO Float
svgRectGetHeight self
  = ghcjs_dom_svg_rect_get_height (unSVGRect (toSVGRect self))
#else
module GHCJS.DOM.SVGRect (
  ) where
#endif
