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
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"] = $2;"
        ghcjs_dom_svg_rect_set_x :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
svgRectSetX :: (MonadIO m, IsSVGRect self) => self -> Float -> m ()
svgRectSetX self val
  = liftIO
      (ghcjs_dom_svg_rect_set_x (unSVGRect (toSVGRect self)) val)
 
foreign import javascript unsafe "$1[\"x\"]"
        ghcjs_dom_svg_rect_get_x :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.x Mozilla SVGRect.x documentation> 
svgRectGetX :: (MonadIO m, IsSVGRect self) => self -> m Float
svgRectGetX self
  = liftIO (ghcjs_dom_svg_rect_get_x (unSVGRect (toSVGRect self)))
 
foreign import javascript unsafe "$1[\"y\"] = $2;"
        ghcjs_dom_svg_rect_set_y :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
svgRectSetY :: (MonadIO m, IsSVGRect self) => self -> Float -> m ()
svgRectSetY self val
  = liftIO
      (ghcjs_dom_svg_rect_set_y (unSVGRect (toSVGRect self)) val)
 
foreign import javascript unsafe "$1[\"y\"]"
        ghcjs_dom_svg_rect_get_y :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.y Mozilla SVGRect.y documentation> 
svgRectGetY :: (MonadIO m, IsSVGRect self) => self -> m Float
svgRectGetY self
  = liftIO (ghcjs_dom_svg_rect_get_y (unSVGRect (toSVGRect self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_svg_rect_set_width :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
svgRectSetWidth ::
                (MonadIO m, IsSVGRect self) => self -> Float -> m ()
svgRectSetWidth self val
  = liftIO
      (ghcjs_dom_svg_rect_set_width (unSVGRect (toSVGRect self)) val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_svg_rect_get_width :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.width Mozilla SVGRect.width documentation> 
svgRectGetWidth :: (MonadIO m, IsSVGRect self) => self -> m Float
svgRectGetWidth self
  = liftIO
      (ghcjs_dom_svg_rect_get_width (unSVGRect (toSVGRect self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_svg_rect_set_height :: JSRef SVGRect -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
svgRectSetHeight ::
                 (MonadIO m, IsSVGRect self) => self -> Float -> m ()
svgRectSetHeight self val
  = liftIO
      (ghcjs_dom_svg_rect_set_height (unSVGRect (toSVGRect self)) val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_svg_rect_get_height :: JSRef SVGRect -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGRect.height Mozilla SVGRect.height documentation> 
svgRectGetHeight :: (MonadIO m, IsSVGRect self) => self -> m Float
svgRectGetHeight self
  = liftIO
      (ghcjs_dom_svg_rect_get_height (unSVGRect (toSVGRect self)))
#else
module GHCJS.DOM.SVGRect (
  ) where
#endif
