{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableSectionElement
       (js_insertRow, insertRow, insertRow_, js_deleteRow, deleteRow,
        js_setAlign, setAlign, js_getAlign, getAlign, js_setCh, setCh,
        js_getCh, getCh, js_setChOff, setChOff, js_getChOff, getChOff,
        js_setVAlign, setVAlign, js_getVAlign, getVAlign, js_getRows,
        getRows, HTMLTableSectionElement(..), gTypeHTMLTableSectionElement)
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
 
foreign import javascript safe "$1[\"insertRow\"]($2)" js_insertRow
        :: HTMLTableSectionElement -> Optional Int -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
insertRow ::
          (MonadIO m) =>
            HTMLTableSectionElement -> Maybe Int -> m HTMLElement
insertRow self index
  = liftIO (js_insertRow self (maybeToOptional index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
insertRow_ ::
           (MonadIO m) => HTMLTableSectionElement -> Maybe Int -> m ()
insertRow_ self index
  = liftIO (void (js_insertRow self (maybeToOptional index)))
 
foreign import javascript safe "$1[\"deleteRow\"]($2)" js_deleteRow
        :: HTMLTableSectionElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.deleteRow Mozilla HTMLTableSectionElement.deleteRow documentation> 
deleteRow :: (MonadIO m) => HTMLTableSectionElement -> Int -> m ()
deleteRow self index = liftIO (js_deleteRow self index)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setAlign self val = liftIO (js_setAlign self (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign self))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;" js_setCh ::
        HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
setCh ::
      (MonadIO m, ToJSString val) =>
        HTMLTableSectionElement -> val -> m ()
setCh self val = liftIO (js_setCh self (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]" js_getCh ::
        HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
getCh ::
      (MonadIO m, FromJSString result) =>
        HTMLTableSectionElement -> m result
getCh self = liftIO (fromJSString <$> (js_getCh self))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;" js_setChOff
        :: HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
setChOff ::
         (MonadIO m, ToJSString val) =>
           HTMLTableSectionElement -> val -> m ()
setChOff self val = liftIO (js_setChOff self (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]" js_getChOff ::
        HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
getChOff ::
         (MonadIO m, FromJSString result) =>
           HTMLTableSectionElement -> m result
getChOff self = liftIO (fromJSString <$> (js_getChOff self))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        js_setVAlign :: HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
setVAlign ::
          (MonadIO m, ToJSString val) =>
            HTMLTableSectionElement -> val -> m ()
setVAlign self val = liftIO (js_setVAlign self (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]" js_getVAlign ::
        HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
getVAlign ::
          (MonadIO m, FromJSString result) =>
            HTMLTableSectionElement -> m result
getVAlign self = liftIO (fromJSString <$> (js_getVAlign self))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        HTMLTableSectionElement -> IO HTMLCollection

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.rows Mozilla HTMLTableSectionElement.rows documentation> 
getRows ::
        (MonadIO m) => HTMLTableSectionElement -> m HTMLCollection
getRows self = liftIO (js_getRows self)