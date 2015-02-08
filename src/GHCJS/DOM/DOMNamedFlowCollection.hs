{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMNamedFlowCollection
       (ghcjs_dom_dom_named_flow_collection_item,
        domNamedFlowCollectionItem,
        ghcjs_dom_dom_named_flow_collection_named_item,
        domNamedFlowCollectionNamedItem,
        ghcjs_dom_dom_named_flow_collection_get_length,
        domNamedFlowCollectionGetLength, DOMNamedFlowCollection,
        IsDOMNamedFlowCollection, castToDOMNamedFlowCollection,
        gTypeDOMNamedFlowCollection, toDOMNamedFlowCollection)
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
        ghcjs_dom_dom_named_flow_collection_item ::
        JSRef DOMNamedFlowCollection -> Word -> IO (JSRef WebKitNamedFlow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.item Mozilla WebKitNamedFlowCollection.item documentation> 
domNamedFlowCollectionItem ::
                           (MonadIO m, IsDOMNamedFlowCollection self) =>
                             self -> Word -> m (Maybe WebKitNamedFlow)
domNamedFlowCollectionItem self index
  = liftIO
      ((ghcjs_dom_dom_named_flow_collection_item
          (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_named_flow_collection_named_item ::
        JSRef DOMNamedFlowCollection ->
          JSString -> IO (JSRef WebKitNamedFlow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.namedItem Mozilla WebKitNamedFlowCollection.namedItem documentation> 
domNamedFlowCollectionNamedItem ::
                                (MonadIO m, IsDOMNamedFlowCollection self, ToJSString name) =>
                                  self -> name -> m (Maybe WebKitNamedFlow)
domNamedFlowCollectionNamedItem self name
  = liftIO
      ((ghcjs_dom_dom_named_flow_collection_named_item
          (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
          (toJSString name))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_named_flow_collection_get_length ::
        JSRef DOMNamedFlowCollection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamedFlowCollection.length Mozilla WebKitNamedFlowCollection.length documentation> 
domNamedFlowCollectionGetLength ::
                                (MonadIO m, IsDOMNamedFlowCollection self) => self -> m Word
domNamedFlowCollectionGetLength self
  = liftIO
      (ghcjs_dom_dom_named_flow_collection_get_length
         (unDOMNamedFlowCollection (toDOMNamedFlowCollection self)))
#else
module GHCJS.DOM.DOMNamedFlowCollection (
  module Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
#endif
