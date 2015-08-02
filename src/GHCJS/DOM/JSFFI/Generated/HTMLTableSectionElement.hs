{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableSectionElement
       (js_insertRow, insertRow, js_deleteRow, deleteRow, js_setAlign,
        setAlign, js_getAlign, getAlign, js_setCh, setCh, js_getCh, getCh,
        js_setChOff, setChOff, js_getChOff, getChOff, js_setVAlign,
        setVAlign, js_getVAlign, getVAlign, js_getRows, getRows,
        HTMLTableSectionElement, castToHTMLTableSectionElement,
        gTypeHTMLTableSectionElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        js_insertRow ::
        JSRef HTMLTableSectionElement -> Int -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
insertRow ::
          (MonadIO m) =>
            HTMLTableSectionElement -> Int -> m (Maybe HTMLElement)
insertRow self index
  = liftIO
      ((js_insertRow (unHTMLTableSectionElement self) index) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        js_deleteRow :: JSRef HTMLTableSectionElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.deleteRow Mozilla HTMLTableSectionElement.deleteRow documentation> 
deleteRow :: (MonadIO m) => HTMLTableSectionElement -> Int -> m ()
deleteRow self index
  = liftIO (js_deleteRow (unHTMLTableSectionElement self) index)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setAlign self val
  = liftIO
      (js_setAlign (unHTMLTableSectionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;" js_setCh ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
setCh ::
      (MonadIO m, ToJSString val) =>
        HTMLTableSectionElement -> val -> m ()
setCh self val
  = liftIO
      (js_setCh (unHTMLTableSectionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]" js_getCh ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
getCh ::
      (MonadIO m, FromJSString result) =>
        HTMLTableSectionElement -> m result
getCh self
  = liftIO
      (fromJSString <$> (js_getCh (unHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;" js_setChOff
        :: JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
setChOff ::
         (MonadIO m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setChOff self val
  = liftIO
      (js_setChOff (unHTMLTableSectionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]" js_getChOff ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
getChOff ::
         (MonadIO m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getChOff self
  = liftIO
      (fromJSString <$> (js_getChOff (unHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        js_setVAlign :: JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
setVAlign ::
          (MonadIO m, ToJSString val) =>
            HTMLTableSectionElement -> val -> m ()
setVAlign self val
  = liftIO
      (js_setVAlign (unHTMLTableSectionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]" js_getVAlign ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
getVAlign ::
          (MonadIO m, FromJSString result) =>
            HTMLTableSectionElement -> m result
getVAlign self
  = liftIO
      (fromJSString <$> (js_getVAlign (unHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        JSRef HTMLTableSectionElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.rows Mozilla HTMLTableSectionElement.rows documentation> 
getRows ::
        (MonadIO m) => HTMLTableSectionElement -> m (Maybe HTMLCollection)
getRows self
  = liftIO
      ((js_getRows (unHTMLTableSectionElement self)) >>= fromJSRef)