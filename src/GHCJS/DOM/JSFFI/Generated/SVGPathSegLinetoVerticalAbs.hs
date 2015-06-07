{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegLinetoVerticalAbs
       (js_setY, setY, js_getY, getY, SVGPathSegLinetoVerticalAbs,
        castToSVGPathSegLinetoVerticalAbs,
        gTypeSVGPathSegLinetoVerticalAbs)
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
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef SVGPathSegLinetoVerticalAbs -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs.y Mozilla SVGPathSegLinetoVerticalAbs.y documentation> 
setY :: (MonadIO m) => SVGPathSegLinetoVerticalAbs -> Float -> m ()
setY self val
  = liftIO (js_setY (unSVGPathSegLinetoVerticalAbs self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGPathSegLinetoVerticalAbs -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegLinetoVerticalAbs.y Mozilla SVGPathSegLinetoVerticalAbs.y documentation> 
getY :: (MonadIO m) => SVGPathSegLinetoVerticalAbs -> m Float
getY self = liftIO (js_getY (unSVGPathSegLinetoVerticalAbs self))