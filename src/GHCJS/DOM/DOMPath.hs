{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMPath
       (js_newDOMPath, newDOMPath, js_newDOMPath', newDOMPath',
        js_newDOMPath'', newDOMPath'', js_addPath, addPath, js_closePath,
        closePath, js_moveTo, moveTo, js_lineTo, lineTo,
        js_quadraticCurveTo, quadraticCurveTo, js_bezierCurveTo,
        bezierCurveTo, js_arcTo, arcTo, js_rect, rect, js_arc, arc,
        DOMPath, castToDOMPath, gTypeDOMPath)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"Path2D\"]()"
        js_newDOMPath :: IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newDOMPath :: (MonadIO m) => m DOMPath
newDOMPath = liftIO (js_newDOMPath >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newDOMPath' :: JSRef DOMPath -> IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newDOMPath' :: (MonadIO m) => Maybe DOMPath -> m DOMPath
newDOMPath' path
  = liftIO
      (js_newDOMPath' (maybe jsNull unDOMPath path) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newDOMPath'' :: JSString -> IO (JSRef DOMPath)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newDOMPath'' :: (MonadIO m, ToJSString text) => text -> m DOMPath
newDOMPath'' text
  = liftIO (js_newDOMPath'' (toJSString text) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"addPath\"]($2, $3)"
        js_addPath ::
        JSRef DOMPath -> JSRef DOMPath -> JSRef SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPath ::
        (MonadIO m) => DOMPath -> Maybe DOMPath -> Maybe SVGMatrix -> m ()
addPath self path transform
  = liftIO
      (js_addPath (unDOMPath self) (maybe jsNull unDOMPath path)
         (maybe jsNull unSVGMatrix transform))
 
foreign import javascript unsafe "$1[\"closePath\"]()" js_closePath
        :: JSRef DOMPath -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.closePath Mozilla Path2D.closePath documentation> 
closePath :: (MonadIO m) => DOMPath -> m ()
closePath self = liftIO (js_closePath (unDOMPath self))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: JSRef DOMPath -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.moveTo Mozilla Path2D.moveTo documentation> 
moveTo :: (MonadIO m) => DOMPath -> Float -> Float -> m ()
moveTo self x y = liftIO (js_moveTo (unDOMPath self) x y)
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)" js_lineTo
        :: JSRef DOMPath -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.lineTo Mozilla Path2D.lineTo documentation> 
lineTo :: (MonadIO m) => DOMPath -> Float -> Float -> m ()
lineTo self x y = liftIO (js_lineTo (unDOMPath self) x y)
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)" js_quadraticCurveTo ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.quadraticCurveTo Mozilla Path2D.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadIO m) => DOMPath -> Float -> Float -> Float -> Float -> m ()
quadraticCurveTo self cpx cpy x y
  = liftIO (js_quadraticCurveTo (unDOMPath self) cpx cpy x y)
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)" js_bezierCurveTo
        ::
        JSRef DOMPath ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.bezierCurveTo Mozilla Path2D.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadIO m) =>
                DOMPath ->
                  Float -> Float -> Float -> Float -> Float -> Float -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftIO
      (js_bezierCurveTo (unDOMPath self) cp1x cp1y cp2x cp2y x y)
 
foreign import javascript unsafe
        "$1[\"arcTo\"]($2, $3, $4, $5, $6)" js_arcTo ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arcTo Mozilla Path2D.arcTo documentation> 
arcTo ::
      (MonadIO m) =>
        DOMPath -> Float -> Float -> Float -> Float -> Float -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftIO (js_arcTo (unDOMPath self) x1 y1 x2 y2 radius)
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        js_rect ::
        JSRef DOMPath -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.rect Mozilla Path2D.rect documentation> 
rect ::
     (MonadIO m) => DOMPath -> Float -> Float -> Float -> Float -> m ()
rect self x y width height
  = liftIO (js_rect (unDOMPath self) x y width height)
 
foreign import javascript unsafe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)" js_arc ::
        JSRef DOMPath ->
          Float -> Float -> Float -> Float -> Float -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arc Mozilla Path2D.arc documentation> 
arc ::
    (MonadIO m) =>
      DOMPath ->
        Float -> Float -> Float -> Float -> Float -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftIO
      (js_arc (unDOMPath self) x y radius startAngle endAngle
         anticlockwise)
#else
module GHCJS.DOM.DOMPath (
  ) where
#endif
