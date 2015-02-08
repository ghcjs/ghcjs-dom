{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOptionsCollection
       (ghcjs_dom_html_options_collection_named_item,
        htmlOptionsCollectionNamedItem,
        ghcjs_dom_html_options_collection_add, htmlOptionsCollectionAdd,
        ghcjs_dom_html_options_collection_remove,
        htmlOptionsCollectionRemove,
        ghcjs_dom_html_options_collection_set_selected_index,
        htmlOptionsCollectionSetSelectedIndex,
        ghcjs_dom_html_options_collection_get_selected_index,
        htmlOptionsCollectionGetSelectedIndex,
        ghcjs_dom_html_options_collection_set_length,
        htmlOptionsCollectionSetLength,
        ghcjs_dom_html_options_collection_get_length,
        htmlOptionsCollectionGetLength, HTMLOptionsCollection,
        IsHTMLOptionsCollection, castToHTMLOptionsCollection,
        gTypeHTMLOptionsCollection, toHTMLOptionsCollection)
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

 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_options_collection_named_item ::
        JSRef HTMLOptionsCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.namedItem Mozilla HTMLOptionsCollection.namedItem documentation> 
htmlOptionsCollectionNamedItem ::
                               (MonadIO m, IsHTMLOptionsCollection self, ToJSString name) =>
                                 self -> name -> m (Maybe Node)
htmlOptionsCollectionNamedItem self name
  = liftIO
      ((ghcjs_dom_html_options_collection_named_item
          (unHTMLOptionsCollection (toHTMLOptionsCollection self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"add\"]($2, $3)"
        ghcjs_dom_html_options_collection_add ::
        JSRef HTMLOptionsCollection ->
          JSRef HTMLOptionElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.add Mozilla HTMLOptionsCollection.add documentation> 
htmlOptionsCollectionAdd ::
                         (MonadIO m, IsHTMLOptionsCollection self,
                          IsHTMLOptionElement option) =>
                           self -> Maybe option -> Word -> m ()
htmlOptionsCollectionAdd self option index
  = liftIO
      (ghcjs_dom_html_options_collection_add
         (unHTMLOptionsCollection (toHTMLOptionsCollection self))
         (maybe jsNull (unHTMLOptionElement . toHTMLOptionElement) option)
         index)
 
foreign import javascript unsafe "$1[\"remove\"]($2)"
        ghcjs_dom_html_options_collection_remove ::
        JSRef HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.remove Mozilla HTMLOptionsCollection.remove documentation> 
htmlOptionsCollectionRemove ::
                            (MonadIO m, IsHTMLOptionsCollection self) => self -> Word -> m ()
htmlOptionsCollectionRemove self index
  = liftIO
      (ghcjs_dom_html_options_collection_remove
         (unHTMLOptionsCollection (toHTMLOptionsCollection self))
         index)
 
foreign import javascript unsafe "$1[\"selectedIndex\"] = $2;"
        ghcjs_dom_html_options_collection_set_selected_index ::
        JSRef HTMLOptionsCollection -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
htmlOptionsCollectionSetSelectedIndex ::
                                      (MonadIO m, IsHTMLOptionsCollection self) =>
                                        self -> Int -> m ()
htmlOptionsCollectionSetSelectedIndex self val
  = liftIO
      (ghcjs_dom_html_options_collection_set_selected_index
         (unHTMLOptionsCollection (toHTMLOptionsCollection self))
         val)
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        ghcjs_dom_html_options_collection_get_selected_index ::
        JSRef HTMLOptionsCollection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.selectedIndex Mozilla HTMLOptionsCollection.selectedIndex documentation> 
htmlOptionsCollectionGetSelectedIndex ::
                                      (MonadIO m, IsHTMLOptionsCollection self) => self -> m Int
htmlOptionsCollectionGetSelectedIndex self
  = liftIO
      (ghcjs_dom_html_options_collection_get_selected_index
         (unHTMLOptionsCollection (toHTMLOptionsCollection self)))
 
foreign import javascript unsafe "$1[\"length\"] = $2;"
        ghcjs_dom_html_options_collection_set_length ::
        JSRef HTMLOptionsCollection -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
htmlOptionsCollectionSetLength ::
                               (MonadIO m, IsHTMLOptionsCollection self) => self -> Word -> m ()
htmlOptionsCollectionSetLength self val
  = liftIO
      (ghcjs_dom_html_options_collection_set_length
         (unHTMLOptionsCollection (toHTMLOptionsCollection self))
         val)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_options_collection_get_length ::
        JSRef HTMLOptionsCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptionsCollection.length Mozilla HTMLOptionsCollection.length documentation> 
htmlOptionsCollectionGetLength ::
                               (MonadIO m, IsHTMLOptionsCollection self) => self -> m Word
htmlOptionsCollectionGetLength self
  = liftIO
      (ghcjs_dom_html_options_collection_get_length
         (unHTMLOptionsCollection (toHTMLOptionsCollection self)))
#else
module GHCJS.DOM.HTMLOptionsCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOptionsCollection
#endif
