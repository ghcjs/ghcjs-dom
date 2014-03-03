{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Range
       (ghcjs_dom_range_set_start, rangeSetStart, ghcjs_dom_range_set_end,
        rangeSetEnd, ghcjs_dom_range_set_start_before, rangeSetStartBefore,
        ghcjs_dom_range_set_start_after, rangeSetStartAfter,
        ghcjs_dom_range_set_end_before, rangeSetEndBefore,
        ghcjs_dom_range_set_end_after, rangeSetEndAfter,
        ghcjs_dom_range_collapse, rangeCollapse,
        ghcjs_dom_range_select_node, rangeSelectNode,
        ghcjs_dom_range_select_node_contents, rangeSelectNodeContents,
        ghcjs_dom_range_compare_boundary_points,
        rangeCompareBoundaryPoints, ghcjs_dom_range_delete_contents,
        rangeDeleteContents, ghcjs_dom_range_extract_contents,
        rangeExtractContents, ghcjs_dom_range_clone_contents,
        rangeCloneContents, ghcjs_dom_range_insert_node, rangeInsertNode,
        ghcjs_dom_range_surround_contents, rangeSurroundContents,
        ghcjs_dom_range_clone_range, rangeCloneRange,
        ghcjs_dom_range_to_string, rangeToString, ghcjs_dom_range_detach,
        rangeDetach, ghcjs_dom_range_create_contextual_fragment,
        rangeCreateContextualFragment, ghcjs_dom_range_intersects_node,
        rangeIntersectsNode, ghcjs_dom_range_compare_node,
        rangeCompareNode, ghcjs_dom_range_compare_point, rangeComparePoint,
        ghcjs_dom_range_is_point_in_range, rangeIsPointInRange,
        ghcjs_dom_range_expand, rangeExpand, cSTART_TO_START,
        cSTART_TO_END, cEND_TO_END, cEND_TO_START, cNODE_BEFORE,
        cNODE_AFTER, cNODE_BEFORE_AND_AFTER, cNODE_INSIDE,
        ghcjs_dom_range_get_start_container, rangeGetStartContainer,
        ghcjs_dom_range_get_start_offset, rangeGetStartOffset,
        ghcjs_dom_range_get_end_container, rangeGetEndContainer,
        ghcjs_dom_range_get_end_offset, rangeGetEndOffset,
        ghcjs_dom_range_get_collapsed, rangeGetCollapsed,
        ghcjs_dom_range_get_common_ancestor_container,
        rangeGetCommonAncestorContainer, ghcjs_dom_range_get_text,
        rangeGetText, DOMRange, IsDOMRange, castToDOMRange, gTypeDOMRange, toDOMRange)
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



#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setStart\"]($2, $3)"
        ghcjs_dom_range_set_start ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()
#else
ghcjs_dom_range_set_start ::
                            JSRef DOMRange -> JSRef Node -> Int -> IO ()
ghcjs_dom_range_set_start = undefined
#endif

rangeSetStart ::
              (IsDOMRange self, IsNode refNode) =>
                self -> Maybe refNode -> Int -> IO ()
rangeSetStart self refNode offset
  = ghcjs_dom_range_set_start (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setEnd\"]($2, $3)"
        ghcjs_dom_range_set_end ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()
#else
ghcjs_dom_range_set_end ::
                          JSRef DOMRange -> JSRef Node -> Int -> IO ()
ghcjs_dom_range_set_end = undefined
#endif

rangeSetEnd ::
            (IsDOMRange self, IsNode refNode) =>
              self -> Maybe refNode -> Int -> IO ()
rangeSetEnd self refNode offset
  = ghcjs_dom_range_set_end (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setStartBefore\"]($2)"
        ghcjs_dom_range_set_start_before ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_set_start_before ::
                                   JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_set_start_before = undefined
#endif

rangeSetStartBefore ::
                    (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetStartBefore self refNode
  = ghcjs_dom_range_set_start_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setStartAfter\"]($2)"
        ghcjs_dom_range_set_start_after ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_set_start_after ::
                                  JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_set_start_after = undefined
#endif

rangeSetStartAfter ::
                   (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetStartAfter self refNode
  = ghcjs_dom_range_set_start_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setEndBefore\"]($2)"
        ghcjs_dom_range_set_end_before ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_set_end_before ::
                                 JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_set_end_before = undefined
#endif

rangeSetEndBefore ::
                  (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetEndBefore self refNode
  = ghcjs_dom_range_set_end_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"setEndAfter\"]($2)"
        ghcjs_dom_range_set_end_after ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_set_end_after ::
                                JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_set_end_after = undefined
#endif

rangeSetEndAfter ::
                 (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetEndAfter self refNode
  = ghcjs_dom_range_set_end_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"collapse\"]($2)"
        ghcjs_dom_range_collapse :: JSRef DOMRange -> Bool -> IO ()
#else
ghcjs_dom_range_collapse :: JSRef DOMRange -> Bool -> IO ()
ghcjs_dom_range_collapse = undefined
#endif

rangeCollapse :: (IsDOMRange self) => self -> Bool -> IO ()
rangeCollapse self toStart
  = ghcjs_dom_range_collapse (unDOMRange (toDOMRange self)) toStart


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"selectNode\"]($2)"
        ghcjs_dom_range_select_node ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_select_node ::
                              JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_select_node = undefined
#endif

rangeSelectNode ::
                (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSelectNode self refNode
  = ghcjs_dom_range_select_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"selectNodeContents\"]($2)"
        ghcjs_dom_range_select_node_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_select_node_contents ::
                                       JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_select_node_contents = undefined
#endif

rangeSelectNodeContents ::
                        (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSelectNodeContents self refNode
  = ghcjs_dom_range_select_node_contents
      (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)"
        ghcjs_dom_range_compare_boundary_points ::
        JSRef DOMRange -> Word -> JSRef DOMRange -> IO Int
#else
ghcjs_dom_range_compare_boundary_points ::
                                          JSRef DOMRange -> Word -> JSRef DOMRange -> IO Int
ghcjs_dom_range_compare_boundary_points = undefined
#endif

rangeCompareBoundaryPoints ::
                           (IsDOMRange self, IsDOMRange sourceRange) =>
                             self -> Word -> Maybe sourceRange -> IO Int
rangeCompareBoundaryPoints self how sourceRange
  = ghcjs_dom_range_compare_boundary_points
      (unDOMRange (toDOMRange self))
      (fromIntegral how)
      (maybe jsNull (unDOMRange . toDOMRange) sourceRange)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"deleteContents\"]()"
        ghcjs_dom_range_delete_contents :: JSRef DOMRange -> IO ()
#else
ghcjs_dom_range_delete_contents :: JSRef DOMRange -> IO ()
ghcjs_dom_range_delete_contents = undefined
#endif

rangeDeleteContents :: (IsDOMRange self) => self -> IO ()
rangeDeleteContents self
  = ghcjs_dom_range_delete_contents (unDOMRange (toDOMRange self))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"extractContents\"]()"
        ghcjs_dom_range_extract_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)
#else
ghcjs_dom_range_extract_contents ::
                                   JSRef DOMRange -> IO (JSRef DocumentFragment)
ghcjs_dom_range_extract_contents = undefined
#endif

rangeExtractContents ::
                     (IsDOMRange self) => self -> IO (Maybe DocumentFragment)
rangeExtractContents self
  = fmap DocumentFragment . maybeJSNull <$>
      (ghcjs_dom_range_extract_contents (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"cloneContents\"]()"
        ghcjs_dom_range_clone_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)
#else
ghcjs_dom_range_clone_contents ::
                                 JSRef DOMRange -> IO (JSRef DocumentFragment)
ghcjs_dom_range_clone_contents = undefined
#endif

rangeCloneContents ::
                   (IsDOMRange self) => self -> IO (Maybe DocumentFragment)
rangeCloneContents self
  = fmap DocumentFragment . maybeJSNull <$>
      (ghcjs_dom_range_clone_contents (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"insertNode\"]($2)"
        ghcjs_dom_range_insert_node ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_insert_node ::
                              JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_insert_node = undefined
#endif

rangeInsertNode ::
                (IsDOMRange self, IsNode newNode) => self -> Maybe newNode -> IO ()
rangeInsertNode self newNode
  = ghcjs_dom_range_insert_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"surroundContents\"]($2)"
        ghcjs_dom_range_surround_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()
#else
ghcjs_dom_range_surround_contents ::
                                    JSRef DOMRange -> JSRef Node -> IO ()
ghcjs_dom_range_surround_contents = undefined
#endif

rangeSurroundContents ::
                      (IsDOMRange self, IsNode newParent) =>
                        self -> Maybe newParent -> IO ()
rangeSurroundContents self newParent
  = ghcjs_dom_range_surround_contents (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newParent)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        ghcjs_dom_range_clone_range ::
        JSRef DOMRange -> IO (JSRef DOMRange)
#else
ghcjs_dom_range_clone_range ::
                              JSRef DOMRange -> IO (JSRef DOMRange)
ghcjs_dom_range_clone_range = undefined
#endif

rangeCloneRange :: (IsDOMRange self) => self -> IO (Maybe DOMRange)
rangeCloneRange self
  = fmap DOMRange . maybeJSNull <$>
      (ghcjs_dom_range_clone_range (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"toString\"]()"
        ghcjs_dom_range_to_string :: JSRef DOMRange -> IO JSString
#else
ghcjs_dom_range_to_string :: JSRef DOMRange -> IO JSString
ghcjs_dom_range_to_string = undefined
#endif

rangeToString ::
              (IsDOMRange self, FromJSString result) => self -> IO result
rangeToString self
  = fromJSString <$>
      (ghcjs_dom_range_to_string (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"detach\"]()"
        ghcjs_dom_range_detach :: JSRef DOMRange -> IO ()
#else
ghcjs_dom_range_detach :: JSRef DOMRange -> IO ()
ghcjs_dom_range_detach = undefined
#endif

rangeDetach :: (IsDOMRange self) => self -> IO ()
rangeDetach self
  = ghcjs_dom_range_detach (unDOMRange (toDOMRange self))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "$1[\"createContextualFragment\"]($2)"
        ghcjs_dom_range_create_contextual_fragment ::
        JSRef DOMRange -> JSString -> IO (JSRef DocumentFragment)
#else
ghcjs_dom_range_create_contextual_fragment ::
                                             JSRef DOMRange ->
                                               JSString -> IO (JSRef DocumentFragment)
ghcjs_dom_range_create_contextual_fragment = undefined
#endif

rangeCreateContextualFragment ::
                              (IsDOMRange self, ToJSString html) =>
                                self -> html -> IO (Maybe DocumentFragment)
rangeCreateContextualFragment self html
  = fmap DocumentFragment . maybeJSNull <$>
      (ghcjs_dom_range_create_contextual_fragment
         (unDOMRange (toDOMRange self))
         (toJSString html))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)"
        ghcjs_dom_range_intersects_node ::
        JSRef DOMRange -> JSRef Node -> IO Bool
#else
ghcjs_dom_range_intersects_node ::
                                  JSRef DOMRange -> JSRef Node -> IO Bool
ghcjs_dom_range_intersects_node = undefined
#endif

rangeIntersectsNode ::
                    (IsDOMRange self, IsNode refNode) =>
                      self -> Maybe refNode -> IO Bool
rangeIntersectsNode self refNode
  = ghcjs_dom_range_intersects_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"compareNode\"]($2)"
        ghcjs_dom_range_compare_node ::
        JSRef DOMRange -> JSRef Node -> IO Int
#else
ghcjs_dom_range_compare_node ::
                               JSRef DOMRange -> JSRef Node -> IO Int
ghcjs_dom_range_compare_node = undefined
#endif

rangeCompareNode ::
                 (IsDOMRange self, IsNode refNode) =>
                   self -> Maybe refNode -> IO Int
rangeCompareNode self refNode
  = ghcjs_dom_range_compare_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"comparePoint\"]($2, $3)"
        ghcjs_dom_range_compare_point ::
        JSRef DOMRange -> JSRef Node -> Int -> IO Int
#else
ghcjs_dom_range_compare_point ::
                                JSRef DOMRange -> JSRef Node -> Int -> IO Int
ghcjs_dom_range_compare_point = undefined
#endif

rangeComparePoint ::
                  (IsDOMRange self, IsNode refNode) =>
                    self -> Maybe refNode -> Int -> IO Int
rangeComparePoint self refNode offset
  = ghcjs_dom_range_compare_point (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_range_is_point_in_range ::
        JSRef DOMRange -> JSRef Node -> Int -> IO Bool
#else
ghcjs_dom_range_is_point_in_range ::
                                    JSRef DOMRange -> JSRef Node -> Int -> IO Bool
ghcjs_dom_range_is_point_in_range = undefined
#endif

rangeIsPointInRange ::
                    (IsDOMRange self, IsNode refNode) =>
                      self -> Maybe refNode -> Int -> IO Bool
rangeIsPointInRange self refNode offset
  = ghcjs_dom_range_is_point_in_range (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"expand\"]($2)"
        ghcjs_dom_range_expand :: JSRef DOMRange -> JSString -> IO ()
#else
ghcjs_dom_range_expand :: JSRef DOMRange -> JSString -> IO ()
ghcjs_dom_range_expand = undefined
#endif

rangeExpand ::
            (IsDOMRange self, ToJSString unit) => self -> unit -> IO ()
rangeExpand self unit
  = ghcjs_dom_range_expand (unDOMRange (toDOMRange self))
      (toJSString unit)
cSTART_TO_START = 0
cSTART_TO_END = 1
cEND_TO_END = 2
cEND_TO_START = 3
cNODE_BEFORE = 0
cNODE_AFTER = 1
cNODE_BEFORE_AND_AFTER = 2
cNODE_INSIDE = 3


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"startContainer\"]"
        ghcjs_dom_range_get_start_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else
ghcjs_dom_range_get_start_container ::
                                      JSRef DOMRange -> IO (JSRef Node)
ghcjs_dom_range_get_start_container = undefined
#endif

rangeGetStartContainer ::
                       (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetStartContainer self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_range_get_start_container
         (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"startOffset\"]"
        ghcjs_dom_range_get_start_offset :: JSRef DOMRange -> IO Int
#else
ghcjs_dom_range_get_start_offset :: JSRef DOMRange -> IO Int
ghcjs_dom_range_get_start_offset = undefined
#endif

rangeGetStartOffset :: (IsDOMRange self) => self -> IO Int
rangeGetStartOffset self
  = ghcjs_dom_range_get_start_offset (unDOMRange (toDOMRange self))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"endContainer\"]"
        ghcjs_dom_range_get_end_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else
ghcjs_dom_range_get_end_container ::
                                    JSRef DOMRange -> IO (JSRef Node)
ghcjs_dom_range_get_end_container = undefined
#endif

rangeGetEndContainer ::
                     (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetEndContainer self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_range_get_end_container (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"endOffset\"]"
        ghcjs_dom_range_get_end_offset :: JSRef DOMRange -> IO Int
#else
ghcjs_dom_range_get_end_offset :: JSRef DOMRange -> IO Int
ghcjs_dom_range_get_end_offset = undefined
#endif

rangeGetEndOffset :: (IsDOMRange self) => self -> IO Int
rangeGetEndOffset self
  = ghcjs_dom_range_get_end_offset (unDOMRange (toDOMRange self))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        ghcjs_dom_range_get_collapsed :: JSRef DOMRange -> IO Bool
#else
ghcjs_dom_range_get_collapsed :: JSRef DOMRange -> IO Bool
ghcjs_dom_range_get_collapsed = undefined
#endif

rangeGetCollapsed :: (IsDOMRange self) => self -> IO Bool
rangeGetCollapsed self
  = ghcjs_dom_range_get_collapsed (unDOMRange (toDOMRange self))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        ghcjs_dom_range_get_common_ancestor_container ::
        JSRef DOMRange -> IO (JSRef Node)
#else
ghcjs_dom_range_get_common_ancestor_container ::
                                                JSRef DOMRange -> IO (JSRef Node)
ghcjs_dom_range_get_common_ancestor_container = undefined
#endif

rangeGetCommonAncestorContainer ::
                                (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetCommonAncestorContainer self
  = fmap Node . maybeJSNull <$>
      (ghcjs_dom_range_get_common_ancestor_container
         (unDOMRange (toDOMRange self)))


#ifdef ghcjs_HOST_OS
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_range_get_text :: JSRef DOMRange -> IO JSString
#else
ghcjs_dom_range_get_text :: JSRef DOMRange -> IO JSString
ghcjs_dom_range_get_text = undefined
#endif

rangeGetText ::
             (IsDOMRange self, FromJSString result) => self -> IO result
rangeGetText self
  = fromJSString <$>
      (ghcjs_dom_range_get_text (unDOMRange (toDOMRange self)))
#else
module GHCJS.DOM.Range (
  module Graphics.UI.Gtk.WebKit.DOM.Range
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Range
#endif
