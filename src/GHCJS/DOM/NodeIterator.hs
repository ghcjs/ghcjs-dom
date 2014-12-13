{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeIterator
       (ghcjs_dom_node_iterator_detach, nodeIteratorDetach,
        ghcjs_dom_node_iterator_get_root, nodeIteratorGetRoot,
        ghcjs_dom_node_iterator_get_what_to_show,
        nodeIteratorGetWhatToShow, ghcjs_dom_node_iterator_get_filter,
        nodeIteratorGetFilter,
        ghcjs_dom_node_iterator_get_expand_entity_references,
        nodeIteratorGetExpandEntityReferences,
        ghcjs_dom_node_iterator_get_reference_node,
        nodeIteratorGetReferenceNode,
        ghcjs_dom_node_iterator_get_pointer_before_reference_node,
        nodeIteratorGetPointerBeforeReferenceNode, NodeIterator,
        IsNodeIterator, castToNodeIterator, gTypeNodeIterator,
        toNodeIterator)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"detach\"]()"
        ghcjs_dom_node_iterator_detach :: JSRef NodeIterator -> IO ()
#else 
ghcjs_dom_node_iterator_detach :: JSRef NodeIterator -> IO ()
ghcjs_dom_node_iterator_detach = undefined
#endif
 
nodeIteratorDetach :: (IsNodeIterator self) => self -> IO ()
nodeIteratorDetach self
  = ghcjs_dom_node_iterator_detach
      (unNodeIterator (toNodeIterator self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_node_iterator_get_root ::
        JSRef NodeIterator -> IO (JSRef Node)
#else 
ghcjs_dom_node_iterator_get_root ::
                                   JSRef NodeIterator -> IO (JSRef Node)
ghcjs_dom_node_iterator_get_root = undefined
#endif
 
nodeIteratorGetRoot ::
                    (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorGetRoot self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_iterator_get_root
         (unNodeIterator (toNodeIterator self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_node_iterator_get_what_to_show ::
        JSRef NodeIterator -> IO Word
#else 
ghcjs_dom_node_iterator_get_what_to_show ::
                                           JSRef NodeIterator -> IO Word
ghcjs_dom_node_iterator_get_what_to_show = undefined
#endif
 
nodeIteratorGetWhatToShow ::
                          (IsNodeIterator self) => self -> IO Word
nodeIteratorGetWhatToShow self
  = ghcjs_dom_node_iterator_get_what_to_show
      (unNodeIterator (toNodeIterator self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_node_iterator_get_filter ::
        JSRef NodeIterator -> IO (JSRef NodeFilter)
#else 
ghcjs_dom_node_iterator_get_filter ::
                                     JSRef NodeIterator -> IO (JSRef NodeFilter)
ghcjs_dom_node_iterator_get_filter = undefined
#endif
 
nodeIteratorGetFilter ::
                      (IsNodeIterator self) => self -> IO (Maybe NodeFilter)
nodeIteratorGetFilter self
  = fmap NodeFilter . maybeJSNull <$>
      (ghcjs_dom_node_iterator_get_filter
         (unNodeIterator (toNodeIterator self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_node_iterator_get_expand_entity_references ::
        JSRef NodeIterator -> IO Bool
#else 
ghcjs_dom_node_iterator_get_expand_entity_references ::
                                                       JSRef NodeIterator -> IO Bool
ghcjs_dom_node_iterator_get_expand_entity_references = undefined
#endif
 
nodeIteratorGetExpandEntityReferences ::
                                      (IsNodeIterator self) => self -> IO Bool
nodeIteratorGetExpandEntityReferences self
  = ghcjs_dom_node_iterator_get_expand_entity_references
      (unNodeIterator (toNodeIterator self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        ghcjs_dom_node_iterator_get_reference_node ::
        JSRef NodeIterator -> IO (JSRef Node)
#else 
ghcjs_dom_node_iterator_get_reference_node ::
                                             JSRef NodeIterator -> IO (JSRef Node)
ghcjs_dom_node_iterator_get_reference_node = undefined
#endif
 
nodeIteratorGetReferenceNode ::
                             (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorGetReferenceNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_node_iterator_get_reference_node
         (unNodeIterator (toNodeIterator self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        ghcjs_dom_node_iterator_get_pointer_before_reference_node ::
        JSRef NodeIterator -> IO Bool
#else 
ghcjs_dom_node_iterator_get_pointer_before_reference_node ::
                                                            JSRef NodeIterator -> IO Bool
ghcjs_dom_node_iterator_get_pointer_before_reference_node
  = undefined
#endif
 
nodeIteratorGetPointerBeforeReferenceNode ::
                                          (IsNodeIterator self) => self -> IO Bool
nodeIteratorGetPointerBeforeReferenceNode self
  = ghcjs_dom_node_iterator_get_pointer_before_reference_node
      (unNodeIterator (toNodeIterator self))
#else
module GHCJS.DOM.NodeIterator (
  module Graphics.UI.Gtk.WebKit.DOM.NodeIterator
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NodeIterator
#endif
