{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.TreeWalker
       (ghcjs_dom_tree_walker_get_root, treeWalkerGetRoot,
        ghcjs_dom_tree_walker_get_what_to_show, treeWalkerGetWhatToShow,
        ghcjs_dom_tree_walker_get_filter, treeWalkerGetFilter,
        ghcjs_dom_tree_walker_get_expand_entity_references,
        treeWalkerGetExpandEntityReferences,
        ghcjs_dom_tree_walker_set_current_node, treeWalkerSetCurrentNode,
        ghcjs_dom_tree_walker_get_current_node, treeWalkerGetCurrentNode)
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
foreign import javascript unsafe "$1[\"root\"]"
        ghcjs_dom_tree_walker_get_root ::
        JSRef TreeWalker -> IO (JSRef Node)
#else 
ghcjs_dom_tree_walker_get_root ::
                                 JSRef TreeWalker -> IO (JSRef Node)
ghcjs_dom_tree_walker_get_root = undefined
#endif
 
treeWalkerGetRoot :: (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetRoot self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_root (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        ghcjs_dom_tree_walker_get_what_to_show ::
        JSRef TreeWalker -> IO Word
#else 
ghcjs_dom_tree_walker_get_what_to_show ::
                                         JSRef TreeWalker -> IO Word
ghcjs_dom_tree_walker_get_what_to_show = undefined
#endif
 
treeWalkerGetWhatToShow :: (IsTreeWalker self) => self -> IO Word
treeWalkerGetWhatToShow self
  = ghcjs_dom_tree_walker_get_what_to_show
      (unTreeWalker (toTreeWalker self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"filter\"]"
        ghcjs_dom_tree_walker_get_filter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)
#else 
ghcjs_dom_tree_walker_get_filter ::
                                   JSRef TreeWalker -> IO (JSRef NodeFilter)
ghcjs_dom_tree_walker_get_filter = undefined
#endif
 
treeWalkerGetFilter ::
                    (IsTreeWalker self) => self -> IO (Maybe NodeFilter)
treeWalkerGetFilter self
  = fmap NodeFilter . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_filter
         (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"expandEntityReferences\"] ? 1 : 0)"
        ghcjs_dom_tree_walker_get_expand_entity_references ::
        JSRef TreeWalker -> IO JSBool
#else 
ghcjs_dom_tree_walker_get_expand_entity_references ::
                                                     JSRef TreeWalker -> IO JSBool
ghcjs_dom_tree_walker_get_expand_entity_references = undefined
#endif
 
treeWalkerGetExpandEntityReferences ::
                                    (IsTreeWalker self) => self -> IO Bool
treeWalkerGetExpandEntityReferences self
  = fromJSBool <$>
      (ghcjs_dom_tree_walker_get_expand_entity_references
         (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        ghcjs_dom_tree_walker_set_current_node ::
        JSRef TreeWalker -> JSRef Node -> IO ()
#else 
ghcjs_dom_tree_walker_set_current_node ::
                                         JSRef TreeWalker -> JSRef Node -> IO ()
ghcjs_dom_tree_walker_set_current_node = undefined
#endif
 
treeWalkerSetCurrentNode ::
                         (IsTreeWalker self, IsNode val) => self -> Maybe val -> IO ()
treeWalkerSetCurrentNode self val
  = ghcjs_dom_tree_walker_set_current_node
      (unTreeWalker (toTreeWalker self))
      (maybe jsNull (unNode . toNode) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentNode\"]"
        ghcjs_dom_tree_walker_get_current_node ::
        JSRef TreeWalker -> IO (JSRef Node)
#else 
ghcjs_dom_tree_walker_get_current_node ::
                                         JSRef TreeWalker -> IO (JSRef Node)
ghcjs_dom_tree_walker_get_current_node = undefined
#endif
 
treeWalkerGetCurrentNode ::
                         (IsTreeWalker self) => self -> IO (Maybe Node)
treeWalkerGetCurrentNode self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_tree_walker_get_current_node
         (unTreeWalker (toTreeWalker self)))