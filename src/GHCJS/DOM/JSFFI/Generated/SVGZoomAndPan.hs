{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGZoomAndPan
       (pattern SVG_ZOOMANDPAN_UNKNOWN, pattern SVG_ZOOMANDPAN_DISABLE,
        pattern SVG_ZOOMANDPAN_MAGNIFY, js_setZoomAndPan, setZoomAndPan,
        js_getZoomAndPan, getZoomAndPan, SVGZoomAndPan,
        castToSVGZoomAndPan, gTypeSVGZoomAndPan)
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
pattern SVG_ZOOMANDPAN_UNKNOWN = 0
pattern SVG_ZOOMANDPAN_DISABLE = 1
pattern SVG_ZOOMANDPAN_MAGNIFY = 2
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        js_setZoomAndPan :: JSRef SVGZoomAndPan -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
setZoomAndPan :: (MonadIO m) => SVGZoomAndPan -> Word -> m ()
setZoomAndPan self val
  = liftIO (js_setZoomAndPan (unSVGZoomAndPan self) val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        js_getZoomAndPan :: JSRef SVGZoomAndPan -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
getZoomAndPan :: (MonadIO m) => SVGZoomAndPan -> m Word
getZoomAndPan self
  = liftIO (js_getZoomAndPan (unSVGZoomAndPan self))