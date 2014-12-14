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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_named_flow_collection_item ::
        JSRef DOMNamedFlowCollection -> Word -> IO (JSRef WebKitNamedFlow)
 
domNamedFlowCollectionItem ::
                           (IsDOMNamedFlowCollection self) =>
                             self -> Word -> IO (Maybe WebKitNamedFlow)
domNamedFlowCollectionItem self index
  = fmap WebKitNamedFlow . maybeJSNull <$>
      (ghcjs_dom_dom_named_flow_collection_item
         (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
         index)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_named_flow_collection_named_item ::
        JSRef DOMNamedFlowCollection ->
          JSString -> IO (JSRef WebKitNamedFlow)
 
domNamedFlowCollectionNamedItem ::
                                (IsDOMNamedFlowCollection self, ToJSString name) =>
                                  self -> name -> IO (Maybe WebKitNamedFlow)
domNamedFlowCollectionNamedItem self name
  = fmap WebKitNamedFlow . maybeJSNull <$>
      (ghcjs_dom_dom_named_flow_collection_named_item
         (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
         (toJSString name))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_named_flow_collection_get_length ::
        JSRef DOMNamedFlowCollection -> IO Word
 
domNamedFlowCollectionGetLength ::
                                (IsDOMNamedFlowCollection self) => self -> IO Word
domNamedFlowCollectionGetLength self
  = ghcjs_dom_dom_named_flow_collection_get_length
      (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
#else
module GHCJS.DOM.DOMNamedFlowCollection (
  module Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMNamedFlowCollection
#endif
