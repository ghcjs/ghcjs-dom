{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSegLinetoRel
       (js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        SVGPathSegLinetoRel, castToSVGPathSegLinetoRel,
        gTypeSVGPathSegLinetoRel)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
setX :: (MonadIO m) => SVGPathSegLinetoRel -> Float -> m ()
setX self val = liftIO (js_setX (unSVGPathSegLinetoRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.x Mozilla SVGPathSegLinetoRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegLinetoRel -> m Float
getX self = liftIO (js_getX (unSVGPathSegLinetoRel self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegLinetoRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
setY :: (MonadIO m) => SVGPathSegLinetoRel -> Float -> m ()
setY self val = liftIO (js_setY (unSVGPathSegLinetoRel self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegLinetoRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoRel.y Mozilla SVGPathSegLinetoRel.y documentation> 
getY :: (MonadIO m) => SVGPathSegLinetoRel -> m Float
getY self = liftIO (js_getY (unSVGPathSegLinetoRel self))
#else
module GHCJS.DOM.SVGPathSegLinetoRel (
  ) where
#endif
