{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMPoint
       (js_newDOMPoint, newDOMPoint, js_newDOMPoint', newDOMPoint',
        js_fromPoint, fromPoint, fromPoint_, js_setX, setX, js_getX, getX,
        js_setY, setY, js_getY, getY, js_setZ, setZ, js_getZ, getZ,
        js_setW, setW, js_getW, getW, DOMPoint(..), gTypeDOMPoint)
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
 
foreign import javascript unsafe "new window[\"DOMPoint\"]($1)"
        js_newDOMPoint :: DOMPointInit -> IO DOMPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint Mozilla DOMPoint documentation> 
newDOMPoint :: (MonadIO m) => DOMPointInit -> m DOMPoint
newDOMPoint point = liftIO (js_newDOMPoint point)
 
foreign import javascript unsafe
        "new window[\"DOMPoint\"]($1, $2,\n$3, $4)" js_newDOMPoint' ::
        Optional Double ->
          Optional Double ->
            Optional Double -> Optional Double -> IO DOMPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint Mozilla DOMPoint documentation> 
newDOMPoint' ::
             (MonadIO m) =>
               Maybe Double ->
                 Maybe Double -> Maybe Double -> Maybe Double -> m DOMPoint
newDOMPoint' x y z w
  = liftIO
      (js_newDOMPoint' (maybeToOptional x) (maybeToOptional y)
         (maybeToOptional z)
         (maybeToOptional w))
 
foreign import javascript unsafe
        "window[\"DOMPoint\"][\"fromPoint\"]($1)" js_fromPoint ::
        Optional DOMPointInit -> IO DOMPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.fromPoint Mozilla DOMPoint.fromPoint documentation> 
fromPoint :: (MonadIO m) => Maybe DOMPointInit -> m DOMPoint
fromPoint other = liftIO (js_fromPoint (maybeToOptional other))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.fromPoint Mozilla DOMPoint.fromPoint documentation> 
fromPoint_ :: (MonadIO m) => Maybe DOMPointInit -> m ()
fromPoint_ other
  = liftIO (void (js_fromPoint (maybeToOptional other)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        DOMPoint -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.x Mozilla DOMPoint.x documentation> 
setX :: (MonadIO m) => DOMPoint -> Double -> m ()
setX self val = liftIO (js_setX self val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        DOMPoint -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.x Mozilla DOMPoint.x documentation> 
getX :: (MonadIO m) => DOMPoint -> m Double
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        DOMPoint -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.y Mozilla DOMPoint.y documentation> 
setY :: (MonadIO m) => DOMPoint -> Double -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        DOMPoint -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.y Mozilla DOMPoint.y documentation> 
getY :: (MonadIO m) => DOMPoint -> m Double
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "$1[\"z\"] = $2;" js_setZ ::
        DOMPoint -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.z Mozilla DOMPoint.z documentation> 
setZ :: (MonadIO m) => DOMPoint -> Double -> m ()
setZ self val = liftIO (js_setZ self val)
 
foreign import javascript unsafe "$1[\"z\"]" js_getZ ::
        DOMPoint -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.z Mozilla DOMPoint.z documentation> 
getZ :: (MonadIO m) => DOMPoint -> m Double
getZ self = liftIO (js_getZ self)
 
foreign import javascript unsafe "$1[\"w\"] = $2;" js_setW ::
        DOMPoint -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.w Mozilla DOMPoint.w documentation> 
setW :: (MonadIO m) => DOMPoint -> Double -> m ()
setW self val = liftIO (js_setW self val)
 
foreign import javascript unsafe "$1[\"w\"]" js_getW ::
        DOMPoint -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMPoint.w Mozilla DOMPoint.w documentation> 
getW :: (MonadIO m) => DOMPoint -> m Double
getW self = liftIO (js_getW self)