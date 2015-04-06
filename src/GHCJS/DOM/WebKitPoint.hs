{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitPoint
       (js_newWebKitPoint, newWebKitPoint, js_newWebKitPoint',
        newWebKitPoint', js_setX, setX, js_getX, getX, js_setY, setY,
        js_getY, getY, WebKitPoint, castToWebKitPoint, gTypeWebKitPoint)
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

 
foreign import javascript unsafe "new window[\"WebKitPoint\"]()"
        js_newWebKitPoint :: IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint :: (MonadIO m) => m WebKitPoint
newWebKitPoint = liftIO (js_newWebKitPoint >>= fromJSRefUnchecked)
 
foreign import javascript unsafe
        "new window[\"WebKitPoint\"]($1,\n$2)" js_newWebKitPoint' ::
        Float -> Float -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint Mozilla WebKitPoint documentation> 
newWebKitPoint' :: (MonadIO m) => Float -> Float -> m WebKitPoint
newWebKitPoint' x y
  = liftIO (js_newWebKitPoint' x y >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"x\"] = $2;" js_setX ::
        JSRef WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
setX :: (MonadIO m) => WebKitPoint -> Float -> m ()
setX self val = liftIO (js_setX (unWebKitPoint self) val)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.x Mozilla WebKitPoint.x documentation> 
getX :: (MonadIO m) => WebKitPoint -> m Float
getX self = liftIO (js_getX (unWebKitPoint self))
 
foreign import javascript unsafe "$1[\"y\"] = $2;" js_setY ::
        JSRef WebKitPoint -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
setY :: (MonadIO m) => WebKitPoint -> Float -> m ()
setY self val = liftIO (js_setY (unWebKitPoint self) val)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef WebKitPoint -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitPoint.y Mozilla WebKitPoint.y documentation> 
getY :: (MonadIO m) => WebKitPoint -> m Float
getY self = liftIO (js_getY (unWebKitPoint self))
#else
module GHCJS.DOM.WebKitPoint (
  module Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
  ) where
import Graphics.UI.Gtk.WebKit.DOM.WebKitPoint
#endif
