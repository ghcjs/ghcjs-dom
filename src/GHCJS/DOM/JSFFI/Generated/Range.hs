{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Range
       (js_newRange, newRange, js_setStart, setStart, js_setEnd, setEnd,
        js_setStartBefore, setStartBefore, js_setStartAfter, setStartAfter,
        js_setEndBefore, setEndBefore, js_setEndAfter, setEndAfter,
        js_collapse, collapse, js_selectNode, selectNode,
        js_selectNodeContents, selectNodeContents,
        js_compareBoundaryPoints, compareBoundaryPoints, js_deleteContents,
        deleteContents, js_extractContents, extractContents,
        js_cloneContents, cloneContents, js_insertNode, insertNode,
        js_surroundContents, surroundContents, js_cloneRange, cloneRange,
        js_toString, toString, js_detach, detach,
        js_createContextualFragment, createContextualFragment,
        js_intersectsNode, intersectsNode, js_compareNode, compareNode,
        js_comparePoint, comparePoint, js_isPointInRange, isPointInRange,
        js_expand, expand, pattern START_TO_START, pattern START_TO_END,
        pattern END_TO_END, pattern END_TO_START, pattern NODE_BEFORE,
        pattern NODE_AFTER, pattern NODE_BEFORE_AND_AFTER,
        pattern NODE_INSIDE, js_getStartContainer, getStartContainer,
        js_getStartOffset, getStartOffset, js_getEndContainer,
        getEndContainer, js_getEndOffset, getEndOffset, js_getCollapsed,
        getCollapsed, js_getCommonAncestorContainer,
        getCommonAncestorContainer, js_getText, getText, Range,
        castToRange, gTypeRange)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"Range\"]()"
        js_newRange :: IO (JSRef Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range Mozilla Range documentation> 
newRange :: (MonadIO m) => m Range
newRange = liftIO (js_newRange >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"setStart\"]($2, $3)"
        js_setStart :: JSRef Range -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStart Mozilla Range.setStart documentation> 
setStart ::
         (MonadIO m, IsNode refNode) =>
           Range -> Maybe refNode -> Int -> m ()
setStart self refNode offset
  = liftIO
      (js_setStart (unRange self)
         (maybe jsNull (unNode . toNode) refNode)
         offset)
 
foreign import javascript unsafe "$1[\"setEnd\"]($2, $3)" js_setEnd
        :: JSRef Range -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEnd Mozilla Range.setEnd documentation> 
setEnd ::
       (MonadIO m, IsNode refNode) =>
         Range -> Maybe refNode -> Int -> m ()
setEnd self refNode offset
  = liftIO
      (js_setEnd (unRange self) (maybe jsNull (unNode . toNode) refNode)
         offset)
 
foreign import javascript unsafe "$1[\"setStartBefore\"]($2)"
        js_setStartBefore :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartBefore Mozilla Range.setStartBefore documentation> 
setStartBefore ::
               (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartBefore self refNode
  = liftIO
      (js_setStartBefore (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"setStartAfter\"]($2)"
        js_setStartAfter :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setStartAfter Mozilla Range.setStartAfter documentation> 
setStartAfter ::
              (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setStartAfter self refNode
  = liftIO
      (js_setStartAfter (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"setEndBefore\"]($2)"
        js_setEndBefore :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndBefore Mozilla Range.setEndBefore documentation> 
setEndBefore ::
             (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndBefore self refNode
  = liftIO
      (js_setEndBefore (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"setEndAfter\"]($2)"
        js_setEndAfter :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.setEndAfter Mozilla Range.setEndAfter documentation> 
setEndAfter ::
            (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
setEndAfter self refNode
  = liftIO
      (js_setEndAfter (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"collapse\"]($2)" js_collapse
        :: JSRef Range -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapse Mozilla Range.collapse documentation> 
collapse :: (MonadIO m) => Range -> Bool -> m ()
collapse self toStart = liftIO (js_collapse (unRange self) toStart)
 
foreign import javascript unsafe "$1[\"selectNode\"]($2)"
        js_selectNode :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNode Mozilla Range.selectNode documentation> 
selectNode ::
           (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNode self refNode
  = liftIO
      (js_selectNode (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"selectNodeContents\"]($2)"
        js_selectNodeContents :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.selectNodeContents Mozilla Range.selectNodeContents documentation> 
selectNodeContents ::
                   (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m ()
selectNodeContents self refNode
  = liftIO
      (js_selectNodeContents (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe
        "$1[\"compareBoundaryPoints\"]($2,\n$3)" js_compareBoundaryPoints
        :: JSRef Range -> Word -> JSRef Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareBoundaryPoints Mozilla Range.compareBoundaryPoints documentation> 
compareBoundaryPoints ::
                      (MonadIO m) => Range -> Word -> Maybe Range -> m Int
compareBoundaryPoints self how sourceRange
  = liftIO
      (js_compareBoundaryPoints (unRange self) how
         (maybe jsNull pToJSRef sourceRange))
 
foreign import javascript unsafe "$1[\"deleteContents\"]()"
        js_deleteContents :: JSRef Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.deleteContents Mozilla Range.deleteContents documentation> 
deleteContents :: (MonadIO m) => Range -> m ()
deleteContents self = liftIO (js_deleteContents (unRange self))
 
foreign import javascript unsafe "$1[\"extractContents\"]()"
        js_extractContents :: JSRef Range -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.extractContents Mozilla Range.extractContents documentation> 
extractContents ::
                (MonadIO m) => Range -> m (Maybe DocumentFragment)
extractContents self
  = liftIO ((js_extractContents (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cloneContents\"]()"
        js_cloneContents :: JSRef Range -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneContents Mozilla Range.cloneContents documentation> 
cloneContents :: (MonadIO m) => Range -> m (Maybe DocumentFragment)
cloneContents self
  = liftIO ((js_cloneContents (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"insertNode\"]($2)"
        js_insertNode :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.insertNode Mozilla Range.insertNode documentation> 
insertNode ::
           (MonadIO m, IsNode newNode) => Range -> Maybe newNode -> m ()
insertNode self newNode
  = liftIO
      (js_insertNode (unRange self)
         (maybe jsNull (unNode . toNode) newNode))
 
foreign import javascript unsafe "$1[\"surroundContents\"]($2)"
        js_surroundContents :: JSRef Range -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.surroundContents Mozilla Range.surroundContents documentation> 
surroundContents ::
                 (MonadIO m, IsNode newParent) => Range -> Maybe newParent -> m ()
surroundContents self newParent
  = liftIO
      (js_surroundContents (unRange self)
         (maybe jsNull (unNode . toNode) newParent))
 
foreign import javascript unsafe "$1[\"cloneRange\"]()"
        js_cloneRange :: JSRef Range -> IO (JSRef Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.cloneRange Mozilla Range.cloneRange documentation> 
cloneRange :: (MonadIO m) => Range -> m (Maybe Range)
cloneRange self
  = liftIO ((js_cloneRange (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: JSRef Range -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.toString Mozilla Range.toString documentation> 
toString :: (MonadIO m, FromJSString result) => Range -> m result
toString self
  = liftIO (fromJSString <$> (js_toString (unRange self)))
 
foreign import javascript unsafe "$1[\"detach\"]()" js_detach ::
        JSRef Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.detach Mozilla Range.detach documentation> 
detach :: (MonadIO m) => Range -> m ()
detach self = liftIO (js_detach (unRange self))
 
foreign import javascript unsafe
        "$1[\"createContextualFragment\"]($2)" js_createContextualFragment
        :: JSRef Range -> JSString -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.createContextualFragment Mozilla Range.createContextualFragment documentation> 
createContextualFragment ::
                         (MonadIO m, ToJSString html) =>
                           Range -> html -> m (Maybe DocumentFragment)
createContextualFragment self html
  = liftIO
      ((js_createContextualFragment (unRange self) (toJSString html)) >>=
         fromJSRef)
 
foreign import javascript unsafe
        "($1[\"intersectsNode\"]($2) ? 1 : 0)" js_intersectsNode ::
        JSRef Range -> JSRef Node -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.intersectsNode Mozilla Range.intersectsNode documentation> 
intersectsNode ::
               (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m Bool
intersectsNode self refNode
  = liftIO
      (js_intersectsNode (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"compareNode\"]($2)"
        js_compareNode :: JSRef Range -> JSRef Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.compareNode Mozilla Range.compareNode documentation> 
compareNode ::
            (MonadIO m, IsNode refNode) => Range -> Maybe refNode -> m Int
compareNode self refNode
  = liftIO
      (js_compareNode (unRange self)
         (maybe jsNull (unNode . toNode) refNode))
 
foreign import javascript unsafe "$1[\"comparePoint\"]($2, $3)"
        js_comparePoint :: JSRef Range -> JSRef Node -> Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.comparePoint Mozilla Range.comparePoint documentation> 
comparePoint ::
             (MonadIO m, IsNode refNode) =>
               Range -> Maybe refNode -> Int -> m Int
comparePoint self refNode offset
  = liftIO
      (js_comparePoint (unRange self)
         (maybe jsNull (unNode . toNode) refNode)
         offset)
 
foreign import javascript unsafe
        "($1[\"isPointInRange\"]($2,\n$3) ? 1 : 0)" js_isPointInRange ::
        JSRef Range -> JSRef Node -> Int -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.isPointInRange Mozilla Range.isPointInRange documentation> 
isPointInRange ::
               (MonadIO m, IsNode refNode) =>
                 Range -> Maybe refNode -> Int -> m Bool
isPointInRange self refNode offset
  = liftIO
      (js_isPointInRange (unRange self)
         (maybe jsNull (unNode . toNode) refNode)
         offset)
 
foreign import javascript unsafe "$1[\"expand\"]($2)" js_expand ::
        JSRef Range -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.expand Mozilla Range.expand documentation> 
expand :: (MonadIO m, ToJSString unit) => Range -> unit -> m ()
expand self unit
  = liftIO (js_expand (unRange self) (toJSString unit))
pattern START_TO_START = 0
pattern START_TO_END = 1
pattern END_TO_END = 2
pattern END_TO_START = 3
pattern NODE_BEFORE = 0
pattern NODE_AFTER = 1
pattern NODE_BEFORE_AND_AFTER = 2
pattern NODE_INSIDE = 3
 
foreign import javascript unsafe "$1[\"startContainer\"]"
        js_getStartContainer :: JSRef Range -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startContainer Mozilla Range.startContainer documentation> 
getStartContainer :: (MonadIO m) => Range -> m (Maybe Node)
getStartContainer self
  = liftIO ((js_getStartContainer (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset :: JSRef Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.startOffset Mozilla Range.startOffset documentation> 
getStartOffset :: (MonadIO m) => Range -> m Int
getStartOffset self = liftIO (js_getStartOffset (unRange self))
 
foreign import javascript unsafe "$1[\"endContainer\"]"
        js_getEndContainer :: JSRef Range -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endContainer Mozilla Range.endContainer documentation> 
getEndContainer :: (MonadIO m) => Range -> m (Maybe Node)
getEndContainer self
  = liftIO ((js_getEndContainer (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"endOffset\"]"
        js_getEndOffset :: JSRef Range -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.endOffset Mozilla Range.endOffset documentation> 
getEndOffset :: (MonadIO m) => Range -> m Int
getEndOffset self = liftIO (js_getEndOffset (unRange self))
 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        js_getCollapsed :: JSRef Range -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.collapsed Mozilla Range.collapsed documentation> 
getCollapsed :: (MonadIO m) => Range -> m Bool
getCollapsed self = liftIO (js_getCollapsed (unRange self))
 
foreign import javascript unsafe "$1[\"commonAncestorContainer\"]"
        js_getCommonAncestorContainer :: JSRef Range -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.commonAncestorContainer Mozilla Range.commonAncestorContainer documentation> 
getCommonAncestorContainer ::
                           (MonadIO m) => Range -> m (Maybe Node)
getCommonAncestorContainer self
  = liftIO
      ((js_getCommonAncestorContainer (unRange self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef Range -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Range.text Mozilla Range.text documentation> 
getText :: (MonadIO m, FromJSString result) => Range -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unRange self)))