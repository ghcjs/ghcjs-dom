{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSelection
       (ghcjs_dom_dom_selection_collapse, domSelectionCollapse,
        ghcjs_dom_dom_selection_collapse_to_end, domSelectionCollapseToEnd,
        ghcjs_dom_dom_selection_collapse_to_start,
        domSelectionCollapseToStart,
        ghcjs_dom_dom_selection_delete_from_document,
        domSelectionDeleteFromDocument,
        ghcjs_dom_dom_selection_contains_node, domSelectionContainsNode,
        ghcjs_dom_dom_selection_select_all_children,
        domSelectionSelectAllChildren, ghcjs_dom_dom_selection_extend,
        domSelectionExtend, ghcjs_dom_dom_selection_get_range_at,
        domSelectionGetRangeAt, ghcjs_dom_dom_selection_remove_all_ranges,
        domSelectionRemoveAllRanges, ghcjs_dom_dom_selection_add_range,
        domSelectionAddRange, ghcjs_dom_dom_selection_modify,
        domSelectionModify, ghcjs_dom_dom_selection_set_base_and_extent,
        domSelectionSetBaseAndExtent, ghcjs_dom_dom_selection_set_position,
        domSelectionSetPosition, ghcjs_dom_dom_selection_empty,
        domSelectionEmpty, ghcjs_dom_dom_selection_get_anchor_node,
        domSelectionGetAnchorNode,
        ghcjs_dom_dom_selection_get_anchor_offset,
        domSelectionGetAnchorOffset,
        ghcjs_dom_dom_selection_get_focus_node, domSelectionGetFocusNode,
        ghcjs_dom_dom_selection_get_focus_offset,
        domSelectionGetFocusOffset,
        ghcjs_dom_dom_selection_get_is_collapsed,
        domSelectionGetIsCollapsed,
        ghcjs_dom_dom_selection_get_range_count, domSelectionGetRangeCount,
        ghcjs_dom_dom_selection_get_base_node, domSelectionGetBaseNode,
        ghcjs_dom_dom_selection_get_base_offset, domSelectionGetBaseOffset,
        ghcjs_dom_dom_selection_get_extent_node, domSelectionGetExtentNode,
        ghcjs_dom_dom_selection_get_extent_offset,
        domSelectionGetExtentOffset, DOMSelection, IsDOMSelection,
        castToDOMSelection, gTypeDOMSelection, toDOMSelection)
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

 
foreign import javascript unsafe "$1[\"collapse\"]($2, $3)"
        ghcjs_dom_dom_selection_collapse ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
domSelectionCollapse ::
                     (IsDOMSelection self, IsNode node) =>
                       self -> Maybe node -> Int -> IO ()
domSelectionCollapse self node index
  = ghcjs_dom_dom_selection_collapse
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      index
 
foreign import javascript unsafe "$1[\"collapseToEnd\"]()"
        ghcjs_dom_dom_selection_collapse_to_end ::
        JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
domSelectionCollapseToEnd :: (IsDOMSelection self) => self -> IO ()
domSelectionCollapseToEnd self
  = ghcjs_dom_dom_selection_collapse_to_end
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"collapseToStart\"]()"
        ghcjs_dom_dom_selection_collapse_to_start ::
        JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
domSelectionCollapseToStart ::
                            (IsDOMSelection self) => self -> IO ()
domSelectionCollapseToStart self
  = ghcjs_dom_dom_selection_collapse_to_start
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        ghcjs_dom_dom_selection_delete_from_document ::
        JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
domSelectionDeleteFromDocument ::
                               (IsDOMSelection self) => self -> IO ()
domSelectionDeleteFromDocument self
  = ghcjs_dom_dom_selection_delete_from_document
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe
        "($1[\"containsNode\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_dom_selection_contains_node ::
        JSRef DOMSelection -> JSRef Node -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
domSelectionContainsNode ::
                         (IsDOMSelection self, IsNode node) =>
                           self -> Maybe node -> Bool -> IO Bool
domSelectionContainsNode self node allowPartial
  = ghcjs_dom_dom_selection_contains_node
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      allowPartial
 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        ghcjs_dom_dom_selection_select_all_children ::
        JSRef DOMSelection -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
domSelectionSelectAllChildren ::
                              (IsDOMSelection self, IsNode node) => self -> Maybe node -> IO ()
domSelectionSelectAllChildren self node
  = ghcjs_dom_dom_selection_select_all_children
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
 
foreign import javascript unsafe "$1[\"extend\"]($2, $3)"
        ghcjs_dom_dom_selection_extend ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
domSelectionExtend ::
                   (IsDOMSelection self, IsNode node) =>
                     self -> Maybe node -> Int -> IO ()
domSelectionExtend self node offset
  = ghcjs_dom_dom_selection_extend
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      offset
 
foreign import javascript unsafe "$1[\"getRangeAt\"]($2)"
        ghcjs_dom_dom_selection_get_range_at ::
        JSRef DOMSelection -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeAt Mozilla Selection.rangeAt documentation> 
domSelectionGetRangeAt ::
                       (IsDOMSelection self) => self -> Int -> IO (Maybe DOMRange)
domSelectionGetRangeAt self index
  = (ghcjs_dom_dom_selection_get_range_at
       (unDOMSelection (toDOMSelection self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        ghcjs_dom_dom_selection_remove_all_ranges ::
        JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
domSelectionRemoveAllRanges ::
                            (IsDOMSelection self) => self -> IO ()
domSelectionRemoveAllRanges self
  = ghcjs_dom_dom_selection_remove_all_ranges
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"addRange\"]($2)"
        ghcjs_dom_dom_selection_add_range ::
        JSRef DOMSelection -> JSRef DOMRange -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
domSelectionAddRange ::
                     (IsDOMSelection self, IsDOMRange range) =>
                       self -> Maybe range -> IO ()
domSelectionAddRange self range
  = ghcjs_dom_dom_selection_add_range
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unDOMRange . toDOMRange) range)
 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        ghcjs_dom_dom_selection_modify ::
        JSRef DOMSelection -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
domSelectionModify ::
                   (IsDOMSelection self, ToJSString alter, ToJSString direction,
                    ToJSString granularity) =>
                     self -> alter -> direction -> granularity -> IO ()
domSelectionModify self alter direction granularity
  = ghcjs_dom_dom_selection_modify
      (unDOMSelection (toDOMSelection self))
      (toJSString alter)
      (toJSString direction)
      (toJSString granularity)
 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)"
        ghcjs_dom_dom_selection_set_base_and_extent ::
        JSRef DOMSelection ->
          JSRef Node -> Int -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseAndExtent Mozilla Selection.baseAndExtent documentation> 
domSelectionSetBaseAndExtent ::
                             (IsDOMSelection self, IsNode baseNode, IsNode extentNode) =>
                               self -> Maybe baseNode -> Int -> Maybe extentNode -> Int -> IO ()
domSelectionSetBaseAndExtent self baseNode baseOffset extentNode
  extentOffset
  = ghcjs_dom_dom_selection_set_base_and_extent
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) baseNode)
      baseOffset
      (maybe jsNull (unNode . toNode) extentNode)
      extentOffset
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        ghcjs_dom_dom_selection_set_position ::
        JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.position Mozilla Selection.position documentation> 
domSelectionSetPosition ::
                        (IsDOMSelection self, IsNode node) =>
                          self -> Maybe node -> Int -> IO ()
domSelectionSetPosition self node offset
  = ghcjs_dom_dom_selection_set_position
      (unDOMSelection (toDOMSelection self))
      (maybe jsNull (unNode . toNode) node)
      offset
 
foreign import javascript unsafe "$1[\"empty\"]()"
        ghcjs_dom_dom_selection_empty :: JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
domSelectionEmpty :: (IsDOMSelection self) => self -> IO ()
domSelectionEmpty self
  = ghcjs_dom_dom_selection_empty
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        ghcjs_dom_dom_selection_get_anchor_node ::
        JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
domSelectionGetAnchorNode ::
                          (IsDOMSelection self) => self -> IO (Maybe Node)
domSelectionGetAnchorNode self
  = (ghcjs_dom_dom_selection_get_anchor_node
       (unDOMSelection (toDOMSelection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        ghcjs_dom_dom_selection_get_anchor_offset ::
        JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
domSelectionGetAnchorOffset ::
                            (IsDOMSelection self) => self -> IO Int
domSelectionGetAnchorOffset self
  = ghcjs_dom_dom_selection_get_anchor_offset
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"focusNode\"]"
        ghcjs_dom_dom_selection_get_focus_node ::
        JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
domSelectionGetFocusNode ::
                         (IsDOMSelection self) => self -> IO (Maybe Node)
domSelectionGetFocusNode self
  = (ghcjs_dom_dom_selection_get_focus_node
       (unDOMSelection (toDOMSelection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        ghcjs_dom_dom_selection_get_focus_offset ::
        JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
domSelectionGetFocusOffset ::
                           (IsDOMSelection self) => self -> IO Int
domSelectionGetFocusOffset self
  = ghcjs_dom_dom_selection_get_focus_offset
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "($1[\"isCollapsed\"] ? 1 : 0)"
        ghcjs_dom_dom_selection_get_is_collapsed ::
        JSRef DOMSelection -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
domSelectionGetIsCollapsed ::
                           (IsDOMSelection self) => self -> IO Bool
domSelectionGetIsCollapsed self
  = ghcjs_dom_dom_selection_get_is_collapsed
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        ghcjs_dom_dom_selection_get_range_count ::
        JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
domSelectionGetRangeCount ::
                          (IsDOMSelection self) => self -> IO Int
domSelectionGetRangeCount self
  = ghcjs_dom_dom_selection_get_range_count
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"baseNode\"]"
        ghcjs_dom_dom_selection_get_base_node ::
        JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
domSelectionGetBaseNode ::
                        (IsDOMSelection self) => self -> IO (Maybe Node)
domSelectionGetBaseNode self
  = (ghcjs_dom_dom_selection_get_base_node
       (unDOMSelection (toDOMSelection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        ghcjs_dom_dom_selection_get_base_offset ::
        JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
domSelectionGetBaseOffset ::
                          (IsDOMSelection self) => self -> IO Int
domSelectionGetBaseOffset self
  = ghcjs_dom_dom_selection_get_base_offset
      (unDOMSelection (toDOMSelection self))
 
foreign import javascript unsafe "$1[\"extentNode\"]"
        ghcjs_dom_dom_selection_get_extent_node ::
        JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
domSelectionGetExtentNode ::
                          (IsDOMSelection self) => self -> IO (Maybe Node)
domSelectionGetExtentNode self
  = (ghcjs_dom_dom_selection_get_extent_node
       (unDOMSelection (toDOMSelection self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        ghcjs_dom_dom_selection_get_extent_offset ::
        JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
domSelectionGetExtentOffset ::
                            (IsDOMSelection self) => self -> IO Int
domSelectionGetExtentOffset self
  = ghcjs_dom_dom_selection_get_extent_offset
      (unDOMSelection (toDOMSelection self))
#else
module GHCJS.DOM.DOMSelection (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSelection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSelection
#endif
