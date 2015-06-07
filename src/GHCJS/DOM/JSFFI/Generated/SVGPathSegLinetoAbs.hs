{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegLinetoAbs
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegLinetoAbs, castToSVGPathSegLinetoAbs,
        gTypeSVGPathSegLinetoAbs)
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
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
setX :: (MonadIO m) => SVGPathSegLinetoAbs -> Float -> m ()
setX self val = liftIO (js_setX (unSVGPathSegLinetoAbs self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegLinetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.x Mozilla SVGPathSegLinetoAbs.x documentation> 
getX :: (MonadIO m) => SVGPathSegLinetoAbs -> m Float
getX self = liftIO (js_getX (unSVGPathSegLinetoAbs self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegLinetoAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
setY :: (MonadIO m) => SVGPathSegLinetoAbs -> Float -> m ()
setY self val = liftIO (js_setY (unSVGPathSegLinetoAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegLinetoAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoAbs.y Mozilla SVGPathSegLinetoAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegLinetoAbs -> m Float
getY self = liftIO (js_getY (unSVGPathSegLinetoAbs self))