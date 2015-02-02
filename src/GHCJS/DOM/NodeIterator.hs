{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeIterator
       (ghcjs_dom_node_iterator_next_node, nodeIteratorNextNode,
        ghcjs_dom_node_iterator_previous_node, nodeIteratorPreviousNode,
        ghcjs_dom_node_iterator_detach, nodeIteratorDetach,
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

 
foreign import javascript unsafe "$1[\"nextNode\"]()"
        ghcjs_dom_node_iterator_next_node ::
        JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.nextNode Mozilla NodeIterator.nextNode documentation> 
nodeIteratorNextNode ::
                     (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorNextNode self
  = (ghcjs_dom_node_iterator_next_node
       (unNodeIterator (toNodeIterator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        ghcjs_dom_node_iterator_previous_node ::
        JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.previousNode Mozilla NodeIterator.previousNode documentation> 
nodeIteratorPreviousNode ::
                         (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorPreviousNode self
  = (ghcjs_dom_node_iterator_previous_node
       (unNodeIterator (toNodeIterator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"detach\"]()"
        ghcjs_dom_node_iterator_detach :: JSRef NodeIterator -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.detach Mozilla NodeIterator.detach documentation> 
nodeIteratorDetach :: (IsNodeIterator self) => self -> IO ()
nodeIteratorDetach self
  = ghcjs_dom_node_iterator_detach
      (unNodeIterator (toNodeIterator self))
 
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_node_iterator_get_root ::
        JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.root Mozilla NodeIterator.root documentation> 
nodeIteratorGetRoot ::
                    (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorGetRoot self
  = (ghcjs_dom_node_iterator_get_root
       (unNodeIterator (toNodeIterator self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_node_iterator_get_what_to_show ::
        JSRef NodeIterator -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.whatToShow Mozilla NodeIterator.whatToShow documentation> 
nodeIteratorGetWhatToShow ::
                          (IsNodeIterator self) => self -> IO Word
nodeIteratorGetWhatToShow self
  = ghcjs_dom_node_iterator_get_what_to_show
      (unNodeIterator (toNodeIterator self))
 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_node_iterator_get_filter ::
        JSRef NodeIterator -> IO (JSRef NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.filter Mozilla NodeIterator.filter documentation> 
nodeIteratorGetFilter ::
                      (IsNodeIterator self) => self -> IO (Maybe NodeFilter)
nodeIteratorGetFilter self
  = (ghcjs_dom_node_iterator_get_filter
       (unNodeIterator (toNodeIterator self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_node_iterator_get_expand_entity_references ::
        JSRef NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.expandEntityReferences Mozilla NodeIterator.expandEntityReferences documentation> 
nodeIteratorGetExpandEntityReferences ::
                                      (IsNodeIterator self) => self -> IO Bool
nodeIteratorGetExpandEntityReferences self
  = ghcjs_dom_node_iterator_get_expand_entity_references
      (unNodeIterator (toNodeIterator self))
 
foreign import javascript unsafe "$1[\"referenceNode\"]"
        ghcjs_dom_node_iterator_get_reference_node ::
        JSRef NodeIterator -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.referenceNode Mozilla NodeIterator.referenceNode documentation> 
nodeIteratorGetReferenceNode ::
                             (IsNodeIterator self) => self -> IO (Maybe Node)
nodeIteratorGetReferenceNode self
  = (ghcjs_dom_node_iterator_get_reference_node
       (unNodeIterator (toNodeIterator self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"pointerBeforeReferenceNode\"] ? 1 : 0)"
        ghcjs_dom_node_iterator_get_pointer_before_reference_node ::
        JSRef NodeIterator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeIterator.pointerBeforeReferenceNode Mozilla NodeIterator.pointerBeforeReferenceNode documentation> 
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
