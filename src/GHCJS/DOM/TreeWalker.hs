{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TreeWalker
       (ghcjs_dom_tree_walker_parent_node, treeWalkerParentNode,
        ghcjs_dom_tree_walker_first_child, treeWalkerFirstChild,
        ghcjs_dom_tree_walker_last_child, treeWalkerLastChild,
        ghcjs_dom_tree_walker_previous_sibling, treeWalkerPreviousSibling,
        ghcjs_dom_tree_walker_next_sibling, treeWalkerNextSibling,
        ghcjs_dom_tree_walker_previous_node, treeWalkerPreviousNode,
        ghcjs_dom_tree_walker_next_node, treeWalkerNextNode,
        ghcjs_dom_tree_walker_get_root, treeWalkerGetRoot,
        ghcjs_dom_tree_walker_get_what_to_show, treeWalkerGetWhatToShow,
        ghcjs_dom_tree_walker_get_filter, treeWalkerGetFilter,
        ghcjs_dom_tree_walker_get_expand_entity_references,
        treeWalkerGetExpandEntityReferences,
        ghcjs_dom_tree_walker_set_current_node, treeWalkerSetCurrentNode,
        ghcjs_dom_tree_walker_get_current_node, treeWalkerGetCurrentNode,
        TreeWalker(..), IsTreeWalker, castToTreeWalker, gTypeTreeWalker,
        toTreeWalker)
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

 
foreign import javascript unsafe "$1[\"parentNode\"]()"
        ghcjs_dom_tree_walker_parent_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.parentNode Mozilla TreeWalker.parentNode documentation> 
treeWalkerParentNode ::
                     (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerParentNode self
  = (ghcjs_dom_tree_walker_parent_node
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        ghcjs_dom_tree_walker_first_child ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
treeWalkerFirstChild ::
                     (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerFirstChild self
  = (ghcjs_dom_tree_walker_first_child
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"lastChild\"]()"
        ghcjs_dom_tree_walker_last_child ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
treeWalkerLastChild ::
                    (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerLastChild self
  = (ghcjs_dom_tree_walker_last_child
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        ghcjs_dom_tree_walker_previous_sibling ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
treeWalkerPreviousSibling ::
                          (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerPreviousSibling self
  = (ghcjs_dom_tree_walker_previous_sibling
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        ghcjs_dom_tree_walker_next_sibling ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
treeWalkerNextSibling ::
                      (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerNextSibling self
  = (ghcjs_dom_tree_walker_next_sibling
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        ghcjs_dom_tree_walker_previous_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
treeWalkerPreviousNode ::
                       (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerPreviousNode self
  = (ghcjs_dom_tree_walker_previous_node
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"nextNode\"]()"
        ghcjs_dom_tree_walker_next_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
treeWalkerNextNode ::
                   (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerNextNode self
  = (ghcjs_dom_tree_walker_next_node
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_tree_walker_get_root ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
treeWalkerGetRoot :: (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetRoot self
  = (ghcjs_dom_tree_walker_get_root
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_tree_walker_get_what_to_show ::
        JSRef TreeWalker -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
treeWalkerGetWhatToShow :: (IsTreeWalker self) => self -> IO Word
treeWalkerGetWhatToShow self
  = ghcjs_dom_tree_walker_get_what_to_show
      (unTreeWalker (toTreeWalker self))
 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_tree_walker_get_filter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
treeWalkerGetFilter ::
                    (IsTreeWalker self) => self -> IO (Maybe NodeFilter)
treeWalkerGetFilter self
  = (ghcjs_dom_tree_walker_get_filter
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_tree_walker_get_expand_entity_references ::
        JSRef TreeWalker -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.expandEntityReferences Mozilla TreeWalker.expandEntityReferences documentation> 
treeWalkerGetExpandEntityReferences ::
                                    (IsTreeWalker self) => self -> IO Bool
treeWalkerGetExpandEntityReferences self
  = ghcjs_dom_tree_walker_get_expand_entity_references
      (unTreeWalker (toTreeWalker self))
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        ghcjs_dom_tree_walker_set_current_node ::
        JSRef TreeWalker -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
treeWalkerSetCurrentNode ::
                         (IsTreeWalker self, IsNode val) => self -> Maybe val -> IO ()
treeWalkerSetCurrentNode self val
  = ghcjs_dom_tree_walker_set_current_node
      (unTreeWalker (toTreeWalker self))
      (maybe jsNull (unNode . toNode) val)
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        ghcjs_dom_tree_walker_get_current_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
treeWalkerGetCurrentNode ::
                         (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetCurrentNode self
  = (ghcjs_dom_tree_walker_get_current_node
       (unTreeWalker (toTreeWalker self)))
      >>= fromJSRef
#else
module GHCJS.DOM.TreeWalker (
  module Graphics.UI.Gtk.WebKit.DOM.TreeWalker
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TreeWalker
#endif
