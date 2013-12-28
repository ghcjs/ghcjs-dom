{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMNamedFlowCollection
       (ghcjs_dom_dom_named_flow_collection_item,
        domNamedFlowCollectionItem,
        ghcjs_dom_dom_named_flow_collection_named_item,
        domNamedFlowCollectionNamedItem,
        ghcjs_dom_dom_named_flow_collection_get_length,
        domNamedFlowCollectionGetLength)
       where
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_named_flow_collection_item ::
        JSRef DOMNamedFlowCollection -> Word -> IO (JSRef WebKitNamedFlow)
#else 
ghcjs_dom_dom_named_flow_collection_item ::
                                           JSRef DOMNamedFlowCollection ->
                                             Word -> IO (JSRef WebKitNamedFlow)
ghcjs_dom_dom_named_flow_collection_item = undefined
#endif
 
domNamedFlowCollectionItem ::
                           (IsDOMNamedFlowCollection self) =>
                             self -> Word -> IO (Maybe WebKitNamedFlow)
domNamedFlowCollectionItem self index
  = fmap WebKitNamedFlow . maybeJSNull <$>
      (ghcjs_dom_dom_named_flow_collection_item
         (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_named_flow_collection_named_item ::
        JSRef DOMNamedFlowCollection ->
          JSString -> IO (JSRef WebKitNamedFlow)
#else 
ghcjs_dom_dom_named_flow_collection_named_item ::
                                                 JSRef DOMNamedFlowCollection ->
                                                   JSString -> IO (JSRef WebKitNamedFlow)
ghcjs_dom_dom_named_flow_collection_named_item = undefined
#endif
 
domNamedFlowCollectionNamedItem ::
                                (IsDOMNamedFlowCollection self, ToJSString name) =>
                                  self -> name -> IO (Maybe WebKitNamedFlow)
domNamedFlowCollectionNamedItem self name
  = fmap WebKitNamedFlow . maybeJSNull <$>
      (ghcjs_dom_dom_named_flow_collection_named_item
         (unDOMNamedFlowCollection (toDOMNamedFlowCollection self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_named_flow_collection_get_length ::
        JSRef DOMNamedFlowCollection -> IO Word
#else 
ghcjs_dom_dom_named_flow_collection_get_length ::
                                                 JSRef DOMNamedFlowCollection -> IO Word
ghcjs_dom_dom_named_flow_collection_get_length = undefined
#endif
 
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
