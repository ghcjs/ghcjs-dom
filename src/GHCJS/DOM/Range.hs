{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Range
       (ghcjs_dom_range_new, rangeNew, ghcjs_dom_range_set_start,
        rangeSetStart, ghcjs_dom_range_set_end, rangeSetEnd,
        ghcjs_dom_range_set_start_before, rangeSetStartBefore,
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
        rangeGetText, DOMRange, IsDOMRange, castToDOMRange, gTypeDOMRange,
        toDOMRange)
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

 
foreign import javascript unsafe "new window[\"Range\"]()"
        ghcjs_dom_range_new :: IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation> 
rangeNew :: IO DOMRange
rangeNew = ghcjs_dom_range_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"setStart\"]($2, $3)"
        ghcjs_dom_range_set_start ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.start Mozilla Range.start documentation> 
rangeSetStart ::
              (IsDOMRange self, IsNode refNode) =>
                self -> Maybe refNode -> Int -> IO ()
rangeSetStart self refNode offset
  = ghcjs_dom_range_set_start (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset
 
foreign import javascript unsafe "$1[\"setEnd\"]($2, $3)"
        ghcjs_dom_range_set_end ::
        JSRef DOMRange -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.end Mozilla Range.end documentation> 
rangeSetEnd ::
            (IsDOMRange self, IsNode refNode) =>
              self -> Maybe refNode -> Int -> IO ()
rangeSetEnd self refNode offset
  = ghcjs_dom_range_set_end (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset
 
foreign import javascript unsafe "$1[\"setStartBefore\"]($2)"
        ghcjs_dom_range_set_start_before ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startBefore Mozilla Range.startBefore documentation> 
rangeSetStartBefore ::
                    (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetStartBefore self refNode
  = ghcjs_dom_range_set_start_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"setStartAfter\"]($2)"
        ghcjs_dom_range_set_start_after ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startAfter Mozilla Range.startAfter documentation> 
rangeSetStartAfter ::
                   (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetStartAfter self refNode
  = ghcjs_dom_range_set_start_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"setEndBefore\"]($2)"
        ghcjs_dom_range_set_end_before ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endBefore Mozilla Range.endBefore documentation> 
rangeSetEndBefore ::
                  (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetEndBefore self refNode
  = ghcjs_dom_range_set_end_before (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"setEndAfter\"]($2)"
        ghcjs_dom_range_set_end_after ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endAfter Mozilla Range.endAfter documentation> 
rangeSetEndAfter ::
                 (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSetEndAfter self refNode
  = ghcjs_dom_range_set_end_after (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"collapse\"]($2)"
        ghcjs_dom_range_collapse :: JSRef DOMRange -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapse Mozilla Range.collapse documentation> 
rangeCollapse :: (IsDOMRange self) => self -> Bool -> IO ()
rangeCollapse self toStart
  = ghcjs_dom_range_collapse (unDOMRange (toDOMRange self)) toStart
 
foreign import javascript unsafe "$1[\"selectNode\"]($2)"
        ghcjs_dom_range_select_node ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNode Mozilla Range.selectNode documentation> 
rangeSelectNode ::
                (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSelectNode self refNode
  = ghcjs_dom_range_select_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"selectNodeContents\"]($2)"
        ghcjs_dom_range_select_node_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNodeContents Mozilla Range.selectNodeContents documentation> 
rangeSelectNodeContents ::
                        (IsDOMRange self, IsNode refNode) => self -> Maybe refNode -> IO ()
rangeSelectNodeContents self refNode
  = ghcjs_dom_range_select_node_contents
      (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)"
        ghcjs_dom_range_compare_boundary_points ::
        JSRef DOMRange -> Word -> JSRef DOMRange -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
rangeCompareBoundaryPoints ::
                           (IsDOMRange self, IsDOMRange sourceRange) =>
                             self -> Word -> Maybe sourceRange -> IO Int
rangeCompareBoundaryPoints self how sourceRange
  = ghcjs_dom_range_compare_boundary_points
      (unDOMRange (toDOMRange self))
      how
      (maybe jsNull (unDOMRange . toDOMRange) sourceRange)
 
foreign import javascript unsafe "$1[\"deleteContents\"]()"
        ghcjs_dom_range_delete_contents :: JSRef DOMRange -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.deleteContents Mozilla Range.deleteContents documentation> 
rangeDeleteContents :: (IsDOMRange self) => self -> IO ()
rangeDeleteContents self
  = ghcjs_dom_range_delete_contents (unDOMRange (toDOMRange self))
 
foreign import javascript unsafe "$1[\"extractContents\"]()"
        ghcjs_dom_range_extract_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
rangeExtractContents ::
                     (IsDOMRange self) => self -> IO (Maybe DocumentFragment)
rangeExtractContents self
  = (ghcjs_dom_range_extract_contents (unDOMRange (toDOMRange self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cloneContents\"]()"
        ghcjs_dom_range_clone_contents ::
        JSRef DOMRange -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
rangeCloneContents ::
                   (IsDOMRange self) => self -> IO (Maybe DocumentFragment)
rangeCloneContents self
  = (ghcjs_dom_range_clone_contents (unDOMRange (toDOMRange self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"insertNode\"]($2)"
        ghcjs_dom_range_insert_node ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.insertNode Mozilla Range.insertNode documentation> 
rangeInsertNode ::
                (IsDOMRange self, IsNode newNode) => self -> Maybe newNode -> IO ()
rangeInsertNode self newNode
  = ghcjs_dom_range_insert_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newNode)
 
foreign import javascript unsafe "$1[\"surroundContents\"]($2)"
        ghcjs_dom_range_surround_contents ::
        JSRef DOMRange -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.surroundContents Mozilla Range.surroundContents documentation> 
rangeSurroundContents ::
                      (IsDOMRange self, IsNode newParent) =>
                        self -> Maybe newParent -> IO ()
rangeSurroundContents self newParent
  = ghcjs_dom_range_surround_contents (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) newParent)
 
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        ghcjs_dom_range_clone_range ::
        JSRef DOMRange -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
rangeCloneRange :: (IsDOMRange self) => self -> IO (Maybe DOMRange)
rangeCloneRange self
  = (ghcjs_dom_range_clone_range (unDOMRange (toDOMRange self))) >>=
      fromJSRef
 
foreign import javascript unsafe "$1[\"toString\"]()"
        ghcjs_dom_range_to_string :: JSRef DOMRange -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
rangeToString ::
              (IsDOMRange self, FromJSString result) => self -> IO result
rangeToString self
  = fromJSString <$>
      (ghcjs_dom_range_to_string (unDOMRange (toDOMRange self)))
 
foreign import javascript unsafe "$1[\"detach\"]()"
        ghcjs_dom_range_detach :: JSRef DOMRange -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.detach Mozilla Range.detach documentation> 
rangeDetach :: (IsDOMRange self) => self -> IO ()
rangeDetach self
  = ghcjs_dom_range_detach (unDOMRange (toDOMRange self))
 
foreign import javascript unsafe
        "$1[\"createContextualFragment\"]($2)"
        ghcjs_dom_range_create_contextual_fragment ::
        JSRef DOMRange -> JSString -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
rangeCreateContextualFragment ::
                              (IsDOMRange self, ToJSString html) =>
                                self -> html -> IO (Maybe DocumentFragment)
rangeCreateContextualFragment self html
  = (ghcjs_dom_range_create_contextual_fragment
       (unDOMRange (toDOMRange self))
       (toJSString html))
      >>= fromJSRef
 
foreign import javascript unsafe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)"
        ghcjs_dom_range_intersects_node ::
        JSRef DOMRange -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
rangeIntersectsNode ::
                    (IsDOMRange self, IsNode refNode) =>
                      self -> Maybe refNode -> IO Bool
rangeIntersectsNode self refNode
  = ghcjs_dom_range_intersects_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"compareNode\"]($2)"
        ghcjs_dom_range_compare_node ::
        JSRef DOMRange -> JSRef Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
rangeCompareNode ::
                 (IsDOMRange self, IsNode refNode) =>
                   self -> Maybe refNode -> IO Int
rangeCompareNode self refNode
  = ghcjs_dom_range_compare_node (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
 
foreign import javascript unsafe "$1[\"comparePoint\"]($2, $3)"
        ghcjs_dom_range_compare_point ::
        JSRef DOMRange -> JSRef Node -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
rangeComparePoint ::
                  (IsDOMRange self, IsNode refNode) =>
                    self -> Maybe refNode -> Int -> IO Int
rangeComparePoint self refNode offset
  = ghcjs_dom_range_compare_point (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset
 
foreign import javascript unsafe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_range_is_point_in_range ::
        JSRef DOMRange -> JSRef Node -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
rangeIsPointInRange ::
                    (IsDOMRange self, IsNode refNode) =>
                      self -> Maybe refNode -> Int -> IO Bool
rangeIsPointInRange self refNode offset
  = ghcjs_dom_range_is_point_in_range (unDOMRange (toDOMRange self))
      (maybe jsNull (unNode . toNode) refNode)
      offset
 
foreign import javascript unsafe "$1[\"expand\"]($2)"
        ghcjs_dom_range_expand :: JSRef DOMRange -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.expand Mozilla Range.expand documentation> 
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
 
foreign import javascript unsafe "$1[\"startContainer\"]"
        ghcjs_dom_range_get_start_container ::
        JSRef DOMRange -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
rangeGetStartContainer ::
                       (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetStartContainer self
  = (ghcjs_dom_range_get_start_container
       (unDOMRange (toDOMRange self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        ghcjs_dom_range_get_start_offset :: JSRef DOMRange -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startOffset Mozilla Range.startOffset documentation> 
rangeGetStartOffset :: (IsDOMRange self) => self -> IO Int
rangeGetStartOffset self
  = ghcjs_dom_range_get_start_offset (unDOMRange (toDOMRange self))
 
foreign import javascript unsafe "$1[\"endContainer\"]"
        ghcjs_dom_range_get_end_container ::
        JSRef DOMRange -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
rangeGetEndContainer ::
                     (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetEndContainer self
  = (ghcjs_dom_range_get_end_container
       (unDOMRange (toDOMRange self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"endOffset\"]"
        ghcjs_dom_range_get_end_offset :: JSRef DOMRange -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endOffset Mozilla Range.endOffset documentation> 
rangeGetEndOffset :: (IsDOMRange self) => self -> IO Int
rangeGetEndOffset self
  = ghcjs_dom_range_get_end_offset (unDOMRange (toDOMRange self))
 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        ghcjs_dom_range_get_collapsed :: JSRef DOMRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapsed Mozilla Range.collapsed documentation> 
rangeGetCollapsed :: (IsDOMRange self) => self -> IO Bool
rangeGetCollapsed self
  = ghcjs_dom_range_get_collapsed (unDOMRange (toDOMRange self))
 
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        ghcjs_dom_range_get_common_ancestor_container ::
        JSRef DOMRange -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
rangeGetCommonAncestorContainer ::
                                (IsDOMRange self) => self -> IO (Maybe Node)
rangeGetCommonAncestorContainer self
  = (ghcjs_dom_range_get_common_ancestor_container
       (unDOMRange (toDOMRange self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_range_get_text :: JSRef DOMRange -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.text Mozilla Range.text documentation> 
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
