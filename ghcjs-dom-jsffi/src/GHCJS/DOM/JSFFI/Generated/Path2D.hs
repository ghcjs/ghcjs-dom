{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Path2D
       (js_newPath2D, newPath2D, js_newPath2D', newPath2D',
        js_newPath2D'', newPath2D'', js_addPath, addPath, js_closePath,
        closePath, js_moveTo, moveTo, js_lineTo, lineTo,
        js_quadraticCurveTo, quadraticCurveTo, js_bezierCurveTo,
        bezierCurveTo, js_arcTo, arcTo, js_rect, rect, js_arc, arc, Path2D,
        castToPath2D, gTypePath2D)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"Path2D\"]()"
        js_newPath2D :: IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D :: (MonadIO m) => m Path2D
newPath2D = liftIO (js_newPath2D)
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newPath2D' :: Nullable Path2D -> IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D' :: (MonadIO m) => Maybe Path2D -> m Path2D
newPath2D' path = liftIO (js_newPath2D' (maybeToNullable path))
 
foreign import javascript unsafe "new window[\"Path2D\"]($1)"
        js_newPath2D'' :: JSString -> IO Path2D

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D Mozilla Path2D documentation> 
newPath2D'' :: (MonadIO m, ToJSString text) => text -> m Path2D
newPath2D'' text = liftIO (js_newPath2D'' (toJSString text))
 
foreign import javascript unsafe "$1[\"addPath\"]($2, $3)"
        js_addPath ::
        Path2D -> Nullable Path2D -> Nullable SVGMatrix -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.addPath Mozilla Path2D.addPath documentation> 
addPath ::
        (MonadIO m) => Path2D -> Maybe Path2D -> Maybe SVGMatrix -> m ()
addPath self path transform
  = liftIO
      (js_addPath (self) (maybeToNullable path)
         (maybeToNullable transform))
 
foreign import javascript unsafe "$1[\"closePath\"]()" js_closePath
        :: Path2D -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.closePath Mozilla Path2D.closePath documentation> 
closePath :: (MonadIO m) => Path2D -> m ()
closePath self = liftIO (js_closePath (self))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: Path2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.moveTo Mozilla Path2D.moveTo documentation> 
moveTo :: (MonadIO m) => Path2D -> Float -> Float -> m ()
moveTo self x y = liftIO (js_moveTo (self) x y)
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)" js_lineTo
        :: Path2D -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.lineTo Mozilla Path2D.lineTo documentation> 
lineTo :: (MonadIO m) => Path2D -> Float -> Float -> m ()
lineTo self x y = liftIO (js_lineTo (self) x y)
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)" js_quadraticCurveTo ::
        Path2D -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.quadraticCurveTo Mozilla Path2D.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadIO m) => Path2D -> Float -> Float -> Float -> Float -> m ()
quadraticCurveTo self cpx cpy x y
  = liftIO (js_quadraticCurveTo (self) cpx cpy x y)
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)" js_bezierCurveTo
        ::
        Path2D ->
          Float -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.bezierCurveTo Mozilla Path2D.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadIO m) =>
                Path2D ->
                  Float -> Float -> Float -> Float -> Float -> Float -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftIO (js_bezierCurveTo (self) cp1x cp1y cp2x cp2y x y)
 
foreign import javascript unsafe
        "$1[\"arcTo\"]($2, $3, $4, $5, $6)" js_arcTo ::
        Path2D -> Float -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arcTo Mozilla Path2D.arcTo documentation> 
arcTo ::
      (MonadIO m) =>
        Path2D -> Float -> Float -> Float -> Float -> Float -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftIO (js_arcTo (self) x1 y1 x2 y2 radius)
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        js_rect :: Path2D -> Float -> Float -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.rect Mozilla Path2D.rect documentation> 
rect ::
     (MonadIO m) => Path2D -> Float -> Float -> Float -> Float -> m ()
rect self x y width height
  = liftIO (js_rect (self) x y width height)
 
foreign import javascript unsafe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)" js_arc ::
        Path2D ->
          Float -> Float -> Float -> Float -> Float -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Path2D.arc Mozilla Path2D.arc documentation> 
arc ::
    (MonadIO m) =>
      Path2D -> Float -> Float -> Float -> Float -> Float -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftIO
      (js_arc (self) x y radius startAngle endAngle anticlockwise)