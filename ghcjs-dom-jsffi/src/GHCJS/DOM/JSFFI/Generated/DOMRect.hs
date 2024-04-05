{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMRect
       (js_newDOMRect, newDOMRect, js_fromRect, fromRect, fromRect_,
        js_setX, setX, js_getX, getX, js_setY, setY, js_getY, getY,
        js_setWidth, setWidth, js_getWidth, getWidth, js_setHeight,
        setHeight, js_getHeight, getHeight, DOMRect(..), gTypeDOMRect)
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
 
foreign import javascript unsafe
        "new window[\"DOMRect\"]($1, $2,\n$3, $4)" js_newDOMRect ::
        Optional Double ->
          Optional Double -> Optional Double -> Optional Double -> IO DOMRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect Mozilla DOMRect documentation> 
newDOMRect ::
           (MonadIO m) =>
             Maybe Double ->
               Maybe Double -> Maybe Double -> Maybe Double -> m DOMRect
newDOMRect x y width height
  = liftIO
      (js_newDOMRect (maybeToOptional x) (maybeToOptional y)
         (maybeToOptional width)
         (maybeToOptional height))
 
foreign import javascript unsafe
        "window[\"DOMRect\"][\"fromRect\"]($1)" js_fromRect ::
        Optional DOMRectInit -> IO DOMRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.fromRect Mozilla DOMRect.fromRect documentation> 
fromRect :: (MonadIO m) => Maybe DOMRectInit -> m DOMRect
fromRect other = liftIO (js_fromRect (maybeToOptional other))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.fromRect Mozilla DOMRect.fromRect documentation> 
fromRect_ :: (MonadIO m) => Maybe DOMRectInit -> m ()
fromRect_ other
  = liftIO (void (js_fromRect (maybeToOptional other)))
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        DOMRect -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.x Mozilla DOMRect.x documentation> 
setX :: (MonadIO m) => DOMRect -> Double -> m ()
setX self val = liftIO (js_setX self val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        DOMRect -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.x Mozilla DOMRect.x documentation> 
getX :: (MonadIO m) => DOMRect -> m Double
getX self = liftIO (js_getX self)
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        DOMRect -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.y Mozilla DOMRect.y documentation> 
setY :: (MonadIO m) => DOMRect -> Double -> m ()
setY self val = liftIO (js_setY self val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        DOMRect -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.y Mozilla DOMRect.y documentation> 
getY :: (MonadIO m) => DOMRect -> m Double
getY self = liftIO (js_getY self)
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: DOMRect -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.width Mozilla DOMRect.width documentation> 
setWidth :: (MonadIO m) => DOMRect -> Double -> m ()
setWidth self val = liftIO (js_setWidth self val)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        DOMRect -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.width Mozilla DOMRect.width documentation> 
getWidth :: (MonadIO m) => DOMRect -> m Double
getWidth self = liftIO (js_getWidth self)
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: DOMRect -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.height Mozilla DOMRect.height documentation> 
setHeight :: (MonadIO m) => DOMRect -> Double -> m ()
setHeight self val = liftIO (js_setHeight self val)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        DOMRect -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMRect.height Mozilla DOMRect.height documentation> 
getHeight :: (MonadIO m) => DOMRect -> m Double
getHeight self = liftIO (js_getHeight self)