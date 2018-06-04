{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableElement
       (js_createTHead, createTHead, createTHead_, js_deleteTHead,
        deleteTHead, js_createTFoot, createTFoot, createTFoot_,
        js_deleteTFoot, deleteTFoot, js_createTBody, createTBody,
        createTBody_, js_createCaption, createCaption, createCaption_,
        js_deleteCaption, deleteCaption, js_insertRow, insertRow,
        insertRow_, js_deleteRow, deleteRow, js_setCaption, setCaption,
        js_getCaption, getCaption, getCaptionUnsafe, getCaptionUnchecked,
        js_setTHead, setTHead, js_getTHead, getTHead, getTHeadUnsafe,
        getTHeadUnchecked, js_setTFoot, setTFoot, js_getTFoot, getTFoot,
        getTFootUnsafe, getTFootUnchecked, js_getRows, getRows,
        js_getTBodies, getTBodies, js_setAlign, setAlign, js_getAlign,
        getAlign, js_setBgColor, setBgColor, js_getBgColor, getBgColor,
        js_setBorder, setBorder, js_getBorder, getBorder,
        js_setCellPadding, setCellPadding, js_getCellPadding,
        getCellPadding, js_setCellSpacing, setCellSpacing,
        js_getCellSpacing, getCellSpacing, js_setFrame, setFrame,
        js_getFrame, getFrame, js_setRules, setRules, js_getRules,
        getRules, js_setSummary, setSummary, js_getSummary, getSummary,
        js_setWidth, setWidth, js_getWidth, getWidth, HTMLTableElement(..),
        gTypeHTMLTableElement)
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
 
foreign import javascript unsafe "$1[\"createTHead\"]()"
        js_createTHead :: HTMLTableElement -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead :: (MonadIO m) => HTMLTableElement -> m HTMLElement
createTHead self = liftIO (js_createTHead self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead_ :: (MonadIO m) => HTMLTableElement -> m ()
createTHead_ self = liftIO (void (js_createTHead self))
 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        js_deleteTHead :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
deleteTHead :: (MonadIO m) => HTMLTableElement -> m ()
deleteTHead self = liftIO (js_deleteTHead self)
 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        js_createTFoot :: HTMLTableElement -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot :: (MonadIO m) => HTMLTableElement -> m HTMLElement
createTFoot self = liftIO (js_createTFoot self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot_ :: (MonadIO m) => HTMLTableElement -> m ()
createTFoot_ self = liftIO (void (js_createTFoot self))
 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        js_deleteTFoot :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
deleteTFoot :: (MonadIO m) => HTMLTableElement -> m ()
deleteTFoot self = liftIO (js_deleteTFoot self)
 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        js_createTBody :: HTMLTableElement -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody :: (MonadIO m) => HTMLTableElement -> m HTMLElement
createTBody self = liftIO (js_createTBody self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody_ :: (MonadIO m) => HTMLTableElement -> m ()
createTBody_ self = liftIO (void (js_createTBody self))
 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        js_createCaption :: HTMLTableElement -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption :: (MonadIO m) => HTMLTableElement -> m HTMLElement
createCaption self = liftIO (js_createCaption self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption_ :: (MonadIO m) => HTMLTableElement -> m ()
createCaption_ self = liftIO (void (js_createCaption self))
 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        js_deleteCaption :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
deleteCaption :: (MonadIO m) => HTMLTableElement -> m ()
deleteCaption self = liftIO (js_deleteCaption self)
 
foreign import javascript safe "$1[\"insertRow\"]($2)" js_insertRow
        :: HTMLTableElement -> Optional Int -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow ::
          (MonadIO m) => HTMLTableElement -> Maybe Int -> m HTMLElement
insertRow self index
  = liftIO (js_insertRow self (maybeToOptional index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow_ :: (MonadIO m) => HTMLTableElement -> Maybe Int -> m ()
insertRow_ self index
  = liftIO (void (js_insertRow self (maybeToOptional index)))
 
foreign import javascript safe "$1[\"deleteRow\"]($2)" js_deleteRow
        :: HTMLTableElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteRow Mozilla HTMLTableElement.deleteRow documentation> 
deleteRow :: (MonadIO m) => HTMLTableElement -> Int -> m ()
deleteRow self index = liftIO (js_deleteRow self index)
 
foreign import javascript safe "$1[\"caption\"] = $2;"
        js_setCaption ::
        HTMLTableElement -> Optional HTMLTableCaptionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
setCaption ::
           (MonadIO m) =>
             HTMLTableElement -> Maybe HTMLTableCaptionElement -> m ()
setCaption self val
  = liftIO (js_setCaption self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"caption\"]" js_getCaption ::
        HTMLTableElement -> IO (Nullable HTMLTableCaptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaption ::
           (MonadIO m) =>
             HTMLTableElement -> m (Maybe HTMLTableCaptionElement)
getCaption self = liftIO (nullableToMaybe <$> (js_getCaption self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaptionUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   HTMLTableElement -> m HTMLTableCaptionElement
getCaptionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCaption self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaptionUnchecked ::
                    (MonadIO m) => HTMLTableElement -> m HTMLTableCaptionElement
getCaptionUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCaption self))
 
foreign import javascript safe "$1[\"tHead\"] = $2;" js_setTHead ::
        HTMLTableElement -> Optional HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
setTHead ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTHead self val = liftIO (js_setTHead self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"tHead\"]" js_getTHead ::
        HTMLTableElement -> IO (Nullable HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHead ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTHead self = liftIO (nullableToMaybe <$> (js_getTHead self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHeadUnsafe ::
               (MonadIO m, HasCallStack) =>
                 HTMLTableElement -> m HTMLTableSectionElement
getTHeadUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTHead self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHeadUnchecked ::
                  (MonadIO m) => HTMLTableElement -> m HTMLTableSectionElement
getTHeadUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTHead self))
 
foreign import javascript safe "$1[\"tFoot\"] = $2;" js_setTFoot ::
        HTMLTableElement -> Optional HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
setTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTFoot self val = liftIO (js_setTFoot self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"tFoot\"]" js_getTFoot ::
        HTMLTableElement -> IO (Nullable HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTFoot self = liftIO (nullableToMaybe <$> (js_getTFoot self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFootUnsafe ::
               (MonadIO m, HasCallStack) =>
                 HTMLTableElement -> m HTMLTableSectionElement
getTFootUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTFoot self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFootUnchecked ::
                  (MonadIO m) => HTMLTableElement -> m HTMLTableSectionElement
getTFootUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTFoot self))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        HTMLTableElement -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
getRows :: (MonadIO m) => HTMLTableElement -> m HTMLCollection
getRows self = liftIO (js_getRows self)
 
foreign import javascript unsafe "$1[\"tBodies\"]" js_getTBodies ::
        HTMLTableElement -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
getTBodies :: (MonadIO m) => HTMLTableElement -> m HTMLCollection
getTBodies self = liftIO (js_getTBodies self)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setAlign self val = liftIO (js_setAlign self (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign self))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBgColor self val = liftIO (js_setBgColor self (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor self))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBorder self val = liftIO (js_setBorder self (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBorder self = liftIO (fromJSString <$> (js_getBorder self))
 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        js_setCellPadding :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
setCellPadding ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellPadding self val
  = liftIO (js_setCellPadding self (toJSString val))
 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        js_getCellPadding :: HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPadding ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellPadding self
  = liftIO (fromJSString <$> (js_getCellPadding self))
 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        js_setCellSpacing :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
setCellSpacing ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellSpacing self val
  = liftIO (js_setCellSpacing self (toJSString val))
 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        js_getCellSpacing :: HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacing ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellSpacing self
  = liftIO (fromJSString <$> (js_getCellSpacing self))
 
foreign import javascript unsafe "$1[\"frame\"] = $2;" js_setFrame
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
setFrame ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setFrame self val = liftIO (js_setFrame self (toJSString val))
 
foreign import javascript unsafe "$1[\"frame\"]" js_getFrame ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
getFrame ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getFrame self = liftIO (fromJSString <$> (js_getFrame self))
 
foreign import javascript unsafe "$1[\"rules\"] = $2;" js_setRules
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
setRules ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setRules self val = liftIO (js_setRules self (toJSString val))
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
getRules ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getRules self = liftIO (fromJSString <$> (js_getRules self))
 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        js_setSummary :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
setSummary ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setSummary self val = liftIO (js_setSummary self (toJSString val))
 
foreign import javascript unsafe "$1[\"summary\"]" js_getSummary ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
getSummary ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getSummary self = liftIO (fromJSString <$> (js_getSummary self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setWidth self val = liftIO (js_setWidth self (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getWidth self = liftIO (fromJSString <$> (js_getWidth self))