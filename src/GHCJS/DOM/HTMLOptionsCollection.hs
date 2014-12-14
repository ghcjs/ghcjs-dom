{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionsCollection
       (ghcjs_dom_html_options_collection_named_item,
        htmlOptionsCollectionNamedItem,
        ghcjs_dom_html_options_collection_set_selected_index,
        htmlOptionsCollectionSetSelectedIndex,
        ghcjs_dom_html_options_collection_get_selected_index,
        htmlOptionsCollectionGetSelectedIndex, HTMLOptionsCollection,
        IsHTMLOptionsCollection, castToHTMLOptionsCollection,
        gTypeHTMLOptionsCollection, toHTMLOptionsCollection)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_options_collection_named_item ::
        JSRef HTMLOptionsCollection -> JSString -> IO (JSRef Node)
 
htmlOptionsCollectionNamedItem ::
                               (IsHTMLOptionsCollection self, ToJSString name) =>
                                 self -> name -> IO (Maybe Node)
htmlOptionsCollectionNamedItem self name
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_html_options_collection_named_item
         (unHTMLOptionsCollection (toHTMLOptionsCollection self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        ghcjs_dom_html_options_collection_set_selected_index ::
        JSRef HTMLOptionsCollection -> Int -> IO ()
 
htmlOptionsCollectionSetSelectedIndex ::
                                      (IsHTMLOptionsCollection self) => self -> Int -> IO ()
htmlOptionsCollectionSetSelectedIndex self val
  = ghcjs_dom_html_options_collection_set_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))
      val
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_html_options_collection_get_selected_index ::
        JSRef HTMLOptionsCollection -> IO Int
 
htmlOptionsCollectionGetSelectedIndex ::
                                      (IsHTMLOptionsCollection self) => self -> IO Int
htmlOptionsCollectionGetSelectedIndex self
  = ghcjs_dom_html_options_collection_get_selected_index
      (unHTMLOptionsCollection (toHTMLOptionsCollection self))
#else
module GHCJS.DOM.HTMLOptionsCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif
