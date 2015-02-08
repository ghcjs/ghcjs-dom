{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.History
       (ghcjs_dom_history_back, historyBack, ghcjs_dom_history_forward,
        historyForward, ghcjs_dom_history_go, historyGo,
        ghcjs_dom_history_push_state, historyPushState,
        ghcjs_dom_history_replace_state, historyReplaceState,
        ghcjs_dom_history_get_length, historyGetLength,
        ghcjs_dom_history_get_state, historyGetState, History, IsHistory,
        castToHistory, gTypeHistory, toHistory)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"back\"]()"
        ghcjs_dom_history_back :: JSRef History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
historyBack :: (MonadIO m, IsHistory self) => self -> m ()
historyBack self
  = liftIO (ghcjs_dom_history_back (unHistory (toHistory self)))
 
foreign import javascript unsafe "$1[\"forward\"]()"
        ghcjs_dom_history_forward :: JSRef History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
historyForward :: (MonadIO m, IsHistory self) => self -> m ()
historyForward self
  = liftIO (ghcjs_dom_history_forward (unHistory (toHistory self)))
 
foreign import javascript unsafe "$1[\"go\"]($2)"
        ghcjs_dom_history_go :: JSRef History -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
historyGo :: (MonadIO m, IsHistory self) => self -> Int -> m ()
historyGo self distance
  = liftIO
      (ghcjs_dom_history_go (unHistory (toHistory self)) distance)
 
foreign import javascript unsafe "$1[\"pushState\"]($2, $3, $4)"
        ghcjs_dom_history_push_state ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
historyPushState ::
                 (MonadIO m, IsHistory self, ToJSString title, ToJSString url) =>
                   self -> JSRef a -> title -> url -> m ()
historyPushState self data' title url
  = liftIO
      (ghcjs_dom_history_push_state (unHistory (toHistory self)) data'
         (toJSString title)
         (toJSString url))
 
foreign import javascript unsafe "$1[\"replaceState\"]($2, $3, $4)"
        ghcjs_dom_history_replace_state ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
historyReplaceState ::
                    (MonadIO m, IsHistory self, ToJSString title, ToJSString url) =>
                      self -> JSRef a -> title -> url -> m ()
historyReplaceState self data' title url
  = liftIO
      (ghcjs_dom_history_replace_state (unHistory (toHistory self)) data'
         (toJSString title)
         (toJSString url))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_history_get_length :: JSRef History -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
historyGetLength :: (MonadIO m, IsHistory self) => self -> m Word
historyGetLength self
  = liftIO
      (ghcjs_dom_history_get_length (unHistory (toHistory self)))
 
foreign import javascript unsafe "$1[\"state\"]"
        ghcjs_dom_history_get_state ::
        JSRef History -> IO (JSRef SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
historyGetState ::
                (MonadIO m, IsHistory self) =>
                  self -> m (Maybe SerializedScriptValue)
historyGetState self
  = liftIO
      ((ghcjs_dom_history_get_state (unHistory (toHistory self))) >>=
         fromJSRef)
#else
module GHCJS.DOM.History (
  module Graphics.UI.Gtk.WebKit.DOM.History
  ) where
import Graphics.UI.Gtk.WebKit.DOM.History
#endif
