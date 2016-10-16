{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLTableRowElement
       (js_insertCell, insertCell, insertCell_, insertCellUnsafe,
        insertCellUnchecked, js_deleteCell, deleteCell, js_getRowIndex,
        getRowIndex, js_getSectionRowIndex, getSectionRowIndex,
        js_getCells, getCells, getCellsUnsafe, getCellsUnchecked,
        js_setAlign, setAlign, js_getAlign, getAlign, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setCh, setCh, js_getCh,
        getCh, js_setChOff, setChOff, js_getChOff, getChOff, js_setVAlign,
        setVAlign, js_getVAlign, getVAlign, HTMLTableRowElement(..),
        gTypeHTMLTableRowElement)
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
 
foreign import javascript unsafe "$1[\"insertCell\"]($2)"
        js_insertCell ::
        HTMLTableRowElement -> Int -> IO (Nullable HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
insertCell ::
           (MonadIO m) => HTMLTableRowElement -> Int -> m (Maybe HTMLElement)
insertCell self index
  = liftIO (nullableToMaybe <$> (js_insertCell (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
insertCell_ :: (MonadIO m) => HTMLTableRowElement -> Int -> m ()
insertCell_ self index = liftIO (void (js_insertCell (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
insertCellUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   HTMLTableRowElement -> Int -> m HTMLElement
insertCellUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_insertCell (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
insertCellUnchecked ::
                    (MonadIO m) => HTMLTableRowElement -> Int -> m HTMLElement
insertCellUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$> (js_insertCell (self) index))
 
foreign import javascript unsafe "$1[\"deleteCell\"]($2)"
        js_deleteCell :: HTMLTableRowElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.deleteCell Mozilla HTMLTableRowElement.deleteCell documentation> 
deleteCell :: (MonadIO m) => HTMLTableRowElement -> Int -> m ()
deleteCell self index = liftIO (js_deleteCell (self) index)
 
foreign import javascript unsafe "$1[\"rowIndex\"]" js_getRowIndex
        :: HTMLTableRowElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.rowIndex Mozilla HTMLTableRowElement.rowIndex documentation> 
getRowIndex :: (MonadIO m) => HTMLTableRowElement -> m Int
getRowIndex self = liftIO (js_getRowIndex (self))
 
foreign import javascript unsafe "$1[\"sectionRowIndex\"]"
        js_getSectionRowIndex :: HTMLTableRowElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.sectionRowIndex Mozilla HTMLTableRowElement.sectionRowIndex documentation> 
getSectionRowIndex :: (MonadIO m) => HTMLTableRowElement -> m Int
getSectionRowIndex self = liftIO (js_getSectionRowIndex (self))
 
foreign import javascript unsafe "$1[\"cells\"]" js_getCells ::
        HTMLTableRowElement -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.cells Mozilla HTMLTableRowElement.cells documentation> 
getCells ::
         (MonadIO m) => HTMLTableRowElement -> m (Maybe HTMLCollection)
getCells self = liftIO (nullableToMaybe <$> (js_getCells (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.cells Mozilla HTMLTableRowElement.cells documentation> 
getCellsUnsafe ::
               (MonadIO m, HasCallStack) =>
                 HTMLTableRowElement -> m HTMLCollection
getCellsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getCells (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.cells Mozilla HTMLTableRowElement.cells documentation> 
getCellsUnchecked ::
                  (MonadIO m) => HTMLTableRowElement -> m HTMLCollection
getCellsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCells (self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setAlign self val = liftIO (js_setAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLTableRowElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign (self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLTableRowElement -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor (self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;" js_setCh ::
        HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
setCh ::
      (MonadIO m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setCh self val = liftIO (js_setCh (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]" js_getCh ::
        HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
getCh ::
      (MonadIO m, FromJSString result) => HTMLTableRowElement -> m result
getCh self = liftIO (fromJSString <$> (js_getCh (self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;" js_setChOff
        :: HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
setChOff ::
         (MonadIO m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setChOff self val = liftIO (js_setChOff (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]" js_getChOff ::
        HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
getChOff ::
         (MonadIO m, FromJSString result) => HTMLTableRowElement -> m result
getChOff self = liftIO (fromJSString <$> (js_getChOff (self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        js_setVAlign :: HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
setVAlign ::
          (MonadIO m, ToJSString val) => HTMLTableRowElement -> val -> m ()
setVAlign self val = liftIO (js_setVAlign (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]" js_getVAlign ::
        HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
getVAlign ::
          (MonadIO m, FromJSString result) => HTMLTableRowElement -> m result
getVAlign self = liftIO (fromJSString <$> (js_getVAlign (self)))