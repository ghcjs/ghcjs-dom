{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableElement
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"createTHead\"]()"
        js_createTHead :: JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
createTHead ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTHead self
  = liftIO ((js_createTHead (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        js_deleteTHead :: JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
deleteTHead :: (MonadIO m) => HTMLTableElement -> m ()
deleteTHead self
  = liftIO (js_deleteTHead (unHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        js_createTFoot :: JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
createTFoot ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTFoot self
  = liftIO ((js_createTFoot (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        js_deleteTFoot :: JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
deleteTFoot :: (MonadIO m) => HTMLTableElement -> m ()
deleteTFoot self
  = liftIO (js_deleteTFoot (unHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        js_createTBody :: JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
createTBody ::
            (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createTBody self
  = liftIO ((js_createTBody (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        js_createCaption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
createCaption ::
              (MonadIO m) => HTMLTableElement -> m (Maybe HTMLElement)
createCaption self
  = liftIO
      ((js_createCaption (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        js_deleteCaption :: JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
deleteCaption :: (MonadIO m) => HTMLTableElement -> m ()
deleteCaption self
  = liftIO (js_deleteCaption (unHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        js_insertRow ::
        JSRef HTMLTableElement -> Int -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
insertRow ::
          (MonadIO m) => HTMLTableElement -> Int -> m (Maybe HTMLElement)
insertRow self index
  = liftIO
      ((js_insertRow (unHTMLTableElement self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        js_deleteRow :: JSRef HTMLTableElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteRow Mozilla HTMLTableElement.deleteRow documentation> 
deleteRow :: (MonadIO m) => HTMLTableElement -> Int -> m ()
deleteRow self index
  = liftIO (js_deleteRow (unHTMLTableElement self) index)
 
foreign import javascript unsafe "$1[\"caption\"] = $2;"
        js_setCaption ::
        JSRef HTMLTableElement -> JSRef HTMLTableCaptionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
setCaption ::
           (MonadIO m) =>
             HTMLTableElement -> Maybe HTMLTableCaptionElement -> m ()
setCaption self val
  = liftIO
      (js_setCaption (unHTMLTableElement self)
         (maybe jsNull unHTMLTableCaptionElement val))
 
foreign import javascript unsafe "$1[\"caption\"]" js_getCaption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableCaptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
getCaption ::
           (MonadIO m) =>
             HTMLTableElement -> m (Maybe HTMLTableCaptionElement)
getCaption self
  = liftIO ((js_getCaption (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"tHead\"] = $2;" js_setTHead
        :: JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
setTHead ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTHead self val
  = liftIO
      (js_setTHead (unHTMLTableElement self)
         (maybe jsNull unHTMLTableSectionElement val))
 
foreign import javascript unsafe "$1[\"tHead\"]" js_getTHead ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
getTHead ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTHead self
  = liftIO ((js_getTHead (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"tFoot\"] = $2;" js_setTFoot
        :: JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
setTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> Maybe HTMLTableSectionElement -> m ()
setTFoot self val
  = liftIO
      (js_setTFoot (unHTMLTableElement self)
         (maybe jsNull unHTMLTableSectionElement val))
 
foreign import javascript unsafe "$1[\"tFoot\"]" js_getTFoot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
getTFoot ::
         (MonadIO m) =>
           HTMLTableElement -> m (Maybe HTMLTableSectionElement)
getTFoot self
  = liftIO ((js_getTFoot (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
getRows ::
        (MonadIO m) => HTMLTableElement -> m (Maybe HTMLCollection)
getRows self
  = liftIO ((js_getRows (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"tBodies\"]" js_getTBodies ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
getTBodies ::
           (MonadIO m) => HTMLTableElement -> m (Maybe HTMLCollection)
getTBodies self
  = liftIO ((js_getTBodies (unHTMLTableElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBgColor self
  = liftIO
      (fromJSString <$> (js_getBgColor (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        js_setBorder :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
setBorder ::
          (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setBorder self val
  = liftIO (js_setBorder (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"border\"]" js_getBorder ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
getBorder ::
          (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getBorder self
  = liftIO
      (fromJSString <$> (js_getBorder (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        js_setCellPadding :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
setCellPadding ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellPadding self val
  = liftIO
      (js_setCellPadding (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        js_getCellPadding :: JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
getCellPadding ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellPadding self
  = liftIO
      (fromJSString <$> (js_getCellPadding (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        js_setCellSpacing :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
setCellSpacing ::
               (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setCellSpacing self val
  = liftIO
      (js_setCellSpacing (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        js_getCellSpacing :: JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
getCellSpacing ::
               (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getCellSpacing self
  = liftIO
      (fromJSString <$> (js_getCellSpacing (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"frame\"] = $2;" js_setFrame
        :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
setFrame ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setFrame self val
  = liftIO (js_setFrame (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"frame\"]" js_getFrame ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
getFrame ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getFrame self
  = liftIO (fromJSString <$> (js_getFrame (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"rules\"] = $2;" js_setRules
        :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
setRules ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setRules self val
  = liftIO (js_setRules (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
getRules ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getRules self
  = liftIO (fromJSString <$> (js_getRules (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        js_setSummary :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
setSummary ::
           (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setSummary self val
  = liftIO (js_setSummary (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"summary\"]" js_getSummary ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
getSummary ::
           (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getSummary self
  = liftIO
      (fromJSString <$> (js_getSummary (unHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLTableElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLTableElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLTableElement -> m result
getWidth self
  = liftIO (fromJSString <$> (js_getWidth (unHTMLTableElement self)))
#else
module GHCJS.DOM.HTMLTableElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
#endif
