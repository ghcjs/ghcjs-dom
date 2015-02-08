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
import Control.Monad.IO.Class (MonadIO(..))
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
                     (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerParentNode self
  = liftIO
      ((ghcjs_dom_tree_walker_parent_node
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"firstChild\"]()"
        ghcjs_dom_tree_walker_first_child ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.firstChild Mozilla TreeWalker.firstChild documentation> 
treeWalkerFirstChild ::
                     (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerFirstChild self
  = liftIO
      ((ghcjs_dom_tree_walker_first_child
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"lastChild\"]()"
        ghcjs_dom_tree_walker_last_child ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.lastChild Mozilla TreeWalker.lastChild documentation> 
treeWalkerLastChild ::
                    (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerLastChild self
  = liftIO
      ((ghcjs_dom_tree_walker_last_child
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousSibling\"]()"
        ghcjs_dom_tree_walker_previous_sibling ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousSibling Mozilla TreeWalker.previousSibling documentation> 
treeWalkerPreviousSibling ::
                          (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerPreviousSibling self
  = liftIO
      ((ghcjs_dom_tree_walker_previous_sibling
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextSibling\"]()"
        ghcjs_dom_tree_walker_next_sibling ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextSibling Mozilla TreeWalker.nextSibling documentation> 
treeWalkerNextSibling ::
                      (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerNextSibling self
  = liftIO
      ((ghcjs_dom_tree_walker_next_sibling
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"previousNode\"]()"
        ghcjs_dom_tree_walker_previous_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.previousNode Mozilla TreeWalker.previousNode documentation> 
treeWalkerPreviousNode ::
                       (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerPreviousNode self
  = liftIO
      ((ghcjs_dom_tree_walker_previous_node
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"nextNode\"]()"
        ghcjs_dom_tree_walker_next_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.nextNode Mozilla TreeWalker.nextNode documentation> 
treeWalkerNextNode ::
                   (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerNextNode self
  = liftIO
      ((ghcjs_dom_tree_walker_next_node
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_tree_walker_get_root ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.root Mozilla TreeWalker.root documentation> 
treeWalkerGetRoot ::
                  (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerGetRoot self
  = liftIO
      ((ghcjs_dom_tree_walker_get_root
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_tree_walker_get_what_to_show ::
        JSRef TreeWalker -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.whatToShow Mozilla TreeWalker.whatToShow documentation> 
treeWalkerGetWhatToShow ::
                        (MonadIO m, IsTreeWalker self) => self -> m Word
treeWalkerGetWhatToShow self
  = liftIO
      (ghcjs_dom_tree_walker_get_what_to_show
         (unTreeWalker (toTreeWalker self)))
 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_tree_walker_get_filter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.filter Mozilla TreeWalker.filter documentation> 
treeWalkerGetFilter ::
                    (MonadIO m, IsTreeWalker self) => self -> m (Maybe NodeFilter)
treeWalkerGetFilter self
  = liftIO
      ((ghcjs_dom_tree_walker_get_filter
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_tree_walker_get_expand_entity_references ::
        JSRef TreeWalker -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.expandEntityReferences Mozilla TreeWalker.expandEntityReferences documentation> 
treeWalkerGetExpandEntityReferences ::
                                    (MonadIO m, IsTreeWalker self) => self -> m Bool
treeWalkerGetExpandEntityReferences self
  = liftIO
      (ghcjs_dom_tree_walker_get_expand_entity_references
         (unTreeWalker (toTreeWalker self)))
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        ghcjs_dom_tree_walker_set_current_node ::
        JSRef TreeWalker -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
treeWalkerSetCurrentNode ::
                         (MonadIO m, IsTreeWalker self, IsNode val) =>
                           self -> Maybe val -> m ()
treeWalkerSetCurrentNode self val
  = liftIO
      (ghcjs_dom_tree_walker_set_current_node
         (unTreeWalker (toTreeWalker self))
         (maybe jsNull (unNode . toNode) val))
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        ghcjs_dom_tree_walker_get_current_node ::
        JSRef TreeWalker -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TreeWalker.currentNode Mozilla TreeWalker.currentNode documentation> 
treeWalkerGetCurrentNode ::
                         (MonadIO m, IsTreeWalker self) => self -> m (Maybe Node)
treeWalkerGetCurrentNode self
  = liftIO
      ((ghcjs_dom_tree_walker_get_current_node
          (unTreeWalker (toTreeWalker self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.TreeWalker (
  module Graphics.UI.Gtk.WebKit.DOM.TreeWalker
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TreeWalker
#endif
