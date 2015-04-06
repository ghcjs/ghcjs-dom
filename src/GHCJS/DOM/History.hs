{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.History
       (js_back, back, js_forward, forward, js_go, go, js_pushState,
        pushState, js_replaceState, replaceState, js_getLength, getLength,
        js_getState, getState, History, castToHistory, gTypeHistory)
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

 
foreign import javascript unsafe "$1[\"back\"]()" js_back ::
        JSRef History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
back :: (MonadIO m) => History -> m ()
back self = liftIO (js_back (unHistory self))
 
foreign import javascript unsafe "$1[\"forward\"]()" js_forward ::
        JSRef History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
forward :: (MonadIO m) => History -> m ()
forward self = liftIO (js_forward (unHistory self))
 
foreign import javascript unsafe "$1[\"go\"]($2)" js_go ::
        JSRef History -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
go :: (MonadIO m) => History -> Int -> m ()
go self distance = liftIO (js_go (unHistory self) distance)
 
foreign import javascript unsafe "$1[\"pushState\"]($2, $3, $4)"
        js_pushState ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
pushState ::
          (MonadIO m, ToJSString title, ToJSString url) =>
            History -> JSRef a -> title -> url -> m ()
pushState self data' title url
  = liftIO
      (js_pushState (unHistory self) data' (toJSString title)
         (toJSString url))
 
foreign import javascript unsafe "$1[\"replaceState\"]($2, $3, $4)"
        js_replaceState ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
replaceState ::
             (MonadIO m, ToJSString title, ToJSString url) =>
               History -> JSRef a -> title -> url -> m ()
replaceState self data' title url
  = liftIO
      (js_replaceState (unHistory self) data' (toJSString title)
         (toJSString url))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef History -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
getLength :: (MonadIO m) => History -> m Word
getLength self = liftIO (js_getLength (unHistory self))
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        JSRef History -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
getState ::
         (MonadIO m) => History -> m (Maybe SerializedScriptValue)
getState self
  = liftIO ((js_getState (unHistory self)) >>= fromJSRef)
#else
module GHCJS.DOM.History (
  module Graphics.UI.Gtk.WebKit.DOM.History
  ) where
import Graphics.UI.Gtk.WebKit.DOM.History
#endif
