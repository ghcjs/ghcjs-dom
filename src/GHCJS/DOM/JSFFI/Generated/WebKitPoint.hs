{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitPoint
       (js_newWebKitPoint, newWebKitPoint, js_newWebKitPoint',
        newWebKitPoint', js_setX, setX, js_getX, getX, js_setY, setY,
        js_getY, getY, WebKitPoint, castToWebKitPoint, gTypeWebKitPoint)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"WebKitPoint\"]()"
        js_newWebKitPoint :: IO WebKitPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint :: (MonadIO m) => m WebKitPoint
newWebKitPoint = liftIO (js_newWebKitPoint)
 
foreign import javascript unsafe
        "new window[\"WebKitPoint\"]($1,\n$2)" js_newWebKitPoint' ::
        Float -> Float -> IO WebKitPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint' :: (MonadIO m) => Float -> Float -> m WebKitPoint
newWebKitPoint' x y = liftIO (js_newWebKitPoint' x y)
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
setX :: (MonadIO m) => WebKitPoint -> Float -> m ()
setX self val = liftIO (js_setX (self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
getX :: (MonadIO m) => WebKitPoint -> m Float
getX self = liftIO (js_getX (self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
setY :: (MonadIO m) => WebKitPoint -> Float -> m ()
setY self val = liftIO (js_setY (self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
getY :: (MonadIO m) => WebKitPoint -> m Float
getY self = liftIO (js_getY (self))