{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLCollection
       (ghcjs_dom_html_collection_item, htmlCollectionItem,
        ghcjs_dom_html_collection_named_item, htmlCollectionNamedItem,
        ghcjs_dom_html_collection_get_length, htmlCollectionGetLength,
        HTMLCollection, IsHTMLCollection, castToHTMLCollection,
        gTypeHTMLCollection, toHTMLCollection)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_html_collection_item ::
        JSRef HTMLCollection -> Word -> IO (JSRef Node)
#else 
ghcjs_dom_html_collection_item ::
                                 JSRef HTMLCollection -> Word -> IO (JSRef Node)
ghcjs_dom_html_collection_item = undefined
#endif
 
htmlCollectionItem ::
                   (IsHTMLCollection self) => self -> Word -> IO (Maybe Node)
htmlCollectionItem self index
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_html_collection_item
         (unHTMLCollection (toHTMLCollection self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_collection_named_item ::
        JSRef HTMLCollection -> JSString -> IO (JSRef Node)
#else 
ghcjs_dom_html_collection_named_item ::
                                       JSRef HTMLCollection -> JSString -> IO (JSRef Node)
ghcjs_dom_html_collection_named_item = undefined
#endif
 
htmlCollectionNamedItem ::
                        (IsHTMLCollection self, ToJSString name) =>
                          self -> name -> IO (Maybe Node)
htmlCollectionNamedItem self name
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_html_collection_named_item
         (unHTMLCollection (toHTMLCollection self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_collection_get_length ::
        JSRef HTMLCollection -> IO Word
#else 
ghcjs_dom_html_collection_get_length ::
                                       JSRef HTMLCollection -> IO Word
ghcjs_dom_html_collection_get_length = undefined
#endif
 
htmlCollectionGetLength ::
                        (IsHTMLCollection self) => self -> IO Word
htmlCollectionGetLength self
  = ghcjs_dom_html_collection_get_length
      (unHTMLCollection (toHTMLCollection self))
#else
module GHCJS.DOM.HTMLCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
#endif
