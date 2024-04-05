{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DataTransfer
       (js_setDragImage, setDragImage, js_getData, getData, getData_,
        js_setData, setData, js_clearData, clearData, js_setDropEffect,
        setDropEffect, js_getDropEffect, getDropEffect,
        js_setEffectAllowed, setEffectAllowed, js_getEffectAllowed,
        getEffectAllowed, js_getItems, getItems, js_getTypes, getTypes,
        js_getFiles, getFiles, DataTransfer(..), gTypeDataTransfer)
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
 
foreign import javascript unsafe "$1[\"setDragImage\"]($2, $3, $4)"
        js_setDragImage ::
        DataTransfer -> Optional Element -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setDragImage Mozilla DataTransfer.setDragImage documentation> 
setDragImage ::
             (MonadIO m, IsElement image) =>
               DataTransfer -> Maybe image -> Int -> Int -> m ()
setDragImage self image x y
  = liftIO
      (js_setDragImage self (maybeToOptional (fmap toElement image)) x y)
 
foreign import javascript unsafe "$1[\"getData\"]($2)" js_getData
        :: DataTransfer -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData ::
        (MonadIO m, ToJSString format, FromJSString result) =>
          DataTransfer -> format -> m result
getData self format
  = liftIO (fromJSString <$> (js_getData self (toJSString format)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData_ ::
         (MonadIO m, ToJSString format) => DataTransfer -> format -> m ()
getData_ self format
  = liftIO (void (js_getData self (toJSString format)))
 
foreign import javascript unsafe "$1[\"setData\"]($2, $3)"
        js_setData :: DataTransfer -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setData Mozilla DataTransfer.setData documentation> 
setData ::
        (MonadIO m, ToJSString format, ToJSString data') =>
          DataTransfer -> format -> data' -> m ()
setData self format data'
  = liftIO (js_setData self (toJSString format) (toJSString data'))
 
foreign import javascript unsafe "$1[\"clearData\"]($2)"
        js_clearData :: DataTransfer -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.clearData Mozilla DataTransfer.clearData documentation> 
clearData ::
          (MonadIO m, ToJSString format) =>
            DataTransfer -> Maybe format -> m ()
clearData self format
  = liftIO (js_clearData self (toOptionalJSString format))
 
foreign import javascript unsafe "$1[\"dropEffect\"] = $2;"
        js_setDropEffect :: DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
setDropEffect ::
              (MonadIO m, ToJSString val) => DataTransfer -> val -> m ()
setDropEffect self val
  = liftIO (js_setDropEffect self (toJSString val))
 
foreign import javascript unsafe "$1[\"dropEffect\"]"
        js_getDropEffect :: DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
getDropEffect ::
              (MonadIO m, FromJSString result) => DataTransfer -> m result
getDropEffect self
  = liftIO (fromJSString <$> (js_getDropEffect self))
 
foreign import javascript unsafe "$1[\"effectAllowed\"] = $2;"
        js_setEffectAllowed :: DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
setEffectAllowed ::
                 (MonadIO m, ToJSString val) => DataTransfer -> val -> m ()
setEffectAllowed self val
  = liftIO (js_setEffectAllowed self (toJSString val))
 
foreign import javascript unsafe "$1[\"effectAllowed\"]"
        js_getEffectAllowed :: DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
getEffectAllowed ::
                 (MonadIO m, FromJSString result) => DataTransfer -> m result
getEffectAllowed self
  = liftIO (fromJSString <$> (js_getEffectAllowed self))
 
foreign import javascript unsafe "$1[\"items\"]" js_getItems ::
        DataTransfer -> IO DataTransferItemList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
getItems :: (MonadIO m) => DataTransfer -> m DataTransferItemList
getItems self = liftIO (js_getItems self)
 
foreign import javascript unsafe "$1[\"types\"]" js_getTypes ::
        DataTransfer -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
getTypes ::
         (MonadIO m, FromJSString result) => DataTransfer -> m [result]
getTypes self = liftIO ((js_getTypes self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"files\"]" js_getFiles ::
        DataTransfer -> IO FileList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
getFiles :: (MonadIO m) => DataTransfer -> m FileList
getFiles self = liftIO (js_getFiles self)