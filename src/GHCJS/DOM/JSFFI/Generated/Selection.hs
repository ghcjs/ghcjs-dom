{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Selection
       (js_collapse, collapse, js_collapseToEnd, collapseToEnd,
        js_collapseToStart, collapseToStart, js_deleteFromDocument,
        deleteFromDocument, js_containsNode, containsNode,
        js_selectAllChildren, selectAllChildren, js_extend, extend,
        js_getRangeAt, getRangeAt, js_removeAllRanges, removeAllRanges,
        js_addRange, addRange, js_modify, modify, js_setBaseAndExtent,
        setBaseAndExtent, js_setPosition, setPosition, js_empty, empty,
        js_getAnchorNode, getAnchorNode, js_getAnchorOffset,
        getAnchorOffset, js_getFocusNode, getFocusNode, js_getFocusOffset,
        getFocusOffset, js_getIsCollapsed, getIsCollapsed,
        js_getRangeCount, getRangeCount, js_getBaseNode, getBaseNode,
        js_getBaseOffset, getBaseOffset, js_getExtentNode, getExtentNode,
        js_getExtentOffset, getExtentOffset, Selection, castToSelection,
        gTypeSelection)
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
 
foreign import javascript unsafe "$1[\"collapse\"]($2, $3)"
        js_collapse :: JSRef Selection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
collapse ::
         (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
collapse self node index
  = liftIO
      (js_collapse (unSelection self)
         (maybe jsNull (unNode . toNode) node)
         index)
 
foreign import javascript unsafe "$1[\"collapseToEnd\"]()"
        js_collapseToEnd :: JSRef Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
collapseToEnd :: (MonadIO m) => Selection -> m ()
collapseToEnd self = liftIO (js_collapseToEnd (unSelection self))
 
foreign import javascript unsafe "$1[\"collapseToStart\"]()"
        js_collapseToStart :: JSRef Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
collapseToStart :: (MonadIO m) => Selection -> m ()
collapseToStart self
  = liftIO (js_collapseToStart (unSelection self))
 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        js_deleteFromDocument :: JSRef Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
deleteFromDocument :: (MonadIO m) => Selection -> m ()
deleteFromDocument self
  = liftIO (js_deleteFromDocument (unSelection self))
 
foreign import javascript unsafe
        "($1[\"containsNode\"]($2,\n$3) ? 1 : 0)" js_containsNode ::
        JSRef Selection -> JSRef Node -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode ::
             (MonadIO m, IsNode node) =>
               Selection -> Maybe node -> Bool -> m Bool
containsNode self node allowPartial
  = liftIO
      (js_containsNode (unSelection self)
         (maybe jsNull (unNode . toNode) node)
         allowPartial)
 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        js_selectAllChildren :: JSRef Selection -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
selectAllChildren ::
                  (MonadIO m, IsNode node) => Selection -> Maybe node -> m ()
selectAllChildren self node
  = liftIO
      (js_selectAllChildren (unSelection self)
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "$1[\"extend\"]($2, $3)" js_extend
        :: JSRef Selection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
extend ::
       (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
extend self node offset
  = liftIO
      (js_extend (unSelection self) (maybe jsNull (unNode . toNode) node)
         offset)
 
foreign import javascript unsafe "$1[\"getRangeAt\"]($2)"
        js_getRangeAt :: JSRef Selection -> Int -> IO (JSRef Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt :: (MonadIO m) => Selection -> Int -> m (Maybe Range)
getRangeAt self index
  = liftIO ((js_getRangeAt (unSelection self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        js_removeAllRanges :: JSRef Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
removeAllRanges :: (MonadIO m) => Selection -> m ()
removeAllRanges self
  = liftIO (js_removeAllRanges (unSelection self))
 
foreign import javascript unsafe "$1[\"addRange\"]($2)" js_addRange
        :: JSRef Selection -> JSRef Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
addRange :: (MonadIO m) => Selection -> Maybe Range -> m ()
addRange self range
  = liftIO
      (js_addRange (unSelection self) (maybe jsNull pToJSRef range))
 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        js_modify ::
        JSRef Selection -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
modify ::
       (MonadIO m, ToJSString alter, ToJSString direction,
        ToJSString granularity) =>
         Selection -> alter -> direction -> granularity -> m ()
modify self alter direction granularity
  = liftIO
      (js_modify (unSelection self) (toJSString alter)
         (toJSString direction)
         (toJSString granularity))
 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)" js_setBaseAndExtent ::
        JSRef Selection -> JSRef Node -> Int -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setBaseAndExtent Mozilla Selection.setBaseAndExtent documentation> 
setBaseAndExtent ::
                 (MonadIO m, IsNode baseNode, IsNode extentNode) =>
                   Selection ->
                     Maybe baseNode -> Int -> Maybe extentNode -> Int -> m ()
setBaseAndExtent self baseNode baseOffset extentNode extentOffset
  = liftIO
      (js_setBaseAndExtent (unSelection self)
         (maybe jsNull (unNode . toNode) baseNode)
         baseOffset
         (maybe jsNull (unNode . toNode) extentNode)
         extentOffset)
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        js_setPosition :: JSRef Selection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setPosition Mozilla Selection.setPosition documentation> 
setPosition ::
            (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
setPosition self node offset
  = liftIO
      (js_setPosition (unSelection self)
         (maybe jsNull (unNode . toNode) node)
         offset)
 
foreign import javascript unsafe "$1[\"empty\"]()" js_empty ::
        JSRef Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
empty :: (MonadIO m) => Selection -> m ()
empty self = liftIO (js_empty (unSelection self))
 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        js_getAnchorNode :: JSRef Selection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNode :: (MonadIO m) => Selection -> m (Maybe Node)
getAnchorNode self
  = liftIO ((js_getAnchorNode (unSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        js_getAnchorOffset :: JSRef Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
getAnchorOffset :: (MonadIO m) => Selection -> m Int
getAnchorOffset self
  = liftIO (js_getAnchorOffset (unSelection self))
 
foreign import javascript unsafe "$1[\"focusNode\"]"
        js_getFocusNode :: JSRef Selection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNode :: (MonadIO m) => Selection -> m (Maybe Node)
getFocusNode self
  = liftIO ((js_getFocusNode (unSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        js_getFocusOffset :: JSRef Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
getFocusOffset :: (MonadIO m) => Selection -> m Int
getFocusOffset self = liftIO (js_getFocusOffset (unSelection self))
 
foreign import javascript unsafe "($1[\"isCollapsed\"] ? 1 : 0)"
        js_getIsCollapsed :: JSRef Selection -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
getIsCollapsed :: (MonadIO m) => Selection -> m Bool
getIsCollapsed self = liftIO (js_getIsCollapsed (unSelection self))
 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        js_getRangeCount :: JSRef Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
getRangeCount :: (MonadIO m) => Selection -> m Int
getRangeCount self = liftIO (js_getRangeCount (unSelection self))
 
foreign import javascript unsafe "$1[\"baseNode\"]" js_getBaseNode
        :: JSRef Selection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNode :: (MonadIO m) => Selection -> m (Maybe Node)
getBaseNode self
  = liftIO ((js_getBaseNode (unSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        js_getBaseOffset :: JSRef Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
getBaseOffset :: (MonadIO m) => Selection -> m Int
getBaseOffset self = liftIO (js_getBaseOffset (unSelection self))
 
foreign import javascript unsafe "$1[\"extentNode\"]"
        js_getExtentNode :: JSRef Selection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNode :: (MonadIO m) => Selection -> m (Maybe Node)
getExtentNode self
  = liftIO ((js_getExtentNode (unSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        js_getExtentOffset :: JSRef Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
getExtentOffset :: (MonadIO m) => Selection -> m Int
getExtentOffset self
  = liftIO (js_getExtentOffset (unSelection self))