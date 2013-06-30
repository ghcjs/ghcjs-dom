{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Range
       (webkit_dom_range_set_start, rangeSetStart,
        webkit_dom_range_set_end, rangeSetEnd,
        webkit_dom_range_set_start_before, rangeSetStartBefore,
        webkit_dom_range_set_start_after, rangeSetStartAfter,
        webkit_dom_range_set_end_before, rangeSetEndBefore,
        webkit_dom_range_set_end_after, rangeSetEndAfter,
        webkit_dom_range_collapse, rangeCollapse,
        webkit_dom_range_select_node, rangeSelectNode,
        webkit_dom_range_select_node_contents, rangeSelectNodeContents,
        webkit_dom_range_compare_boundary_points,
        rangeCompareBoundaryPoints, webkit_dom_range_delete_contents,
        rangeDeleteContents, webkit_dom_range_extract_contents,
        rangeExtractContents, webkit_dom_range_clone_contents,
        rangeCloneContents, webkit_dom_range_insert_node, rangeInsertNode,
        webkit_dom_range_surround_contents, rangeSurroundContents,
        webkit_dom_range_clone_range, rangeCloneRange,
        webkit_dom_range_to_string, rangeToString, webkit_dom_range_detach,
        rangeDetach, webkit_dom_range_create_contextual_fragment,
        rangeCreateContextualFragment, webkit_dom_range_intersects_node,
        rangeIntersectsNode, webkit_dom_range_compare_node,
        rangeCompareNode, webkit_dom_range_compare_point,
        rangeComparePoint, webkit_dom_range_is_point_in_range,
        rangeIsPointInRange, webkit_dom_range_expand, rangeExpand,
        cSTART_TO_START, cSTART_TO_END, cEND_TO_END, cEND_TO_START,
        cNODE_BEFORE, cNODE_AFTER, cNODE_BEFORE_AND_AFTER, cNODE_INSIDE,
        webkit_dom_range_get_start_container, rangeGetStartContainer,
        webkit_dom_range_get_start_offset, rangeGetStartOffset,
        webkit_dom_range_get_end_container, rangeGetEndContainer,
        webkit_dom_range_get_end_offset, rangeGetEndOffset,
        webkit_dom_range_get_collapsed, rangeGetCollapsed,
        webkit_dom_range_get_common_ancestor_container,
        rangeGetCommonAncestorContainer, webkit_dom_range_get_text,
        rangeGetText)
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
foreign import javascript unsafe "$1[\"setStart\"]($2, $3)"
        webkit_dom_range_set_start ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_range_set_start ::
                             JSRef DOMRange -> JSRef Node -> Int -> IO ()
webkit_dom_range_set_start = undefined
#endif
 
rangeSetStart ::
              (DOMRangeClass self, NodeClass refNode) =>
                self -> Maybe refNode -> Int -> IO ()
rangeSetStart self refNode offset
  = webkit_dom_range_set_start (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setEnd\"]($2, $3)"
        webkit_dom_range_set_end ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()
#else 
webkit_dom_range_set_end ::
                           JSRef DOMRange -> JSRef Node -> Int -> IO ()
webkit_dom_range_set_end = undefined
#endif
 
rangeSetEnd ::
            (DOMRangeClass self, NodeClass refNode) =>
              self -> Maybe refNode -> Int -> IO ()
rangeSetEnd self refNode offset
  = webkit_dom_range_set_end (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setStartBefore\"]($2)"
        webkit_dom_range_set_start_before ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_set_start_before ::
                                    JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_set_start_before = undefined
#endif
 
rangeSetStartBefore ::
                    (DOMRangeClass self, NodeClass refNode) =>
                      self -> Maybe refNode -> IO ()
rangeSetStartBefore self refNode
  = webkit_dom_range_set_start_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setStartAfter\"]($2)"
        webkit_dom_range_set_start_after ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_set_start_after ::
                                   JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_set_start_after = undefined
#endif
 
rangeSetStartAfter ::
                   (DOMRangeClass self, NodeClass refNode) =>
                     self -> Maybe refNode -> IO ()
rangeSetStartAfter self refNode
  = webkit_dom_range_set_start_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setEndBefore\"]($2)"
        webkit_dom_range_set_end_before ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_set_end_before ::
                                  JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_set_end_before = undefined
#endif
 
rangeSetEndBefore ::
                  (DOMRangeClass self, NodeClass refNode) =>
                    self -> Maybe refNode -> IO ()
rangeSetEndBefore self refNode
  = webkit_dom_range_set_end_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setEndAfter\"]($2)"
        webkit_dom_range_set_end_after ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_set_end_after ::
                                 JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_set_end_after = undefined
#endif
 
rangeSetEndAfter ::
                 (DOMRangeClass self, NodeClass refNode) =>
                   self -> Maybe refNode -> IO ()
rangeSetEndAfter self refNode
  = webkit_dom_range_set_end_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"collapse\"]($2)"
        webkit_dom_range_collapse :: JSRef DOMRange -> JSBool -> IO ()
#else 
webkit_dom_range_collapse :: JSRef DOMRange -> JSBool -> IO ()
webkit_dom_range_collapse = undefined
#endif
 
rangeCollapse :: (DOMRangeClass self) => self -> Bool -> IO ()
rangeCollapse self toStart
  = webkit_dom_range_collapse (unDOMRange (toDOMRange self))
      (toJSBool toStart)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectNode\"]($2)"
        webkit_dom_range_select_node ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_select_node ::
                               JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_select_node = undefined
#endif
 
rangeSelectNode ::
                (DOMRangeClass self, NodeClass refNode) =>
                  self -> Maybe refNode -> IO ()
rangeSelectNode self refNode
  = webkit_dom_range_select_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"selectNodeContents\"]($2)"
        webkit_dom_range_select_node_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_select_node_contents ::
                                        JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_select_node_contents = undefined
#endif
 
rangeSelectNodeContents ::
                        (DOMRangeClass self, NodeClass refNode) =>
                          self -> Maybe refNode -> IO ()
rangeSelectNodeContents self refNode
  = webkit_dom_range_select_node_contents
      (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)"
        webkit_dom_range_compare_boundary_points ::
        JSRef DOMRange -> Word -> JSRef DOMRange -> IO Int
#else 
webkit_dom_range_compare_boundary_points ::
                                           JSRef DOMRange -> Word -> JSRef DOMRange -> IO Int
webkit_dom_range_compare_boundary_points = undefined
#endif
 
rangeCompareBoundaryPoints ::
                           (DOMRangeClass self, DOMRangeClass sourceRange) =>
                             self -> Word -> Maybe sourceRange -> IO Int
rangeCompareBoundaryPoints self how sourceRange
  = webkit_dom_range_compare_boundary_points
      (unDOMRange (toDOMRange self))
      (fromIntegral how)
      (maybe jsNull (unDOMRange . toDOMRange) sourceRange)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteContents\"]()"
        webkit_dom_range_delete_contents :: JSRef DOMRange -> IO ()
#else 
webkit_dom_range_delete_contents :: JSRef DOMRange -> IO ()
webkit_dom_range_delete_contents = undefined
#endif
 
rangeDeleteContents :: (DOMRangeClass self) => self -> IO ()
rangeDeleteContents self
  = webkit_dom_range_delete_contents (unDOMRange (toDOMRange self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"extractContents\"]()"
        webkit_dom_range_extract_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)
#else 
webkit_dom_range_extract_contents ::
                                    JSRef DOMRange -> IO (JSRef DocumentFragment)
webkit_dom_range_extract_contents = undefined
#endif
 
rangeExtractContents ::
                     (DOMRangeClass self) => self -> IO (Maybe DocumentFragment)
rangeExtractContents self
  = fmap DocumentFragment . maybeJSNull <$>
      (webkit_dom_range_extract_contents (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cloneContents\"]()"
        webkit_dom_range_clone_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)
#else 
webkit_dom_range_clone_contents ::
                                  JSRef DOMRange -> IO (JSRef DocumentFragment)
webkit_dom_range_clone_contents = undefined
#endif
 
rangeCloneContents ::
                   (DOMRangeClass self) => self -> IO (Maybe DocumentFragment)
rangeCloneContents self
  = fmap DocumentFragment . maybeJSNull <$>
      (webkit_dom_range_clone_contents (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"insertNode\"]($2)"
        webkit_dom_range_insert_node ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_insert_node ::
                               JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_insert_node = undefined
#endif
 
rangeInsertNode ::
                (DOMRangeClass self, NodeClass newNode) =>
                  self -> Maybe newNode -> IO ()
rangeInsertNode self newNode
  = webkit_dom_range_insert_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"surroundContents\"]($2)"
        webkit_dom_range_surround_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else 
webkit_dom_range_surround_contents ::
                                     JSRef DOMRange -> JSRef Node -> IO ()
webkit_dom_range_surround_contents = undefined
#endif
 
rangeSurroundContents ::
                      (DOMRangeClass self, NodeClass newParent) =>
                        self -> Maybe newParent -> IO ()
rangeSurroundContents self newParent
  = webkit_dom_range_surround_contents (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newParent)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        webkit_dom_range_clone_range ::
        JSRef DOMRange -> IO (JSRef DOMRange)
#else 
webkit_dom_range_clone_range ::
                               JSRef DOMRange -> IO (JSRef DOMRange)
webkit_dom_range_clone_range = undefined
#endif
 
rangeCloneRange ::
                (DOMRangeClass self) => self -> IO (Maybe DOMRange)
rangeCloneRange self
  = fmap DOMRange . maybeJSNull <$>
      (webkit_dom_range_clone_range (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"toString\"]()"
        webkit_dom_range_to_string :: JSRef DOMRange -> IO JSString
#else 
webkit_dom_range_to_string :: JSRef DOMRange -> IO JSString
webkit_dom_range_to_string = undefined
#endif
 
rangeToString ::
              (DOMRangeClass self, FromJSString result) => self -> IO result
rangeToString self
  = fromJSString <$>
      (webkit_dom_range_to_string (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"detach\"]()"
        webkit_dom_range_detach :: JSRef DOMRange -> IO ()
#else 
webkit_dom_range_detach :: JSRef DOMRange -> IO ()
webkit_dom_range_detach = undefined
#endif
 
rangeDetach :: (DOMRangeClass self) => self -> IO ()
rangeDetach self
  = webkit_dom_range_detach (unDOMRange (toDOMRange self))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createContextualFragment\"]($2)"
        webkit_dom_range_create_contextual_fragment ::
        JSRef DOMRange -> JSString -> IO (JSRef DocumentFragment)
#else 
webkit_dom_range_create_contextual_fragment ::
                                              JSRef DOMRange ->
                                                JSString -> IO (JSRef DocumentFragment)
webkit_dom_range_create_contextual_fragment = undefined
#endif
 
rangeCreateContextualFragment ::
                              (DOMRangeClass self, ToJSString html) =>
                                self -> html -> IO (Maybe DocumentFragment)
rangeCreateContextualFragment self html
  = fmap DocumentFragment . maybeJSNull <$>
      (webkit_dom_range_create_contextual_fragment
         (unDOMRange (toDOMRange self))
         (toJSString html))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)"
        webkit_dom_range_intersects_node ::
        JSRef DOMRange -> JSRef Node -> IO JSBool
#else 
webkit_dom_range_intersects_node ::
                                   JSRef DOMRange -> JSRef Node -> IO JSBool
webkit_dom_range_intersects_node = undefined
#endif
 
rangeIntersectsNode ::
                    (DOMRangeClass self, NodeClass refNode) =>
                      self -> Maybe refNode -> IO Bool
rangeIntersectsNode self refNode
  = fromJSBool <$>
      (webkit_dom_range_intersects_node (unDOMRange (toDOMRange self))
         (maybe jsNull (unNode . toNode) refNode))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compareNode\"]($2)"
        webkit_dom_range_compare_node ::
        JSRef DOMRange -> JSRef Node -> IO Int
#else 
webkit_dom_range_compare_node ::
                                JSRef DOMRange -> JSRef Node -> IO Int
webkit_dom_range_compare_node = undefined
#endif
 
rangeCompareNode ::
                 (DOMRangeClass self, NodeClass refNode) =>
                   self -> Maybe refNode -> IO Int
rangeCompareNode self refNode
  = webkit_dom_range_compare_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"comparePoint\"]($2, $3)"
        webkit_dom_range_compare_point ::
        JSRef DOMRange -> JSRef Node -> Int -> IO Int
#else 
webkit_dom_range_compare_point ::
                                 JSRef DOMRange -> JSRef Node -> Int -> IO Int
webkit_dom_range_compare_point = undefined
#endif
 
rangeComparePoint ::
                  (DOMRangeClass self, NodeClass refNode) =>
                    self -> Maybe refNode -> Int -> IO Int
rangeComparePoint self refNode offset
  = webkit_dom_range_compare_point (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)"
        webkit_dom_range_is_point_in_range ::
        JSRef DOMRange -> JSRef Node -> Int -> IO JSBool
#else 
webkit_dom_range_is_point_in_range ::
                                     JSRef DOMRange -> JSRef Node -> Int -> IO JSBool
webkit_dom_range_is_point_in_range = undefined
#endif
 
rangeIsPointInRange ::
                    (DOMRangeClass self, NodeClass refNode) =>
                      self -> Maybe refNode -> Int -> IO Bool
rangeIsPointInRange self refNode offset
  = fromJSBool <$>
      (webkit_dom_range_is_point_in_range (unDOMRange (toDOMRange self))
         (maybe jsNull (unNode . toNode) refNode)
         offset)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"expand\"]($2)"
        webkit_dom_range_expand :: JSRef DOMRange -> JSString -> IO ()
#else 
webkit_dom_range_expand :: JSRef DOMRange -> JSString -> IO ()
webkit_dom_range_expand = undefined
#endif
 
rangeExpand ::
            (DOMRangeClass self, ToJSString unit) => self -> unit -> IO ()
rangeExpand self unit
  = webkit_dom_range_expand (unDOMRange (toDOMRange self))
      (toJSString unit)
cSTART_TO_START = 0
cSTART_TO_END = 1
cEND_TO_END = 2
cEND_TO_START = 3
cNODE_BEFORE = 0
cNODE_AFTER = 1
cNODE_BEFORE_AND_AFTER = 2
cNODE_INSIDE = 3


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"startContainer\"]"
        webkit_dom_range_get_start_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else 
webkit_dom_range_get_start_container ::
                                       JSRef DOMRange -> IO (JSRef Node)
webkit_dom_range_get_start_container = undefined
#endif
 
rangeGetStartContainer ::
                       (DOMRangeClass self) => self -> IO (Maybe Node)
rangeGetStartContainer self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_range_get_start_container
         (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"startOffset\"]"
        webkit_dom_range_get_start_offset :: JSRef DOMRange -> IO Int
#else 
webkit_dom_range_get_start_offset :: JSRef DOMRange -> IO Int
webkit_dom_range_get_start_offset = undefined
#endif
 
rangeGetStartOffset :: (DOMRangeClass self) => self -> IO Int
rangeGetStartOffset self
  = webkit_dom_range_get_start_offset (unDOMRange (toDOMRange self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"endContainer\"]"
        webkit_dom_range_get_end_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else 
webkit_dom_range_get_end_container ::
                                     JSRef DOMRange -> IO (JSRef Node)
webkit_dom_range_get_end_container = undefined
#endif
 
rangeGetEndContainer ::
                     (DOMRangeClass self) => self -> IO (Maybe Node)
rangeGetEndContainer self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_range_get_end_container (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"endOffset\"]"
        webkit_dom_range_get_end_offset :: JSRef DOMRange -> IO Int
#else 
webkit_dom_range_get_end_offset :: JSRef DOMRange -> IO Int
webkit_dom_range_get_end_offset = undefined
#endif
 
rangeGetEndOffset :: (DOMRangeClass self) => self -> IO Int
rangeGetEndOffset self
  = webkit_dom_range_get_end_offset (unDOMRange (toDOMRange self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        webkit_dom_range_get_collapsed :: JSRef DOMRange -> IO JSBool
#else 
webkit_dom_range_get_collapsed :: JSRef DOMRange -> IO JSBool
webkit_dom_range_get_collapsed = undefined
#endif
 
rangeGetCollapsed :: (DOMRangeClass self) => self -> IO Bool
rangeGetCollapsed self
  = fromJSBool <$>
      (webkit_dom_range_get_collapsed (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        webkit_dom_range_get_common_ancestor_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else 
webkit_dom_range_get_common_ancestor_container ::
                                                 JSRef DOMRange -> IO (JSRef Node)
webkit_dom_range_get_common_ancestor_container = undefined
#endif
 
rangeGetCommonAncestorContainer ::
                                (DOMRangeClass self) => self -> IO (Maybe Node)
rangeGetCommonAncestorContainer self
  = fmap Node . maybeJSNull <$>
      (webkit_dom_range_get_common_ancestor_container
         (unDOMRange (toDOMRange self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"text\"]"
        webkit_dom_range_get_text :: JSRef DOMRange -> IO JSString
#else 
webkit_dom_range_get_text :: JSRef DOMRange -> IO JSString
webkit_dom_range_get_text = undefined
#endif
 
rangeGetText ::
             (DOMRangeClass self, FromJSString result) => self -> IO result
rangeGetText self
  = fromJSString <$>
      (webkit_dom_range_get_text (unDOMRange (toDOMRange self)))