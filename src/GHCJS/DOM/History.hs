{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.History
       (webkit_dom_history_get_length, historyGetLength) where
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



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_history_get_length :: JSRef History -> IO Word
#else 
webkit_dom_history_get_length :: JSRef History -> IO Word
webkit_dom_history_get_length = undefined
#endif
 
historyGetLength :: (HistoryClass self) => self -> IO Word
historyGetLength self
  = webkit_dom_history_get_length (unHistory (toHistory self))