{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DataTransfer
       (js_clearData, clearData, js_getData, getData, js_setData, setData,
        js_setDragImage, setDragImage, js_setDropEffect, setDropEffect,
        js_getDropEffect, getDropEffect, js_setEffectAllowed,
        setEffectAllowed, js_getEffectAllowed, getEffectAllowed,
        js_getTypes, getTypes, js_getFiles, getFiles, js_getItems,
        getItems, DataTransfer, castToDataTransfer, gTypeDataTransfer)
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
 
foreign import javascript unsafe "$1[\"clearData\"]($2)"
        js_clearData :: DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.clearData Mozilla DataTransfer.clearData documentation> 
clearData ::
          (MonadIO m, ToJSString type') => DataTransfer -> type' -> m ()
clearData self type'
  = liftIO (js_clearData (self) (toJSString type'))
 
foreign import javascript unsafe "$1[\"getData\"]($2)" js_getData
        :: DataTransfer -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.getData Mozilla DataTransfer.getData documentation> 
getData ::
        (MonadIO m, ToJSString type', FromJSString result) =>
          DataTransfer -> type' -> m result
getData self type'
  = liftIO (fromJSString <$> (js_getData (self) (toJSString type')))
 
foreign import javascript unsafe "$1[\"setData\"]($2, $3)"
        js_setData :: DataTransfer -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setData Mozilla DataTransfer.setData documentation> 
setData ::
        (MonadIO m, ToJSString type', ToJSString data') =>
          DataTransfer -> type' -> data' -> m ()
setData self type' data'
  = liftIO (js_setData (self) (toJSString type') (toJSString data'))
 
foreign import javascript unsafe "$1[\"setDragImage\"]($2, $3, $4)"
        js_setDragImage ::
        DataTransfer -> Nullable Element -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.setDragImage Mozilla DataTransfer.setDragImage documentation> 
setDragImage ::
             (MonadIO m, IsElement image) =>
               DataTransfer -> Maybe image -> Int -> Int -> m ()
setDragImage self image x y
  = liftIO
      (js_setDragImage (self) (maybeToNullable (fmap toElement image)) x
         y)
 
foreign import javascript unsafe "$1[\"dropEffect\"] = $2;"
        js_setDropEffect :: DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
setDropEffect ::
              (MonadIO m, ToJSString val) => DataTransfer -> val -> m ()
setDropEffect self val
  = liftIO (js_setDropEffect (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dropEffect\"]"
        js_getDropEffect :: DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
getDropEffect ::
              (MonadIO m, FromJSString result) => DataTransfer -> m result
getDropEffect self
  = liftIO (fromJSString <$> (js_getDropEffect (self)))
 
foreign import javascript unsafe "$1[\"effectAllowed\"] = $2;"
        js_setEffectAllowed :: DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
setEffectAllowed ::
                 (MonadIO m, ToJSString val) => DataTransfer -> val -> m ()
setEffectAllowed self val
  = liftIO (js_setEffectAllowed (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"effectAllowed\"]"
        js_getEffectAllowed :: DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
getEffectAllowed ::
                 (MonadIO m, FromJSString result) => DataTransfer -> m result
getEffectAllowed self
  = liftIO (fromJSString <$> (js_getEffectAllowed (self)))
 
foreign import javascript unsafe "$1[\"types\"]" js_getTypes ::
        DataTransfer -> IO (Nullable Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
getTypes :: (MonadIO m) => DataTransfer -> m (Maybe Array)
getTypes self = liftIO (nullableToMaybe <$> (js_getTypes (self)))
 
foreign import javascript unsafe "$1[\"files\"]" js_getFiles ::
        DataTransfer -> IO (Nullable FileList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
getFiles :: (MonadIO m) => DataTransfer -> m (Maybe FileList)
getFiles self = liftIO (nullableToMaybe <$> (js_getFiles (self)))
 
foreign import javascript unsafe "$1[\"items\"]" js_getItems ::
        DataTransfer -> IO (Nullable DataTransferItemList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
getItems ::
         (MonadIO m) => DataTransfer -> m (Maybe DataTransferItemList)
getItems self = liftIO (nullableToMaybe <$> (js_getItems (self)))