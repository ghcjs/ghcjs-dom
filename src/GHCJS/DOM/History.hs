{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.History
       (ghcjs_dom_history_get_length, historyGetLength, History,
        IsHistory, castToHistory, gTypeHistory, toHistory)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_history_get_length :: JSRef History -> IO Word
#else 
ghcjs_dom_history_get_length :: JSRef History -> IO Word
ghcjs_dom_history_get_length = undefined
#endif
 
historyGetLength :: (IsHistory self) => self -> IO Word
historyGetLength self
  = ghcjs_dom_history_get_length (unHistory (toHistory self))
#else
module GHCJS.DOM.History (
  module Graphics.UI.Gtk.WebKit.DOM.History
  ) where
import Graphics.UI.Gtk.WebKit.DOM.History
#endif
