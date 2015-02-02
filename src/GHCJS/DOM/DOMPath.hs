{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPath
       (ghcjs_dom_dom_path_new, domPathNew, ghcjs_dom_dom_path_add_path,
        domPathAddPath, ghcjs_dom_dom_path_close_path, domPathClosePath,
        ghcjs_dom_dom_path_move_to, domPathMoveTo,
        ghcjs_dom_dom_path_line_to, domPathLineTo,
        ghcjs_dom_dom_path_quadratic_curve_to, domPathQuadraticCurveTo,
        ghcjs_dom_dom_path_bezier_curve_to, domPathBezierCurveTo,
        ghcjs_dom_dom_path_arc_to, domPathArcTo, ghcjs_dom_dom_path_rect,
        domPathRect, ghcjs_dom_dom_path_arc, domPathArc, DOMPath,
        IsDOMPath, castToDOMPath, gTypeDOMPath, toDOMPath)
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

 
foreign import javascript unsafe "new window[\"Path2D\"]()"
        ghcjs_dom_dom_path_new :: IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
domPathNew :: IO DOMPath
domPathNew = ghcjs_dom_dom_path_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        ghcjs_dom_dom_path_new' :: JSRef DOMPath -> IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
domPathNew' :: (IsDOMPath path) => Maybe path -> IO DOMPath
domPathNew' path
  = ghcjs_dom_dom_path_new'
      (maybe jsNull (unDOMPath . toDOMPath) path)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        ghcjs_dom_dom_path_new'' :: JSString -> IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
domPathNew'' :: (ToJSString text) => text -> IO DOMPath
domPathNew'' text
  = ghcjs_dom_dom_path_new'' (toJSString text) >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"addPath\"]($2, $3)"
        ghcjs_dom_dom_path_add_path ::
        JSRef DOMPath -> JSRef DOMPath -> JSRef SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
domPathAddPath ::
               (IsDOMPath self, IsDOMPath path, IsSVGMatrix transform) =>
                 self -> Maybe path -> Maybe transform -> IO ()
domPathAddPath self path transform
  = ghcjs_dom_dom_path_add_path (unDOMPath (toDOMPath self))
      (maybe jsNull (unDOMPath . toDOMPath) path)
      (maybe jsNull (unSVGMatrix . toSVGMatrix) transform)
 
foreign import javascript unsafe "$1[\"closePath\"]()"
        ghcjs_dom_dom_path_close_path :: JSRef DOMPath -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.closePath Mozilla Path2D.closePath documentation> 
domPathClosePath :: (IsDOMPath self) => self -> IO ()
domPathClosePath self
  = ghcjs_dom_dom_path_close_path (unDOMPath (toDOMPath self))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)"
        ghcjs_dom_dom_path_move_to ::
        JSRef DOMPath -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.moveTo Mozilla Path2D.moveTo documentation> 
domPathMoveTo ::
              (IsDOMPath self) => self -> Float -> Float -> IO ()
domPathMoveTo self x y
  = ghcjs_dom_dom_path_move_to (unDOMPath (toDOMPath self)) x y
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)"
        ghcjs_dom_dom_path_line_to ::
        JSRef DOMPath -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.lineTo Mozilla Path2D.lineTo documentation> 
domPathLineTo ::
              (IsDOMPath self) => self -> Float -> Float -> IO ()
domPathLineTo self x y
  = ghcjs_dom_dom_path_line_to (unDOMPath (toDOMPath self)) x y
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)"
        ghcjs_dom_dom_path_quadratic_curve_to ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.quadraticCurveTo Mozilla Path2D.quadraticCurveTo documentation> 
domPathQuadraticCurveTo ::
                        (IsDOMPath self) =>
                          self -> Float -> Float -> Float -> Float -> IO ()
domPathQuadraticCurveTo self cpx cpy x y
  = ghcjs_dom_dom_path_quadratic_curve_to
      (unDOMPath (toDOMPath self))
      cpx
      cpy
      x
      y
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)"
        ghcjs_dom_dom_path_bezier_curve_to ::
        JSRef DOMPath ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.bezierCurveTo Mozilla Path2D.bezierCurveTo documentation> 
domPathBezierCurveTo ::
                     (IsDOMPath self) =>
                       self -> Float -> Float -> Float -> Float -> Float -> Float -> IO ()
domPathBezierCurveTo self cp1x cp1y cp2x cp2y x y
  = ghcjs_dom_dom_path_bezier_curve_to (unDOMPath (toDOMPath self))
      cp1x
      cp1y
      cp2x
      cp2y
      x
      y
 
foreign import javascript unsafe
        "$1[\"arcTo\"]($2, $3, $4, $5, $6)" ghcjs_dom_dom_path_arc_to ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arcTo Mozilla Path2D.arcTo documentation> 
domPathArcTo ::
             (IsDOMPath self) =>
               self -> Float -> Float -> Float -> Float -> Float -> IO ()
domPathArcTo self x1 y1 x2 y2 radius
  = ghcjs_dom_dom_path_arc_to (unDOMPath (toDOMPath self)) x1 y1 x2
      y2
      radius
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        ghcjs_dom_dom_path_rect ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.rect Mozilla Path2D.rect documentation> 
domPathRect ::
            (IsDOMPath self) =>
              self -> Float -> Float -> Float -> Float -> IO ()
domPathRect self x y width height
  = ghcjs_dom_dom_path_rect (unDOMPath (toDOMPath self)) x y width
      height
 
foreign import javascript unsafe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)" ghcjs_dom_dom_path_arc ::
        JSRef DOMPath ->
          Float -> Float -> Float -> Float -> Float -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arc Mozilla Path2D.arc documentation> 
domPathArc ::
           (IsDOMPath self) =>
             self -> Float -> Float -> Float -> Float -> Float -> Bool -> IO ()
domPathArc self x y radius startAngle endAngle anticlockwise
  = ghcjs_dom_dom_path_arc (unDOMPath (toDOMPath self)) x y radius
      startAngle
      endAngle
      anticlockwise
#else
module GHCJS.DOM.DOMPath (
  ) where
#endif
