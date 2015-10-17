{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableElement
       (js_createTHead, createTHead, js_deleteTHead, deleteTHead,
        js_createTFoot, createTFoot, js_deleteTFoot, deleteTFoot,
        js_createTBody, createTBody, js_createCaption, createCaption,
        js_deleteCaption, deleteCaption, js_insertRow, insertRow,
        js_deleteRow, deleteRow, js_setCaption, setCaption, js_getCaption,
        getCaption, js_setTHead, setTHead, js_getTHead, getTHead,
        js_setTFoot, setTFoot, js_getTFoot, getTFoot, js_getRows, getRows,
        js_getTBodies, getTBodies, js_setAlign, setAlign, js_getAlign,
        getAlign, js_setBgColor, setBgColor, js_getBgColor, getBgColor,
        js_setBorder, setBorder, js_getBorder, getBorder,
        js_setCellPadding, setCellPadding, js_getCellPadding,
        getCellPadding, js_setCellSpacing, setCellSpacing,
        js_getCellSpacing, getCellSpacing, js_setFrame, setFrame,
        js_getFrame, getFrame, js_setRules, setRules, js_getRules,
        getRules, js_setSummary, setSummary, js_getSummary, getSummary,
        js_setWidth, setWidth, js_getWidth, getWidth, HTMLTableElement,
        castToHTMLTableElement, gTypeHTMLTableElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"createTHead\"]()"
        js_createTHead :: HTMLTableElement -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTHead self
  = liftIO (nullableToMaybe <$> (js_createTHead (self)))
 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        js_deleteTHead :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
deleteTHead :: (MonadIO m) => HTMLTableElement -> m ()
deleteTHead self = liftIO (js_deleteTHead (self))
 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        js_createTFoot :: HTMLTableElement -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTFoot self
  = liftIO (nullableToMaybe <$> (js_createTFoot (self)))
 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        js_deleteTFoot :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
deleteTFoot :: (MonadIO m) => HTMLTableElement -> m ()
deleteTFoot self = liftIO (js_deleteTFoot (self))
 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        js_createTBody :: HTMLTableElement -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTBody self
  = liftIO (nullableToMaybe <$> (js_createTBody (self)))
 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        js_createCaption :: HTMLTableElement -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption ::
              (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createCaption self
  = liftIO (nullableToMaybe <$> (js_createCaption (self)))
 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        js_deleteCaption :: HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
deleteCaption :: (MonadIO m) => HTMLTableElement -> m ()
deleteCaption self = liftIO (js_deleteCaption (self))
 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        js_insertRow ::
        HTMLTableElement -> Int -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow ::
          (MonadIO m) => HTMLTableElement -> Int -> m (Maybe HTMLElement)
insertRow self index
  = liftIO (nullableToMaybe <$> (js_insertRow (self) index))
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        js_deleteRow :: HTMLTableElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteRow Mozilla HTMLTableElement.deleteRow documentation> 
deleteRow :: (MonadIO m) => HTMLTableElement -> Int -> m ()
deleteRow self index = liftIO (js_deleteRow (self) index)
 
foreign import javascript unsafe "$1[\"caption\"] = $2;"
        js_setCaption ::
        HTMLTableElement -> Nullable HTMLTableCaptionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
setCaption ::
           (MonadIO m) =>
             HTMLTableElement -> Maybe HTMLTableCaptionElement -> m ()
setCaption self val
  = liftIO (js_setCaption (self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"caption\"]" js_getCaption ::
        HTMLTableElement -> IO (Nullable HTMLTableCaptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaption ::
           (MonadIO m) =>
             HTMLTableElement -> m (Maybe HTMLTableCaptionElement)
getCaption self
  = liftIO (nullableToMaybe <$> (js_getCaption (self)))
 
foreign import javascript unsafe "$1[\"tHead\"] = $2;" js_setTHead
        :: HTMLTableElement -> Nullable HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
setTHead ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTHead self val
  = liftIO (js_setTHead (self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"tHead\"]" js_getTHead ::
        HTMLTableElement -> IO (Nullable HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHead ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTHead self = liftIO (nullableToMaybe <$> (js_getTHead (self)))
 
foreign import javascript unsafe "$1[\"tFoot\"] = $2;" js_setTFoot
        :: HTMLTableElement -> Nullable HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
setTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTFoot self val
  = liftIO (js_setTFoot (self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"tFoot\"]" js_getTFoot ::
        HTMLTableElement -> IO (Nullable HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTFoot self = liftIO (nullableToMaybe <$> (js_getTFoot (self)))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        HTMLTableElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
getRows ::
        (MonadIO m) => HTMLTableElement -> m (Maybe HTMLCollection)
getRows self = liftIO (nullableToMaybe <$> (js_getRows (self)))
 
foreign import javascript unsafe "$1[\"tBodies\"]" js_getTBodies ::
        HTMLTableElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
getTBodies ::
           (MonadIO m) => HTMLTableElement -> m (Maybe HTMLCollection)
getTBodies self
  = liftIO (nullableToMaybe <$> (js_getTBodies (self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor (self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBorder self val = liftIO (js_setBorder (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBorder self = liftIO (fromJSString <$> (js_getBorder (self)))
 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        js_setCellPadding :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
setCellPadding ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellPadding self val
  = liftIO (js_setCellPadding (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        js_getCellPadding :: HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPadding ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellPadding self
  = liftIO (fromJSString <$> (js_getCellPadding (self)))
 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        js_setCellSpacing :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
setCellSpacing ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellSpacing self val
  = liftIO (js_setCellSpacing (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        js_getCellSpacing :: HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacing ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellSpacing self
  = liftIO (fromJSString <$> (js_getCellSpacing (self)))
 
foreign import javascript unsafe "$1[\"frame\"] = $2;" js_setFrame
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
setFrame ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setFrame self val = liftIO (js_setFrame (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"frame\"]" js_getFrame ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
getFrame ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getFrame self = liftIO (fromJSString <$> (js_getFrame (self)))
 
foreign import javascript unsafe "$1[\"rules\"] = $2;" js_setRules
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
setRules ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setRules self val = liftIO (js_setRules (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
getRules ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getRules self = liftIO (fromJSString <$> (js_getRules (self)))
 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        js_setSummary :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
setSummary ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setSummary self val
  = liftIO (js_setSummary (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"summary\"]" js_getSummary ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
getSummary ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getSummary self = liftIO (fromJSString <$> (js_getSummary (self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setWidth self val = liftIO (js_setWidth (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getWidth self = liftIO (fromJSString <$> (js_getWidth (self)))