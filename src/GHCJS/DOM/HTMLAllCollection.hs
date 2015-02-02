{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAllCollection
       (ghcjs_dom_html_all_collection_item, htmlAllCollectionItem,
        ghcjs_dom_html_all_collection_named_item,
        htmlAllCollectionNamedItem, ghcjs_dom_html_all_collection_tags,
        htmlAllCollectionTags, ghcjs_dom_html_all_collection_get_length,
        htmlAllCollectionGetLength, HTMLAllCollection, IsHTMLAllCollection,
        castToHTMLAllCollection, gTypeHTMLAllCollection,
        toHTMLAllCollection)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_html_all_collection_item ::
        JSRef HTMLAllCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.item Mozilla HTMLAllCollection.item documentation> 
htmlAllCollectionItem ::
                      (IsHTMLAllCollection self) => self -> Word -> IO (Maybe Node)
htmlAllCollectionItem self index
  = (ghcjs_dom_html_all_collection_item
       (unHTMLAllCollection (toHTMLAllCollection self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_html_all_collection_named_item ::
        JSRef HTMLAllCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.namedItem Mozilla HTMLAllCollection.namedItem documentation> 
htmlAllCollectionNamedItem ::
                           (IsHTMLAllCollection self, ToJSString name) =>
                             self -> name -> IO (Maybe Node)
htmlAllCollectionNamedItem self name
  = (ghcjs_dom_html_all_collection_named_item
       (unHTMLAllCollection (toHTMLAllCollection self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"tags\"]($2)"
        ghcjs_dom_html_all_collection_tags ::
        JSRef HTMLAllCollection -> JSString -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.tags Mozilla HTMLAllCollection.tags documentation> 
htmlAllCollectionTags ::
                      (IsHTMLAllCollection self, ToJSString name) =>
                        self -> name -> IO (Maybe NodeList)
htmlAllCollectionTags self name
  = (ghcjs_dom_html_all_collection_tags
       (unHTMLAllCollection (toHTMLAllCollection self))
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_html_all_collection_get_length ::
        JSRef HTMLAllCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAllCollection.length Mozilla HTMLAllCollection.length documentation> 
htmlAllCollectionGetLength ::
                           (IsHTMLAllCollection self) => self -> IO Word
htmlAllCollectionGetLength self
  = ghcjs_dom_html_all_collection_get_length
      (unHTMLAllCollection (toHTMLAllCollection self))
#else
module GHCJS.DOM.HTMLAllCollection (
  ) where
#endif
