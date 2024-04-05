{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Selection
       (js_collapse, collapse, js_collapseToEnd, collapseToEnd,
        js_collapseToStart, collapseToStart, js_deleteFromDocument,
        deleteFromDocument, js_containsNode, containsNode, containsNode_,
        js_selectAllChildren, selectAllChildren, js_extend, extend,
        js_getRangeAt, getRangeAt, getRangeAt_, js_removeAllRanges,
        removeAllRanges, js_addRange, addRange, js_toString, toString,
        toString_, js_setBaseAndExtent, setBaseAndExtent, js_setPosition,
        setPosition, js_empty, empty, js_modify, modify, js_getAnchorNode,
        getAnchorNode, getAnchorNodeUnsafe, getAnchorNodeUnchecked,
        js_getAnchorOffset, getAnchorOffset, js_getFocusNode, getFocusNode,
        getFocusNodeUnsafe, getFocusNodeUnchecked, js_getFocusOffset,
        getFocusOffset, js_getIsCollapsed, getIsCollapsed,
        js_getRangeCount, getRangeCount, js_getType, getType,
        js_getBaseNode, getBaseNode, getBaseNodeUnsafe,
        getBaseNodeUnchecked, js_getBaseOffset, getBaseOffset,
        js_getExtentNode, getExtentNode, getExtentNodeUnsafe,
        getExtentNodeUnchecked, js_getExtentOffset, getExtentOffset,
        Selection(..), gTypeSelection)
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
 
foreign import javascript unsafe "$1[\"collapse\"]($2, $3)"
        js_collapse :: Selection -> Optional Node -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
collapse ::
         (MonadIO m, IsNode node) =>
           Selection -> Maybe node -> Maybe Word -> m ()
collapse self node offset
  = liftIO
      (js_collapse self (maybeToOptional (fmap toNode node))
         (maybeToOptional offset))
 
foreign import javascript safe "$1[\"collapseToEnd\"]()"
        js_collapseToEnd :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
collapseToEnd :: (MonadIO m) => Selection -> m ()
collapseToEnd self = liftIO (js_collapseToEnd self)
 
foreign import javascript safe "$1[\"collapseToStart\"]()"
        js_collapseToStart :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
collapseToStart :: (MonadIO m) => Selection -> m ()
collapseToStart self = liftIO (js_collapseToStart self)
 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        js_deleteFromDocument :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
deleteFromDocument :: (MonadIO m) => Selection -> m ()
deleteFromDocument self = liftIO (js_deleteFromDocument self)
 
foreign import javascript unsafe
        "($1[\"containsNode\"]($2,\n$3) ? 1 : 0)" js_containsNode ::
        Selection -> Node -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode ::
             (MonadIO m, IsNode node) => Selection -> node -> Bool -> m Bool
containsNode self node allowPartial
  = liftIO (js_containsNode self (toNode node) allowPartial)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode_ ::
              (MonadIO m, IsNode node) => Selection -> node -> Bool -> m ()
containsNode_ self node allowPartial
  = liftIO (void (js_containsNode self (toNode node) allowPartial))
 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        js_selectAllChildren :: Selection -> Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
selectAllChildren ::
                  (MonadIO m, IsNode node) => Selection -> node -> m ()
selectAllChildren self node
  = liftIO (js_selectAllChildren self (toNode node))
 
foreign import javascript safe "$1[\"extend\"]($2, $3)" js_extend
        :: Selection -> Node -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
extend ::
       (MonadIO m, IsNode node) => Selection -> node -> Maybe Word -> m ()
extend self node offset
  = liftIO (js_extend self (toNode node) (maybeToOptional offset))
 
foreign import javascript safe "$1[\"getRangeAt\"]($2)"
        js_getRangeAt :: Selection -> Word -> IO Range

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt :: (MonadIO m) => Selection -> Word -> m Range
getRangeAt self index = liftIO (js_getRangeAt self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt_ :: (MonadIO m) => Selection -> Word -> m ()
getRangeAt_ self index = liftIO (void (js_getRangeAt self index))
 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        js_removeAllRanges :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
removeAllRanges :: (MonadIO m) => Selection -> m ()
removeAllRanges self = liftIO (js_removeAllRanges self)
 
foreign import javascript unsafe "$1[\"addRange\"]($2)" js_addRange
        :: Selection -> Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
addRange :: (MonadIO m) => Selection -> Range -> m ()
addRange self range = liftIO (js_addRange self range)
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: Selection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => Selection -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString_ :: (MonadIO m) => Selection -> m ()
toString_ self = liftIO (void (js_toString self))
 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)" js_setBaseAndExtent ::
        Selection ->
          Optional Node -> Word -> Optional Node -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setBaseAndExtent Mozilla Selection.setBaseAndExtent documentation> 
setBaseAndExtent ::
                 (MonadIO m, IsNode baseNode, IsNode extentNode) =>
                   Selection ->
                     Maybe baseNode -> Word -> Maybe extentNode -> Word -> m ()
setBaseAndExtent self baseNode baseOffset extentNode extentOffset
  = liftIO
      (js_setBaseAndExtent self (maybeToOptional (fmap toNode baseNode))
         baseOffset
         (maybeToOptional (fmap toNode extentNode))
         extentOffset)
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        js_setPosition ::
        Selection -> Optional Node -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setPosition Mozilla Selection.setPosition documentation> 
setPosition ::
            (MonadIO m, IsNode node) =>
              Selection -> Maybe node -> Maybe Word -> m ()
setPosition self node offset
  = liftIO
      (js_setPosition self (maybeToOptional (fmap toNode node))
         (maybeToOptional offset))
 
foreign import javascript unsafe "$1[\"empty\"]()" js_empty ::
        Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
empty :: (MonadIO m) => Selection -> m ()
empty self = liftIO (js_empty self)
 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        js_modify ::
        Selection ->
          Optional JSString ->
            Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
modify ::
       (MonadIO m, ToJSString alter, ToJSString direction,
        ToJSString granularity) =>
         Selection ->
           Maybe alter -> Maybe direction -> Maybe granularity -> m ()
modify self alter direction granularity
  = liftIO
      (js_modify self (toOptionalJSString alter)
         (toOptionalJSString direction)
         (toOptionalJSString granularity))
 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        js_getAnchorNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNode :: (MonadIO m) => Selection -> m (Maybe Node)
getAnchorNode self
  = liftIO (nullableToMaybe <$> (js_getAnchorNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnsafe ::
                    (MonadIO m, HasCallStack) => Selection -> m Node
getAnchorNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnchorNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnchecked :: (MonadIO m) => Selection -> m Node
getAnchorNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnchorNode self))
 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        js_getAnchorOffset :: Selection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
getAnchorOffset :: (MonadIO m) => Selection -> m Word
getAnchorOffset self = liftIO (js_getAnchorOffset self)
 
foreign import javascript unsafe "$1[\"focusNode\"]"
        js_getFocusNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNode :: (MonadIO m) => Selection -> m (Maybe Node)
getFocusNode self
  = liftIO (nullableToMaybe <$> (js_getFocusNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnsafe ::
                   (MonadIO m, HasCallStack) => Selection -> m Node
getFocusNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFocusNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnchecked :: (MonadIO m) => Selection -> m Node
getFocusNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFocusNode self))
 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        js_getFocusOffset :: Selection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
getFocusOffset :: (MonadIO m) => Selection -> m Word
getFocusOffset self = liftIO (js_getFocusOffset self)
 
foreign import javascript unsafe "($1[\"isCollapsed\"] ? 1 : 0)"
        js_getIsCollapsed :: Selection -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
getIsCollapsed :: (MonadIO m) => Selection -> m Bool
getIsCollapsed self = liftIO (js_getIsCollapsed self)
 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        js_getRangeCount :: Selection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
getRangeCount :: (MonadIO m) => Selection -> m Word
getRangeCount self = liftIO (js_getRangeCount self)
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Selection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.type Mozilla Selection.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => Selection -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"baseNode\"]" js_getBaseNode
        :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNode :: (MonadIO m) => Selection -> m (Maybe Node)
getBaseNode self
  = liftIO (nullableToMaybe <$> (js_getBaseNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnsafe ::
                  (MonadIO m, HasCallStack) => Selection -> m Node
getBaseNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnchecked :: (MonadIO m) => Selection -> m Node
getBaseNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseNode self))
 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        js_getBaseOffset :: Selection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
getBaseOffset :: (MonadIO m) => Selection -> m Word
getBaseOffset self = liftIO (js_getBaseOffset self)
 
foreign import javascript unsafe "$1[\"extentNode\"]"
        js_getExtentNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNode :: (MonadIO m) => Selection -> m (Maybe Node)
getExtentNode self
  = liftIO (nullableToMaybe <$> (js_getExtentNode self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnsafe ::
                    (MonadIO m, HasCallStack) => Selection -> m Node
getExtentNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getExtentNode self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnchecked :: (MonadIO m) => Selection -> m Node
getExtentNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getExtentNode self))
 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        js_getExtentOffset :: Selection -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
getExtentOffset :: (MonadIO m) => Selection -> m Word
getExtentOffset self = liftIO (js_getExtentOffset self)