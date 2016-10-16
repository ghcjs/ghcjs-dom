{-# LANGUAGE CPP #-}
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
        js_getRangeAt, getRangeAt, getRangeAt_, getRangeAtUnsafe,
        getRangeAtUnchecked, js_removeAllRanges, removeAllRanges,
        js_addRange, addRange, js_toString, toString, toString_, js_modify,
        modify, js_setBaseAndExtent, setBaseAndExtent, js_setPosition,
        setPosition, js_empty, empty, js_getAnchorNode, getAnchorNode,
        getAnchorNodeUnsafe, getAnchorNodeUnchecked, js_getAnchorOffset,
        getAnchorOffset, js_getFocusNode, getFocusNode, getFocusNodeUnsafe,
        getFocusNodeUnchecked, js_getFocusOffset, getFocusOffset,
        js_getIsCollapsed, getIsCollapsed, js_getRangeCount, getRangeCount,
        js_getBaseNode, getBaseNode, getBaseNodeUnsafe,
        getBaseNodeUnchecked, js_getBaseOffset, getBaseOffset,
        js_getExtentNode, getExtentNode, getExtentNodeUnsafe,
        getExtentNodeUnchecked, js_getExtentOffset, getExtentOffset,
        js_getType, getType, Selection(..), gTypeSelection)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"collapse\"]($2, $3)"
        js_collapse :: Selection -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapse Mozilla Selection.collapse documentation> 
collapse ::
         (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
collapse self node index
  = liftIO
      (js_collapse (self) (maybeToNullable (fmap toNode node)) index)
 
foreign import javascript unsafe "$1[\"collapseToEnd\"]()"
        js_collapseToEnd :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToEnd Mozilla Selection.collapseToEnd documentation> 
collapseToEnd :: (MonadIO m) => Selection -> m ()
collapseToEnd self = liftIO (js_collapseToEnd (self))
 
foreign import javascript unsafe "$1[\"collapseToStart\"]()"
        js_collapseToStart :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.collapseToStart Mozilla Selection.collapseToStart documentation> 
collapseToStart :: (MonadIO m) => Selection -> m ()
collapseToStart self = liftIO (js_collapseToStart (self))
 
foreign import javascript unsafe "$1[\"deleteFromDocument\"]()"
        js_deleteFromDocument :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.deleteFromDocument Mozilla Selection.deleteFromDocument documentation> 
deleteFromDocument :: (MonadIO m) => Selection -> m ()
deleteFromDocument self = liftIO (js_deleteFromDocument (self))
 
foreign import javascript unsafe
        "($1[\"containsNode\"]($2,\n$3) ? 1 : 0)" js_containsNode ::
        Selection -> Nullable Node -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode ::
             (MonadIO m, IsNode node) =>
               Selection -> Maybe node -> Bool -> m Bool
containsNode self node allowPartial
  = liftIO
      (js_containsNode (self) (maybeToNullable (fmap toNode node))
         allowPartial)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.containsNode Mozilla Selection.containsNode documentation> 
containsNode_ ::
              (MonadIO m, IsNode node) => Selection -> Maybe node -> Bool -> m ()
containsNode_ self node allowPartial
  = liftIO
      (void
         (js_containsNode (self) (maybeToNullable (fmap toNode node))
            allowPartial))
 
foreign import javascript unsafe "$1[\"selectAllChildren\"]($2)"
        js_selectAllChildren :: Selection -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.selectAllChildren Mozilla Selection.selectAllChildren documentation> 
selectAllChildren ::
                  (MonadIO m, IsNode node) => Selection -> Maybe node -> m ()
selectAllChildren self node
  = liftIO
      (js_selectAllChildren (self) (maybeToNullable (fmap toNode node)))
 
foreign import javascript unsafe "$1[\"extend\"]($2, $3)" js_extend
        :: Selection -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extend Mozilla Selection.extend documentation> 
extend ::
       (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
extend self node offset
  = liftIO
      (js_extend (self) (maybeToNullable (fmap toNode node)) offset)
 
foreign import javascript unsafe "$1[\"getRangeAt\"]($2)"
        js_getRangeAt :: Selection -> Int -> IO (Nullable Range)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt :: (MonadIO m) => Selection -> Int -> m (Maybe Range)
getRangeAt self index
  = liftIO (nullableToMaybe <$> (js_getRangeAt (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAt_ :: (MonadIO m) => Selection -> Int -> m ()
getRangeAt_ self index = liftIO (void (js_getRangeAt (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAtUnsafe ::
                 (MonadIO m, HasCallStack) => Selection -> Int -> m Range
getRangeAtUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_getRangeAt (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.getRangeAt Mozilla Selection.getRangeAt documentation> 
getRangeAtUnchecked :: (MonadIO m) => Selection -> Int -> m Range
getRangeAtUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_getRangeAt (self) index))
 
foreign import javascript unsafe "$1[\"removeAllRanges\"]()"
        js_removeAllRanges :: Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.removeAllRanges Mozilla Selection.removeAllRanges documentation> 
removeAllRanges :: (MonadIO m) => Selection -> m ()
removeAllRanges self = liftIO (js_removeAllRanges (self))
 
foreign import javascript unsafe "$1[\"addRange\"]($2)" js_addRange
        :: Selection -> Nullable Range -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.addRange Mozilla Selection.addRange documentation> 
addRange :: (MonadIO m) => Selection -> Maybe Range -> m ()
addRange self range
  = liftIO (js_addRange (self) (maybeToNullable range))
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: Selection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => Selection -> m result
toString self = liftIO (fromJSString <$> (js_toString (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.toString Mozilla Selection.toString documentation> 
toString_ :: (MonadIO m) => Selection -> m ()
toString_ self = liftIO (void (js_toString (self)))
 
foreign import javascript unsafe "$1[\"modify\"]($2, $3, $4)"
        js_modify :: Selection -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.modify Mozilla Selection.modify documentation> 
modify ::
       (MonadIO m, ToJSString alter, ToJSString direction,
        ToJSString granularity) =>
         Selection -> alter -> direction -> granularity -> m ()
modify self alter direction granularity
  = liftIO
      (js_modify (self) (toJSString alter) (toJSString direction)
         (toJSString granularity))
 
foreign import javascript unsafe
        "$1[\"setBaseAndExtent\"]($2, $3,\n$4, $5)" js_setBaseAndExtent ::
        Selection -> Nullable Node -> Int -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setBaseAndExtent Mozilla Selection.setBaseAndExtent documentation> 
setBaseAndExtent ::
                 (MonadIO m, IsNode baseNode, IsNode extentNode) =>
                   Selection ->
                     Maybe baseNode -> Int -> Maybe extentNode -> Int -> m ()
setBaseAndExtent self baseNode baseOffset extentNode extentOffset
  = liftIO
      (js_setBaseAndExtent (self)
         (maybeToNullable (fmap toNode baseNode))
         baseOffset
         (maybeToNullable (fmap toNode extentNode))
         extentOffset)
 
foreign import javascript unsafe "$1[\"setPosition\"]($2, $3)"
        js_setPosition :: Selection -> Nullable Node -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.setPosition Mozilla Selection.setPosition documentation> 
setPosition ::
            (MonadIO m, IsNode node) => Selection -> Maybe node -> Int -> m ()
setPosition self node offset
  = liftIO
      (js_setPosition (self) (maybeToNullable (fmap toNode node)) offset)
 
foreign import javascript unsafe "$1[\"empty\"]()" js_empty ::
        Selection -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.empty Mozilla Selection.empty documentation> 
empty :: (MonadIO m) => Selection -> m ()
empty self = liftIO (js_empty (self))
 
foreign import javascript unsafe "$1[\"anchorNode\"]"
        js_getAnchorNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNode :: (MonadIO m) => Selection -> m (Maybe Node)
getAnchorNode self
  = liftIO (nullableToMaybe <$> (js_getAnchorNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnsafe ::
                    (MonadIO m, HasCallStack) => Selection -> m Node
getAnchorNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAnchorNode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorNode Mozilla Selection.anchorNode documentation> 
getAnchorNodeUnchecked :: (MonadIO m) => Selection -> m Node
getAnchorNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAnchorNode (self)))
 
foreign import javascript unsafe "$1[\"anchorOffset\"]"
        js_getAnchorOffset :: Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.anchorOffset Mozilla Selection.anchorOffset documentation> 
getAnchorOffset :: (MonadIO m) => Selection -> m Int
getAnchorOffset self = liftIO (js_getAnchorOffset (self))
 
foreign import javascript unsafe "$1[\"focusNode\"]"
        js_getFocusNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNode :: (MonadIO m) => Selection -> m (Maybe Node)
getFocusNode self
  = liftIO (nullableToMaybe <$> (js_getFocusNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnsafe ::
                   (MonadIO m, HasCallStack) => Selection -> m Node
getFocusNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFocusNode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusNode Mozilla Selection.focusNode documentation> 
getFocusNodeUnchecked :: (MonadIO m) => Selection -> m Node
getFocusNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFocusNode (self)))
 
foreign import javascript unsafe "$1[\"focusOffset\"]"
        js_getFocusOffset :: Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.focusOffset Mozilla Selection.focusOffset documentation> 
getFocusOffset :: (MonadIO m) => Selection -> m Int
getFocusOffset self = liftIO (js_getFocusOffset (self))
 
foreign import javascript unsafe "($1[\"isCollapsed\"] ? 1 : 0)"
        js_getIsCollapsed :: Selection -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.isCollapsed Mozilla Selection.isCollapsed documentation> 
getIsCollapsed :: (MonadIO m) => Selection -> m Bool
getIsCollapsed self = liftIO (js_getIsCollapsed (self))
 
foreign import javascript unsafe "$1[\"rangeCount\"]"
        js_getRangeCount :: Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.rangeCount Mozilla Selection.rangeCount documentation> 
getRangeCount :: (MonadIO m) => Selection -> m Int
getRangeCount self = liftIO (js_getRangeCount (self))
 
foreign import javascript unsafe "$1[\"baseNode\"]" js_getBaseNode
        :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNode :: (MonadIO m) => Selection -> m (Maybe Node)
getBaseNode self
  = liftIO (nullableToMaybe <$> (js_getBaseNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnsafe ::
                  (MonadIO m, HasCallStack) => Selection -> m Node
getBaseNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBaseNode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseNode Mozilla Selection.baseNode documentation> 
getBaseNodeUnchecked :: (MonadIO m) => Selection -> m Node
getBaseNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBaseNode (self)))
 
foreign import javascript unsafe "$1[\"baseOffset\"]"
        js_getBaseOffset :: Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.baseOffset Mozilla Selection.baseOffset documentation> 
getBaseOffset :: (MonadIO m) => Selection -> m Int
getBaseOffset self = liftIO (js_getBaseOffset (self))
 
foreign import javascript unsafe "$1[\"extentNode\"]"
        js_getExtentNode :: Selection -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNode :: (MonadIO m) => Selection -> m (Maybe Node)
getExtentNode self
  = liftIO (nullableToMaybe <$> (js_getExtentNode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnsafe ::
                    (MonadIO m, HasCallStack) => Selection -> m Node
getExtentNodeUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getExtentNode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentNode Mozilla Selection.extentNode documentation> 
getExtentNodeUnchecked :: (MonadIO m) => Selection -> m Node
getExtentNodeUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getExtentNode (self)))
 
foreign import javascript unsafe "$1[\"extentOffset\"]"
        js_getExtentOffset :: Selection -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.extentOffset Mozilla Selection.extentOffset documentation> 
getExtentOffset :: (MonadIO m) => Selection -> m Int
getExtentOffset self = liftIO (js_getExtentOffset (self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Selection -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Selection.type Mozilla Selection.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => Selection -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))