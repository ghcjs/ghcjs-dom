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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_html_collection_item ::
        JSRef HTMLCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.item Mozilla HTMLCollection.item documentation> 
htmlCollectionItem ::
                   (MonadIO m, IsHTMLCollection self) =>
                     self -> Word -> m (Maybe Node)
htmlCollectionItem self index
  = liftIO
      ((ghcjs_dom_html_collection_item
          (unHTMLCollection (toHTMLCollection self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_collection_named_item ::
        JSRef HTMLCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.namedItem Mozilla HTMLCollection.namedItem documentation> 
htmlCollectionNamedItem ::
                        (MonadIO m, IsHTMLCollection self, ToJSString name) =>
                          self -> name -> m (Maybe Node)
htmlCollectionNamedItem self name
  = liftIO
      ((ghcjs_dom_html_collection_named_item
          (unHTMLCollection (toHTMLCollection self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_collection_get_length ::
        JSRef HTMLCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLCollection.length Mozilla HTMLCollection.length documentation> 
htmlCollectionGetLength ::
                        (MonadIO m, IsHTMLCollection self) => self -> m Word
htmlCollectionGetLength self
  = liftIO
      (ghcjs_dom_html_collection_get_length
         (unHTMLCollection (toHTMLCollection self)))
#else
module GHCJS.DOM.HTMLCollection (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLCollection
#endif
