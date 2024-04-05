{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CanvasPath
       (js_closePath, closePath, js_moveTo, moveTo, js_lineTo, lineTo,
        js_quadraticCurveTo, quadraticCurveTo, js_bezierCurveTo,
        bezierCurveTo, js_arcTo, arcTo, js_rect, rect, js_arc, arc,
        js_ellipse, ellipse, CanvasPath(..), gTypeCanvasPath, IsCanvasPath,
        toCanvasPath)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"closePath\"]()" js_closePath
        :: CanvasPath -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.closePath Mozilla CanvasPath.closePath documentation> 
closePath :: (MonadIO m, IsCanvasPath self) => self -> m ()
closePath self = liftIO (js_closePath (toCanvasPath self))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: CanvasPath -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.moveTo Mozilla CanvasPath.moveTo documentation> 
moveTo ::
       (MonadIO m, IsCanvasPath self) => self -> Double -> Double -> m ()
moveTo self x y = liftIO (js_moveTo (toCanvasPath self) x y)
 
foreign import javascript unsafe "$1[\"lineTo\"]($2, $3)" js_lineTo
        :: CanvasPath -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.lineTo Mozilla CanvasPath.lineTo documentation> 
lineTo ::
       (MonadIO m, IsCanvasPath self) => self -> Double -> Double -> m ()
lineTo self x y = liftIO (js_lineTo (toCanvasPath self) x y)
 
foreign import javascript unsafe
        "$1[\"quadraticCurveTo\"]($2, $3,\n$4, $5)" js_quadraticCurveTo ::
        CanvasPath -> Double -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.quadraticCurveTo Mozilla CanvasPath.quadraticCurveTo documentation> 
quadraticCurveTo ::
                 (MonadIO m, IsCanvasPath self) =>
                   self -> Double -> Double -> Double -> Double -> m ()
quadraticCurveTo self cpx cpy x y
  = liftIO (js_quadraticCurveTo (toCanvasPath self) cpx cpy x y)
 
foreign import javascript unsafe
        "$1[\"bezierCurveTo\"]($2, $3, $4,\n$5, $6, $7)" js_bezierCurveTo
        ::
        CanvasPath ->
          Double -> Double -> Double -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.bezierCurveTo Mozilla CanvasPath.bezierCurveTo documentation> 
bezierCurveTo ::
              (MonadIO m, IsCanvasPath self) =>
                self ->
                  Double -> Double -> Double -> Double -> Double -> Double -> m ()
bezierCurveTo self cp1x cp1y cp2x cp2y x y
  = liftIO
      (js_bezierCurveTo (toCanvasPath self) cp1x cp1y cp2x cp2y x y)
 
foreign import javascript safe "$1[\"arcTo\"]($2, $3, $4, $5, $6)"
        js_arcTo ::
        CanvasPath ->
          Double -> Double -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.arcTo Mozilla CanvasPath.arcTo documentation> 
arcTo ::
      (MonadIO m, IsCanvasPath self) =>
        self -> Double -> Double -> Double -> Double -> Double -> m ()
arcTo self x1 y1 x2 y2 radius
  = liftIO (js_arcTo (toCanvasPath self) x1 y1 x2 y2 radius)
 
foreign import javascript unsafe "$1[\"rect\"]($2, $3, $4, $5)"
        js_rect ::
        CanvasPath -> Double -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.rect Mozilla CanvasPath.rect documentation> 
rect ::
     (MonadIO m, IsCanvasPath self) =>
       self -> Double -> Double -> Double -> Double -> m ()
rect self x y w h = liftIO (js_rect (toCanvasPath self) x y w h)
 
foreign import javascript safe
        "$1[\"arc\"]($2, $3, $4, $5, $6,\n$7)" js_arc ::
        CanvasPath ->
          Double -> Double -> Double -> Double -> Double -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.arc Mozilla CanvasPath.arc documentation> 
arc ::
    (MonadIO m, IsCanvasPath self) =>
      self ->
        Double -> Double -> Double -> Double -> Double -> Bool -> m ()
arc self x y radius startAngle endAngle anticlockwise
  = liftIO
      (js_arc (toCanvasPath self) x y radius startAngle endAngle
         anticlockwise)
 
foreign import javascript safe
        "$1[\"ellipse\"]($2, $3, $4, $5,\n$6, $7, $8, $9)" js_ellipse ::
        CanvasPath ->
          Double ->
            Double ->
              Double -> Double -> Double -> Double -> Double -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasPath.ellipse Mozilla CanvasPath.ellipse documentation> 
ellipse ::
        (MonadIO m, IsCanvasPath self) =>
          self ->
            Double ->
              Double ->
                Double -> Double -> Double -> Double -> Double -> Bool -> m ()
ellipse self x y radiusX radiusY rotation startAngle endAngle
  anticlockwise
  = liftIO
      (js_ellipse (toCanvasPath self) x y radiusX radiusY rotation
         startAngle
         endAngle
         anticlockwise)