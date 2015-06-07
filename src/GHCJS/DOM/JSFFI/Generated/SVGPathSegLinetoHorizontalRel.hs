{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegLinetoHorizontalRel
       (js_setX, setX, js_getX, getX, SVGPathSegLinetoHorizontalRel,
        castToSVGPathSegLinetoHorizontalRel,
        gTypeSVGPathSegLinetoHorizontalRel)
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
        JSRef SVGPathSegLinetoHorizontalRel -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel.x Mozilla SVGPathSegLinetoHorizontalRel.x documentation> 
setX ::
     (MonadIO m) => SVGPathSegLinetoHorizontalRel -> Float -> m ()
setX self val
  = liftIO (js_setX (unSVGPathSegLinetoHorizontalRel self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGPathSegLinetoHorizontalRel -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoHorizontalRel.x Mozilla SVGPathSegLinetoHorizontalRel.x documentation> 
getX :: (MonadIO m) => SVGPathSegLinetoHorizontalRel -> m Float
getX self = liftIO (js_getX (unSVGPathSegLinetoHorizontalRel self))