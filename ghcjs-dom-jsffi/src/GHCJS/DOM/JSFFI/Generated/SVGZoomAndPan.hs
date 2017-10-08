{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGZoomAndPan
       (pattern SVG_ZOOMANDPAN_UNKNOWN, pattern SVG_ZOOMANDPAN_DISABLE,
        pattern SVG_ZOOMANDPAN_MAGNIFY, js_setZoomAndPan, setZoomAndPan,
        js_getZoomAndPan, getZoomAndPan, SVGZoomAndPan(..),
        gTypeSVGZoomAndPan, IsSVGZoomAndPan, toSVGZoomAndPan)
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
pattern SVG_ZOOMANDPAN_UNKNOWN = 0
pattern SVG_ZOOMANDPAN_DISABLE = 1
pattern SVG_ZOOMANDPAN_MAGNIFY = 2
 
foreign import javascript unsafe "$1[\"zoomAndPan\"] = $2;"
        js_setZoomAndPan :: SVGZoomAndPan -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
setZoomAndPan ::
              (MonadIO m, IsSVGZoomAndPan self) => self -> Word -> m ()
setZoomAndPan self val
  = liftIO (js_setZoomAndPan (toSVGZoomAndPan self) val)
 
foreign import javascript unsafe "$1[\"zoomAndPan\"]"
        js_getZoomAndPan :: SVGZoomAndPan -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGZoomAndPan.zoomAndPan Mozilla SVGZoomAndPan.zoomAndPan documentation> 
getZoomAndPan ::
              (MonadIO m, IsSVGZoomAndPan self) => self -> m Word
getZoomAndPan self
  = liftIO (js_getZoomAndPan (toSVGZoomAndPan self))