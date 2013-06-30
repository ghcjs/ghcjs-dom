{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.NodeIterator
       (webkit_dom_node_iterator_detach, nodeIteratorDetach,
        webkit_dom_node_iterator_get_root, nodeIteratorGetRoot,
        webkit_dom_node_iterator_get_what_to_show,
        nodeIteratorGetWhatToShow, webkit_dom_node_iterator_get_filter,
        nodeIteratorGetFilter,
        webkit_dom_node_iterator_get_expand_entity_references,
        nodeIteratorGetExpandEntityReferences,
        webkit_dom_node_iterator_get_reference_node,
        nodeIteratorGetReferenceNode,
        webkit_dom_node_iterator_get_pointer_before_reference_node,
        nodeIteratorGetPointerBeforeReferenceNode)
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
foreign import javascript unsafe "$1[\"detach\"]()"
        webkit_dom_node_iterator_detach :: JSRef NodeIterator -> IO ()
#else 
webkit_dom_node_iterator_detach :: JSRef NodeIterator -> IO ()
webkit_dom_node_iterator_detach = undefined
#endif
 
nodeIteratorDetach :: (NodeIteratorClass self) => self -> IO ()
nodeIteratorDetach self
  = webkit_dom_node_iterator_detach
      (unNodeIterator (toNodeIterator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"root\"]"
        webkit_dom_node_iterator_get_root ::
        JSRef NodeIterator -> IO (JSRef Node)
#else 
webkit_dom_node_iterator_get_root ::
                                    JSRef NodeIterator -> IO (JSRef Node)
webkit_dom_node_iterator_get_root = undefined
#endif
 
nodeIteratorGetRoot ::
                    (NodeIteratorClass self) => self -> IO (Maybe Node)
nodeIteratorGetRoot self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_iterator_get_root
         (unNodeIterator (toNodeIterator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        webkit_dom_node_iterator_get_what_to_show ::
        JSRef NodeIterator -> IO Word
#else 
webkit_dom_node_iterator_get_what_to_show ::
                                            JSRef NodeIterator -> IO Word
webkit_dom_node_iterator_get_what_to_show = undefined
#endif
 
nodeIteratorGetWhatToShow ::
                          (NodeIteratorClass self) => self -> IO Word
nodeIteratorGetWhatToShow self
  = webkit_dom_node_iterator_get_what_to_show
      (unNodeIterator (toNodeIterator self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"filter\"]"
        webkit_dom_node_iterator_get_filter ::
        JSRef NodeIterator -> IO (JSRef NodeFilter)
#else 
webkit_dom_node_iterator_get_filter ::
                                      JSRef NodeIterator -> IO (JSRef NodeFilter)
webkit_dom_node_iterator_get_filter = undefined
#endif
 
nodeIteratorGetFilter ::
                      (NodeIteratorClass self) => self -> IO (Maybe NodeFilter)
nodeIteratorGetFilter self
  = fmap NodeFilter . maybeJSNull <$>
      (webkit_dom_node_iterator_get_filter
         (unNodeIterator (toNodeIterator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        webkit_dom_node_iterator_get_expand_entity_references ::
        JSRef NodeIterator -> IO JSBool
#else 
webkit_dom_node_iterator_get_expand_entity_references ::
                                                        JSRef NodeIterator -> IO JSBool
webkit_dom_node_iterator_get_expand_entity_references = undefined
#endif
 
nodeIteratorGetExpandEntityReferences ::
                                      (NodeIteratorClass self) => self -> IO Bool
nodeIteratorGetExpandEntityReferences self
  = fromJSBool <$>
      (webkit_dom_node_iterator_get_expand_entity_references
         (unNodeIterator (toNodeIterator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        webkit_dom_node_iterator_get_reference_node ::
        JSRef NodeIterator -> IO (JSRef Node)
#else 
webkit_dom_node_iterator_get_reference_node ::
                                              JSRef NodeIterator -> IO (JSRef Node)
webkit_dom_node_iterator_get_reference_node = undefined
#endif
 
nodeIteratorGetReferenceNode ::
                             (NodeIteratorClass self) => self -> IO (Maybe Node)
nodeIteratorGetReferenceNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_node_iterator_get_reference_node
         (unNodeIterator (toNodeIterator self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        webkit_dom_node_iterator_get_pointer_before_reference_node ::
        JSRef NodeIterator -> IO JSBool
#else 
webkit_dom_node_iterator_get_pointer_before_reference_node ::
                                                             JSRef NodeIterator -> IO JSBool
webkit_dom_node_iterator_get_pointer_before_reference_node
  = undefined
#endif
 
nodeIteratorGetPointerBeforeReferenceNode ::
                                          (NodeIteratorClass self) => self -> IO Bool
nodeIteratorGetPointerBeforeReferenceNode self
  = fromJSBool <$>
      (webkit_dom_node_iterator_get_pointer_before_reference_node
         (unNodeIterator (toNodeIterator self)))