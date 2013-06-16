{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.TreeWalker
       (webkit_dom_tree_walker_get_root, treeWalkerGetRoot,
        webkit_dom_tree_walker_get_what_to_show, treeWalkerGetWhatToShow,
        webkit_dom_tree_walker_get_filter, treeWalkerGetFilter,
        webkit_dom_tree_walker_get_expand_entity_references,
        treeWalkerGetExpandEntityReferences,
        webkit_dom_tree_walker_set_current_node, treeWalkerSetCurrentNode,
        webkit_dom_tree_walker_get_current_node, treeWalkerGetCurrentNode)
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
        webkit_dom_tree_walker_get_root ::
        JSRef TreeWalker -> IO (JSRef Node)
#else 
webkit_dom_tree_walker_get_root ::
                                  JSRef TreeWalker -> IO (JSRef Node)
webkit_dom_tree_walker_get_root = undefined
#endif
 
treeWalkerGetRoot ::
                  (TreeWalkerClass self) => self -> IO (Maybe Node)
treeWalkerGetRoot self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_tree_walker_get_root
         (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"whatToShow\"]"
        webkit_dom_tree_walker_get_what_to_show ::
        JSRef TreeWalker -> IO Word
#else 
webkit_dom_tree_walker_get_what_to_show ::
                                          JSRef TreeWalker -> IO Word
webkit_dom_tree_walker_get_what_to_show = undefined
#endif
 
treeWalkerGetWhatToShow ::
                        (TreeWalkerClass self) => self -> IO Word
treeWalkerGetWhatToShow self
  = webkit_dom_tree_walker_get_what_to_show
      (unTreeWalker (toTreeWalker self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"filter\"]"
        webkit_dom_tree_walker_get_filter ::
        JSRef TreeWalker -> IO (JSRef NodeFilter)
#else 
webkit_dom_tree_walker_get_filter ::
                                    JSRef TreeWalker -> IO (JSRef NodeFilter)
webkit_dom_tree_walker_get_filter = undefined
#endif
 
treeWalkerGetFilter ::
                    (TreeWalkerClass self) => self -> IO (Maybe NodeFilter)
treeWalkerGetFilter self
  = fmap NodeFilter . maybeJSNull <$>
      (webkit_dom_tree_walker_get_filter
         (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"expandEntityReferences\"]"
        webkit_dom_tree_walker_get_expand_entity_references ::
        JSRef TreeWalker -> IO JSBool
#else 
webkit_dom_tree_walker_get_expand_entity_references ::
                                                      JSRef TreeWalker -> IO JSBool
webkit_dom_tree_walker_get_expand_entity_references = undefined
#endif
 
treeWalkerGetExpandEntityReferences ::
                                    (TreeWalkerClass self) => self -> IO Bool
treeWalkerGetExpandEntityReferences self
  = fromJSBool <$>
      (webkit_dom_tree_walker_get_expand_entity_references
         (unTreeWalker (toTreeWalker self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentNode\"] = $2;"
        webkit_dom_tree_walker_set_current_node ::
        JSRef TreeWalker -> JSRef Node -> IO ()
#else 
webkit_dom_tree_walker_set_current_node ::
                                          JSRef TreeWalker -> JSRef Node -> IO ()
webkit_dom_tree_walker_set_current_node = undefined
#endif
 
treeWalkerSetCurrentNode ::
                         (TreeWalkerClass self, NodeClass val) => self -> Maybe val -> IO ()
treeWalkerSetCurrentNode self val
  = webkit_dom_tree_walker_set_current_node
      (unTreeWalker (toTreeWalker self))
      (maybe jsNull (unNode . toNode) val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"currentNode\"]"
        webkit_dom_tree_walker_get_current_node ::
        JSRef TreeWalker -> IO (JSRef Node)
#else 
webkit_dom_tree_walker_get_current_node ::
                                          JSRef TreeWalker -> IO (JSRef Node)
webkit_dom_tree_walker_get_current_node = undefined
#endif
 
treeWalkerGetCurrentNode ::
                         (TreeWalkerClass self) => self -> IO (Maybe Node)
treeWalkerGetCurrentNode self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_tree_walker_get_current_node
         (unTreeWalker (toTreeWalker self)))