{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Counter
       (ghcjs_dom_counter_get_identifier, counterGetIdentifier,
        ghcjs_dom_counter_get_list_style, counterGetListStyle,
        ghcjs_dom_counter_get_separator, counterGetSeparator, Counter,
        IsCounter, castToCounter, gTypeCounter, toCounter)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"identifier\"]"
        ghcjs_dom_counter_get_identifier :: JSRef Counter -> IO JSString
 
counterGetIdentifier ::
                     (IsCounter self, FromJSString result) => self -> IO result
counterGetIdentifier self
  = fromJSString <$>
      (ghcjs_dom_counter_get_identifier (unCounter (toCounter self)))
 
foreign import javascript unsafe "$1[\"listStyle\"]"
        ghcjs_dom_counter_get_list_style :: JSRef Counter -> IO JSString
 
counterGetListStyle ::
                    (IsCounter self, FromJSString result) => self -> IO result
counterGetListStyle self
  = fromJSString <$>
      (ghcjs_dom_counter_get_list_style (unCounter (toCounter self)))
 
foreign import javascript unsafe "$1[\"separator\"]"
        ghcjs_dom_counter_get_separator :: JSRef Counter -> IO JSString
 
counterGetSeparator ::
                    (IsCounter self, FromJSString result) => self -> IO result
counterGetSeparator self
  = fromJSString <$>
      (ghcjs_dom_counter_get_separator (unCounter (toCounter self)))
#else
module GHCJS.DOM.Counter (
  module Graphics.UI.Gtk.WebKit.DOM.Counter
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Counter
#endif
