{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSelection
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
        js_getExtentOffset, getExtentOffset, DOMSelection,
        castToDOMSelection, gTypeDOMSelection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
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
        js_collapse :: JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
collapse ::
         (MonadIO m, IsNode node) =>
           DOMSelection -> Maybe node -> Int -> m ()
collapse self node index
  = liftIO
      (js_collapse (unDOMSelection self)
         (maybe jsNull (unNode . toNode) node)
         index)
 
foreign import javascript unsafe "$1[\"collapseToEnd\"]()"
        js_collapseToEnd :: JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
collapseToEnd :: (MonadIO m) => DOMSelection -> m ()
collapseToEnd self
  = liftIO (js_collapseToEnd (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"collapseToStart\"]()"
        js_collapseToStart :: JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
collapseToStart :: (MonadIO m) => DOMSelection -> m ()
collapseToStart self
  = liftIO (js_collapseToStart (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        js_deleteFromDocument :: JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
deleteFromDocument :: (MonadIO m) => DOMSelection -> m ()
deleteFromDocument self
  = liftIO (js_deleteFromDocument (unDOMSelection self))
 
foreign import javascript unsafe
        "($1[\"containsNode\"]($2,\n$3) ? 1 : 0)" js_containsNode ::
        JSRef DOMSelection -> JSRef Node -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode ::
             (MonadIO m, IsNode node) =>
               DOMSelection -> Maybe node -> Bool -> m Bool
containsNode self node allowPartial
  = liftIO
      (js_containsNode (unDOMSelection self)
         (maybe jsNull (unNode . toNode) node)
         allowPartial)
 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        js_selectAllChildren :: JSRef DOMSelection -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
selectAllChildren ::
                  (MonadIO m, IsNode node) => DOMSelection -> Maybe node -> m ()
selectAllChildren self node
  = liftIO
      (js_selectAllChildren (unDOMSelection self)
         (maybe jsNull (unNode . toNode) node))
 
foreign import javascript unsafe "$1[\"extend\"]($2, $3)" js_extend
        :: JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
extend ::
       (MonadIO m, IsNode node) =>
         DOMSelection -> Maybe node -> Int -> m ()
extend self node offset
  = liftIO
      (js_extend (unDOMSelection self)
         (maybe jsNull (unNode . toNode) node)
         offset)
 
foreign import javascript unsafe "$1[\"getRangeAt\"]($2)"
        js_getRangeAt :: JSRef DOMSelection -> Int -> IO (JSRef DOMRange)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt ::
           (MonadIO m) => DOMSelection -> Int -> m (Maybe DOMRange)
getRangeAt self index
  = liftIO
      ((js_getRangeAt (unDOMSelection self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        js_removeAllRanges :: JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
removeAllRanges :: (MonadIO m) => DOMSelection -> m ()
removeAllRanges self
  = liftIO (js_removeAllRanges (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"addRange\"]($2)" js_addRange
        :: JSRef DOMSelection -> JSRef DOMRange -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
addRange :: (MonadIO m) => DOMSelection -> Maybe DOMRange -> m ()
addRange self range
  = liftIO
      (js_addRange (unDOMSelection self) (maybe jsNull unDOMRange range))
 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        js_modify ::
        JSRef DOMSelection -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
modify ::
       (MonadIO m, ToJSString alter, ToJSString direction,
        ToJSString granularity) =>
         DOMSelection -> alter -> direction -> granularity -> m ()
modify self alter direction granularity
  = liftIO
      (js_modify (unDOMSelection self) (toJSString alter)
         (toJSString direction)
         (toJSString granularity))
 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)" js_setBaseAndExtent ::
        JSRef DOMSelection ->
          JSRef Node -> Int -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setBaseAndExtent Mozilla Selection.setBaseAndExtent documentation> 
setBaseAndExtent ::
                 (MonadIO m, IsNode baseNode, IsNode extentNode) =>
                   DOMSelection ->
                     Maybe baseNode -> Int -> Maybe extentNode -> Int -> m ()
setBaseAndExtent self baseNode baseOffset extentNode extentOffset
  = liftIO
      (js_setBaseAndExtent (unDOMSelection self)
         (maybe jsNull (unNode . toNode) baseNode)
         baseOffset
         (maybe jsNull (unNode . toNode) extentNode)
         extentOffset)
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        js_setPosition :: JSRef DOMSelection -> JSRef Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setPosition Mozilla Selection.setPosition documentation> 
setPosition ::
            (MonadIO m, IsNode node) =>
              DOMSelection -> Maybe node -> Int -> m ()
setPosition self node offset
  = liftIO
      (js_setPosition (unDOMSelection self)
         (maybe jsNull (unNode . toNode) node)
         offset)
 
foreign import javascript unsafe "$1[\"empty\"]()" js_empty ::
        JSRef DOMSelection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
empty :: (MonadIO m) => DOMSelection -> m ()
empty self = liftIO (js_empty (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        js_getAnchorNode :: JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNode :: (MonadIO m) => DOMSelection -> m (Maybe Node)
getAnchorNode self
  = liftIO ((js_getAnchorNode (unDOMSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        js_getAnchorOffset :: JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
getAnchorOffset :: (MonadIO m) => DOMSelection -> m Int
getAnchorOffset self
  = liftIO (js_getAnchorOffset (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"focusNode\"]"
        js_getFocusNode :: JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNode :: (MonadIO m) => DOMSelection -> m (Maybe Node)
getFocusNode self
  = liftIO ((js_getFocusNode (unDOMSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        js_getFocusOffset :: JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
getFocusOffset :: (MonadIO m) => DOMSelection -> m Int
getFocusOffset self
  = liftIO (js_getFocusOffset (unDOMSelection self))
 
foreign import javascript unsafe "($1[\"isCollapsed\"] ? 1 : 0)"
        js_getIsCollapsed :: JSRef DOMSelection -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
getIsCollapsed :: (MonadIO m) => DOMSelection -> m Bool
getIsCollapsed self
  = liftIO (js_getIsCollapsed (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        js_getRangeCount :: JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
getRangeCount :: (MonadIO m) => DOMSelection -> m Int
getRangeCount self
  = liftIO (js_getRangeCount (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"baseNode\"]" js_getBaseNode
        :: JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNode :: (MonadIO m) => DOMSelection -> m (Maybe Node)
getBaseNode self
  = liftIO ((js_getBaseNode (unDOMSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        js_getBaseOffset :: JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
getBaseOffset :: (MonadIO m) => DOMSelection -> m Int
getBaseOffset self
  = liftIO (js_getBaseOffset (unDOMSelection self))
 
foreign import javascript unsafe "$1[\"extentNode\"]"
        js_getExtentNode :: JSRef DOMSelection -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNode :: (MonadIO m) => DOMSelection -> m (Maybe Node)
getExtentNode self
  = liftIO ((js_getExtentNode (unDOMSelection self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        js_getExtentOffset :: JSRef DOMSelection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
getExtentOffset :: (MonadIO m) => DOMSelection -> m Int
getExtentOffset self
  = liftIO (js_getExtentOffset (unDOMSelection self))
#else
module GHCJS.DOM.DOMSelection (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSelection
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSelection
#endif
