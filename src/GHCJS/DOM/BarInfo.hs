{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.BarInfo
       (webkit_dom_bar_info_get_visible, barInfoGetVisible) where
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
foreign import javascript unsafe "($1[\"visible\"] ? 1 : 0)"
        webkit_dom_bar_info_get_visible :: JSRef BarInfo -> IO JSBool
#else 
webkit_dom_bar_info_get_visible :: JSRef BarInfo -> IO JSBool
webkit_dom_bar_info_get_visible = undefined
#endif
 
barInfoGetVisible :: (BarInfoClass self) => self -> IO Bool
barInfoGetVisible self
  = fromJSBool <$>
      (webkit_dom_bar_info_get_visible (unBarInfo (toBarInfo self)))