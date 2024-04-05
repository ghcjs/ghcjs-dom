{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Range
       (js_newRange, newRange, js_setStart, setStart, js_setEnd, setEnd,
        js_setStartBefore, setStartBefore, js_setStartAfter, setStartAfter,
        js_setEndBefore, setEndBefore, js_setEndAfter, setEndAfter,
        js_collapse, collapse, js_selectNode, selectNode,
        js_selectNodeContents, selectNodeContents,
        js_compareBoundaryPoints, compareBoundaryPoints,
        compareBoundaryPoints_, js_deleteContents, deleteContents,
        js_extractContents, extractContents, extractContents_,
        js_cloneContents, cloneContents, cloneContents_, js_insertNode,
        insertNode, js_surroundContents, surroundContents, js_cloneRange,
        cloneRange, cloneRange_, js_detach, detach, js_isPointInRange,
        isPointInRange, isPointInRange_, js_comparePoint, comparePoint,
        comparePoint_, js_intersectsNode, intersectsNode, intersectsNode_,
        js_toString, toString, toString_, js_getClientRects,
        getClientRects, getClientRects_, js_getBoundingClientRect,
        getBoundingClientRect, getBoundingClientRect_,
        js_createContextualFragment, createContextualFragment,
        createContextualFragment_, js_expand, expand, js_compareNode,
        compareNode, compareNode_, pattern START_TO_START,
        pattern START_TO_END, pattern END_TO_END, pattern END_TO_START,
        pattern NODE_BEFORE, pattern NODE_AFTER,
        pattern NODE_BEFORE_AND_AFTER, pattern NODE_INSIDE,
        js_getStartContainer, getStartContainer, js_getStartOffset,
        getStartOffset, js_getEndContainer, getEndContainer,
        js_getEndOffset, getEndOffset, js_getCollapsed, getCollapsed,
        js_getCommonAncestorContainer, getCommonAncestorContainer,
        Range(..), gTypeRange)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "new window[\"Range\"]()"
        js_newRange :: IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation> 
newRange :: (MonadIO m) => m Range
newRange = liftIO (js_newRange)
 
foreign import javascript safe "$1[\"setStart\"]($2, $3)"
        js_setStart :: Range -> Node -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStart Mozilla Range.setStart documentation> 
setStart ::
         (MonadIO m, IsNode node) => Range -> node -> Word -> m ()
setStart self node offset
  = liftIO (js_setStart self (toNode node) offset)
 
foreign import javascript safe "$1[\"setEnd\"]($2, $3)" js_setEnd
        :: Range -> Node -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEnd Mozilla Range.setEnd documentation> 
setEnd :: (MonadIO m, IsNode node) => Range -> node -> Word -> m ()
setEnd self node offset
  = liftIO (js_setEnd self (toNode node) offset)
 
foreign import javascript safe "$1[\"setStartBefore\"]($2)"
        js_setStartBefore :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartBefore Mozilla Range.setStartBefore documentation> 
setStartBefore :: (MonadIO m, IsNode node) => Range -> node -> m ()
setStartBefore self node
  = liftIO (js_setStartBefore self (toNode node))
 
foreign import javascript safe "$1[\"setStartAfter\"]($2)"
        js_setStartAfter :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartAfter Mozilla Range.setStartAfter documentation> 
setStartAfter :: (MonadIO m, IsNode node) => Range -> node -> m ()
setStartAfter self node
  = liftIO (js_setStartAfter self (toNode node))
 
foreign import javascript safe "$1[\"setEndBefore\"]($2)"
        js_setEndBefore :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndBefore Mozilla Range.setEndBefore documentation> 
setEndBefore :: (MonadIO m, IsNode node) => Range -> node -> m ()
setEndBefore self node
  = liftIO (js_setEndBefore self (toNode node))
 
foreign import javascript safe "$1[\"setEndAfter\"]($2)"
        js_setEndAfter :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndAfter Mozilla Range.setEndAfter documentation> 
setEndAfter :: (MonadIO m, IsNode node) => Range -> node -> m ()
setEndAfter self node = liftIO (js_setEndAfter self (toNode node))
 
foreign import javascript unsafe "$1[\"collapse\"]($2)" js_collapse
        :: Range -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapse Mozilla Range.collapse documentation> 
collapse :: (MonadIO m) => Range -> Bool -> m ()
collapse self toStart = liftIO (js_collapse self toStart)
 
foreign import javascript safe "$1[\"selectNode\"]($2)"
        js_selectNode :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNode Mozilla Range.selectNode documentation> 
selectNode :: (MonadIO m, IsNode node) => Range -> node -> m ()
selectNode self node = liftIO (js_selectNode self (toNode node))
 
foreign import javascript safe "$1[\"selectNodeContents\"]($2)"
        js_selectNodeContents :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNodeContents Mozilla Range.selectNodeContents documentation> 
selectNodeContents ::
                   (MonadIO m, IsNode node) => Range -> node -> m ()
selectNodeContents self node
  = liftIO (js_selectNodeContents self (toNode node))
 
foreign import javascript safe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)" js_compareBoundaryPoints
        :: Range -> Word -> Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints ::
                      (MonadIO m) => Range -> Word -> Range -> m Int
compareBoundaryPoints self how sourceRange
  = liftIO (js_compareBoundaryPoints self how sourceRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints_ ::
                       (MonadIO m) => Range -> Word -> Range -> m ()
compareBoundaryPoints_ self how sourceRange
  = liftIO (void (js_compareBoundaryPoints self how sourceRange))
 
foreign import javascript safe "$1[\"deleteContents\"]()"
        js_deleteContents :: Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.deleteContents Mozilla Range.deleteContents documentation> 
deleteContents :: (MonadIO m) => Range -> m ()
deleteContents self = liftIO (js_deleteContents self)
 
foreign import javascript safe "$1[\"extractContents\"]()"
        js_extractContents :: Range -> IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents :: (MonadIO m) => Range -> m DocumentFragment
extractContents self = liftIO (js_extractContents self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents_ :: (MonadIO m) => Range -> m ()
extractContents_ self = liftIO (void (js_extractContents self))
 
foreign import javascript safe "$1[\"cloneContents\"]()"
        js_cloneContents :: Range -> IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents :: (MonadIO m) => Range -> m DocumentFragment
cloneContents self = liftIO (js_cloneContents self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents_ :: (MonadIO m) => Range -> m ()
cloneContents_ self = liftIO (void (js_cloneContents self))
 
foreign import javascript safe "$1[\"insertNode\"]($2)"
        js_insertNode :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.insertNode Mozilla Range.insertNode documentation> 
insertNode :: (MonadIO m, IsNode node) => Range -> node -> m ()
insertNode self node = liftIO (js_insertNode self (toNode node))
 
foreign import javascript safe "$1[\"surroundContents\"]($2)"
        js_surroundContents :: Range -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.surroundContents Mozilla Range.surroundContents documentation> 
surroundContents ::
                 (MonadIO m, IsNode newParent) => Range -> newParent -> m ()
surroundContents self newParent
  = liftIO (js_surroundContents self (toNode newParent))
 
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        js_cloneRange :: Range -> IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange :: (MonadIO m) => Range -> m Range
cloneRange self = liftIO (js_cloneRange self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange_ :: (MonadIO m) => Range -> m ()
cloneRange_ self = liftIO (void (js_cloneRange self))
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.detach Mozilla Range.detach documentation> 
detach :: (MonadIO m) => Range -> m ()
detach self = liftIO (js_detach self)
 
foreign import javascript safe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)" js_isPointInRange ::
        Range -> Node -> Word -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange ::
               (MonadIO m, IsNode node) => Range -> node -> Word -> m Bool
isPointInRange self node offset
  = liftIO (js_isPointInRange self (toNode node) offset)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange_ ::
                (MonadIO m, IsNode node) => Range -> node -> Word -> m ()
isPointInRange_ self node offset
  = liftIO (void (js_isPointInRange self (toNode node) offset))
 
foreign import javascript safe "$1[\"comparePoint\"]($2, $3)"
        js_comparePoint :: Range -> Node -> Word -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint ::
             (MonadIO m, IsNode node) => Range -> node -> Word -> m Int
comparePoint self node offset
  = liftIO (js_comparePoint self (toNode node) offset)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint_ ::
              (MonadIO m, IsNode node) => Range -> node -> Word -> m ()
comparePoint_ self node offset
  = liftIO (void (js_comparePoint self (toNode node) offset))
 
foreign import javascript safe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)" js_intersectsNode ::
        Range -> Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode ::
               (MonadIO m, IsNode node) => Range -> node -> m Bool
intersectsNode self node
  = liftIO (js_intersectsNode self (toNode node))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode_ ::
                (MonadIO m, IsNode node) => Range -> node -> m ()
intersectsNode_ self node
  = liftIO (void (js_intersectsNode self (toNode node)))
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: Range -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString :: (MonadIO m, FromJSString result) => Range -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString_ :: (MonadIO m) => Range -> m ()
toString_ self = liftIO (void (js_toString self))
 
foreign import javascript unsafe "$1[\"getClientRects\"]()"
        js_getClientRects :: Range -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRects :: (MonadIO m) => Range -> m [DOMRect]
getClientRects self
  = liftIO ((js_getClientRects self) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getClientRects Mozilla Range.getClientRects documentation> 
getClientRects_ :: (MonadIO m) => Range -> m ()
getClientRects_ self = liftIO (void (js_getClientRects self))
 
foreign import javascript unsafe "$1[\"getBoundingClientRect\"]()"
        js_getBoundingClientRect :: Range -> IO DOMRect

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRect :: (MonadIO m) => Range -> m DOMRect
getBoundingClientRect self = liftIO (js_getBoundingClientRect self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.getBoundingClientRect Mozilla Range.getBoundingClientRect documentation> 
getBoundingClientRect_ :: (MonadIO m) => Range -> m ()
getBoundingClientRect_ self
  = liftIO (void (js_getBoundingClientRect self))
 
foreign import javascript safe
        "$1[\"createContextualFragment\"]($2)" js_createContextualFragment
        :: Range -> JSString -> IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment ::
                         (MonadIO m, ToJSString fragment) =>
                           Range -> fragment -> m DocumentFragment
createContextualFragment self fragment
  = liftIO (js_createContextualFragment self (toJSString fragment))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment_ ::
                          (MonadIO m, ToJSString fragment) => Range -> fragment -> m ()
createContextualFragment_ self fragment
  = liftIO
      (void (js_createContextualFragment self (toJSString fragment)))
 
foreign import javascript safe "$1[\"expand\"]($2)" js_expand ::
        Range -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.expand Mozilla Range.expand documentation> 
expand ::
       (MonadIO m, ToJSString unit) => Range -> Maybe unit -> m ()
expand self unit
  = liftIO (js_expand self (toOptionalJSString unit))
 
foreign import javascript safe "$1[\"compareNode\"]($2)"
        js_compareNode :: Range -> Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode :: (MonadIO m, IsNode node) => Range -> node -> m Int
compareNode self node = liftIO (js_compareNode self (toNode node))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode_ :: (MonadIO m, IsNode node) => Range -> node -> m ()
compareNode_ self node
  = liftIO (void (js_compareNode self (toNode node)))
pattern START_TO_START = 0
pattern START_TO_END = 1
pattern END_TO_END = 2
pattern END_TO_START = 3
pattern NODE_BEFORE = 0
pattern NODE_AFTER = 1
pattern NODE_BEFORE_AND_AFTER = 2
pattern NODE_INSIDE = 3
 
foreign import javascript unsafe "$1[\"startContainer\"]"
        js_getStartContainer :: Range -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainer :: (MonadIO m) => Range -> m Node
getStartContainer self = liftIO (js_getStartContainer self)
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset :: Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startOffset Mozilla Range.startOffset documentation> 
getStartOffset :: (MonadIO m) => Range -> m Int
getStartOffset self = liftIO (js_getStartOffset self)
 
foreign import javascript unsafe "$1[\"endContainer\"]"
        js_getEndContainer :: Range -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainer :: (MonadIO m) => Range -> m Node
getEndContainer self = liftIO (js_getEndContainer self)
 
foreign import javascript unsafe "$1[\"endOffset\"]"
        js_getEndOffset :: Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endOffset Mozilla Range.endOffset documentation> 
getEndOffset :: (MonadIO m) => Range -> m Int
getEndOffset self = liftIO (js_getEndOffset self)
 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        js_getCollapsed :: Range -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapsed Mozilla Range.collapsed documentation> 
getCollapsed :: (MonadIO m) => Range -> m Bool
getCollapsed self = liftIO (js_getCollapsed self)
 
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        js_getCommonAncestorContainer :: Range -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainer :: (MonadIO m) => Range -> m Node
getCommonAncestorContainer self
  = liftIO (js_getCommonAncestorContainer self)