{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TreeWalker
       (ghcjs_dom_tree_walker_get_root, treeWalkerGetRoot,
        ghcjs_dom_tree_walker_get_what_to_show, treeWalkerGetWhatToShow,
        ghcjs_dom_tree_walker_get_filter, treeWalkerGetFilter,
        ghcjs_dom_tree_walker_get_expand_entity_references,
        treeWalkerGetExpandEntityReferences,
        ghcjs_dom_tree_walker_set_current_node, treeWalkerSetCurrentNode,
        ghcjs_dom_tree_walker_get_current_node, treeWalkerGetCurrentNode,
        TreeWalker(..), IsTreeWalker, castToTreeWalker, gTypeTreeWalker,
        toTreeWalker)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_tree_walker_get_root ::
        JSRef TreeWalker -> IO (JSRef Node)
 
treeWalkerGetRoot :: (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetRoot self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_root (unTreeWalker (toTreeWalker self)))
 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_tree_walker_get_what_to_show ::
        JSRef TreeWalker -> IO Word
 
treeWalkerGetWhatToShow :: (IsTreeWalker self) => self -> IO Word
treeWalkerGetWhatToShow self
  = ghcjs_dom_tree_walker_get_what_to_show
      (unTreeWalker (toTreeWalker self))
 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_tree_walker_get_filter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)
 
treeWalkerGetFilter ::
                    (IsTreeWalker self) => self -> IO (Maybe NodeFilter)
treeWalkerGetFilter self
  = fmap NodeFilter . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_filter
         (unTreeWalker (toTreeWalker self)))
 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_tree_walker_get_expand_entity_references ::
        JSRef TreeWalker -> IO Bool
 
treeWalkerGetExpandEntityReferences ::
                                    (IsTreeWalker self) => self -> IO Bool
treeWalkerGetExpandEntityReferences self
  = ghcjs_dom_tree_walker_get_expand_entity_references
      (unTreeWalker (toTreeWalker self))
 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        ghcjs_dom_tree_walker_set_current_node ::
        JSRef TreeWalker -> JSRef Node -> IO ()
 
treeWalkerSetCurrentNode ::
                         (IsTreeWalker self, IsNode val) => self -> Maybe val -> IO ()
treeWalkerSetCurrentNode self val
  = ghcjs_dom_tree_walker_set_current_node
      (unTreeWalker (toTreeWalker self))
      (maybe jsNull (unNode . toNode) val)
 
foreign import javascript unsafe "$1[\"currentNode\"]"
        ghcjs_dom_tree_walker_get_current_node ::
        JSRef TreeWalker -> IO (JSRef Node)
 
treeWalkerGetCurrentNode ::
                         (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetCurrentNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_current_node
         (unTreeWalker (toTreeWalker self)))
#else
module GHCJS.DOM.TreeWalker (
  module Graphics.UI.Gtk.WebKit.DOM.TreeWalker
  ) where
import Graphics.UI.Gtk.WebKit.DOM.TreeWalker
#endif
