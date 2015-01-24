{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.History
       (ghcjs_dom_history_push_state, historyPushState,
        ghcjs_dom_history_replace_state, historyReplaceState,
        ghcjs_dom_history_get_length, historyGetLength,
        ghcjs_dom_history_get_state, historyGetState, History, IsHistory,
        castToHistory, gTypeHistory, toHistory)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"pushState\"]($2, $3, $4)"
        ghcjs_dom_history_push_state ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()
 
historyPushState ::
                 (IsHistory self, ToJSString title, ToJSString url) =>
                   self -> JSRef a -> title -> url -> IO ()
historyPushState self data' title url
  = ghcjs_dom_history_push_state (unHistory (toHistory self)) data'
      (toJSString title)
      (toJSString url)
 
foreign import javascript unsafe "$1[\"replaceState\"]($2, $3, $4)"
        ghcjs_dom_history_replace_state ::
        JSRef History -> JSRef a -> JSString -> JSString -> IO ()
 
historyReplaceState ::
                    (IsHistory self, ToJSString title, ToJSString url) =>
                      self -> JSRef a -> title -> url -> IO ()
historyReplaceState self data' title url
  = ghcjs_dom_history_replace_state (unHistory (toHistory self))
      data'
      (toJSString title)
      (toJSString url)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_history_get_length :: JSRef History -> IO Word
 
historyGetLength :: (IsHistory self) => self -> IO Word
historyGetLength self
  = ghcjs_dom_history_get_length (unHistory (toHistory self))
 
foreign import javascript unsafe "$1[\"state\"]"
        ghcjs_dom_history_get_state ::
        JSRef History -> IO (JSRef SerializedScriptValue)
 
historyGetState ::
                (IsHistory self) => self -> IO (Maybe SerializedScriptValue)
historyGetState self
  = fmap SerializedScriptValue . maybeJSNull <$>
      (ghcjs_dom_history_get_state (unHistory (toHistory self)))
#else
module GHCJS.DOM.History (
  module Graphics.UI.Gtk.WebKit.DOM.History
  ) where
import Graphics.UI.Gtk.WebKit.DOM.History
#endif
