{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegMovetoRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegMovetoRel, castToSVGPathSegMovetoRel,
        gTypeSVGPathSegMovetoRel)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegMovetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.x Mozilla SVGPathSegMovetoRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegMovetoRel -> Float -> m ()
setX self val = liftIO (js_setX (unSVGPathSegMovetoRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegMovetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.x Mozilla SVGPathSegMovetoRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegMovetoRel -> m Float
getX self = liftIO (js_getX (unSVGPathSegMovetoRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegMovetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.y Mozilla SVGPathSegMovetoRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegMovetoRel -> Float -> m ()
setY self val = liftIO (js_setY (unSVGPathSegMovetoRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegMovetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegMovetoRel.y Mozilla SVGPathSegMovetoRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegMovetoRel -> m Float
getY self = liftIO (js_getY (unSVGPathSegMovetoRel self))