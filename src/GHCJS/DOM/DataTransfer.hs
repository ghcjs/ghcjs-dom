{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataTransfer
       (ghcjs_dom_data_transfer_clear_data, dataTransferClearData,
        ghcjs_dom_data_transfer_get_data, dataTransferGetData,
        ghcjs_dom_data_transfer_set_data, dataTransferSetData,
        ghcjs_dom_data_transfer_set_drag_image, dataTransferSetDragImage,
        ghcjs_dom_data_transfer_set_drop_effect, dataTransferSetDropEffect,
        ghcjs_dom_data_transfer_get_drop_effect, dataTransferGetDropEffect,
        ghcjs_dom_data_transfer_set_effect_allowed,
        dataTransferSetEffectAllowed,
        ghcjs_dom_data_transfer_get_effect_allowed,
        dataTransferGetEffectAllowed, ghcjs_dom_data_transfer_get_types,
        dataTransferGetTypes, ghcjs_dom_data_transfer_get_files,
        dataTransferGetFiles, ghcjs_dom_data_transfer_get_items,
        dataTransferGetItems, DataTransfer, IsDataTransfer,
        castToDataTransfer, gTypeDataTransfer, toDataTransfer)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"clearData\"]($2)"
        ghcjs_dom_data_transfer_clear_data ::
        JSRef DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.clearData Mozilla DataTransfer.clearData documentation> 
dataTransferClearData ::
                      (MonadIO m, IsDataTransfer self, ToJSString type') =>
                        self -> type' -> m ()
dataTransferClearData self type'
  = liftIO
      (ghcjs_dom_data_transfer_clear_data
         (unDataTransfer (toDataTransfer self))
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"getData\"]($2)"
        ghcjs_dom_data_transfer_get_data ::
        JSRef DataTransfer -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.data Mozilla DataTransfer.data documentation> 
dataTransferGetData ::
                    (MonadIO m, IsDataTransfer self, ToJSString type',
                     FromJSString result) =>
                      self -> type' -> m result
dataTransferGetData self type'
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_data_transfer_get_data
            (unDataTransfer (toDataTransfer self))
            (toJSString type')))
 
foreign import javascript unsafe "$1[\"setData\"]($2, $3)"
        ghcjs_dom_data_transfer_set_data ::
        JSRef DataTransfer -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.data Mozilla DataTransfer.data documentation> 
dataTransferSetData ::
                    (MonadIO m, IsDataTransfer self, ToJSString type',
                     ToJSString data') =>
                      self -> type' -> data' -> m ()
dataTransferSetData self type' data'
  = liftIO
      (ghcjs_dom_data_transfer_set_data
         (unDataTransfer (toDataTransfer self))
         (toJSString type')
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"setDragImage\"]($2, $3, $4)"
        ghcjs_dom_data_transfer_set_drag_image ::
        JSRef DataTransfer -> JSRef Element -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dragImage Mozilla DataTransfer.dragImage documentation> 
dataTransferSetDragImage ::
                         (MonadIO m, IsDataTransfer self, IsElement image) =>
                           self -> Maybe image -> Int -> Int -> m ()
dataTransferSetDragImage self image x y
  = liftIO
      (ghcjs_dom_data_transfer_set_drag_image
         (unDataTransfer (toDataTransfer self))
         (maybe jsNull (unElement . toElement) image)
         x
         y)
 
foreign import javascript unsafe "$1[\"dropEffect\"] = $2;"
        ghcjs_dom_data_transfer_set_drop_effect ::
        JSRef DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
dataTransferSetDropEffect ::
                          (MonadIO m, IsDataTransfer self, ToJSString val) =>
                            self -> val -> m ()
dataTransferSetDropEffect self val
  = liftIO
      (ghcjs_dom_data_transfer_set_drop_effect
         (unDataTransfer (toDataTransfer self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"dropEffect\"]"
        ghcjs_dom_data_transfer_get_drop_effect ::
        JSRef DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
dataTransferGetDropEffect ::
                          (MonadIO m, IsDataTransfer self, FromJSString result) =>
                            self -> m result
dataTransferGetDropEffect self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_data_transfer_get_drop_effect
            (unDataTransfer (toDataTransfer self))))
 
foreign import javascript unsafe "$1[\"effectAllowed\"] = $2;"
        ghcjs_dom_data_transfer_set_effect_allowed ::
        JSRef DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
dataTransferSetEffectAllowed ::
                             (MonadIO m, IsDataTransfer self, ToJSString val) =>
                               self -> val -> m ()
dataTransferSetEffectAllowed self val
  = liftIO
      (ghcjs_dom_data_transfer_set_effect_allowed
         (unDataTransfer (toDataTransfer self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"effectAllowed\"]"
        ghcjs_dom_data_transfer_get_effect_allowed ::
        JSRef DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
dataTransferGetEffectAllowed ::
                             (MonadIO m, IsDataTransfer self, FromJSString result) =>
                               self -> m result
dataTransferGetEffectAllowed self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_data_transfer_get_effect_allowed
            (unDataTransfer (toDataTransfer self))))
 
foreign import javascript unsafe "$1[\"types\"]"
        ghcjs_dom_data_transfer_get_types ::
        JSRef DataTransfer -> IO (JSRef Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
dataTransferGetTypes ::
                     (MonadIO m, IsDataTransfer self) => self -> m (Maybe Array)
dataTransferGetTypes self
  = liftIO
      ((ghcjs_dom_data_transfer_get_types
          (unDataTransfer (toDataTransfer self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"files\"]"
        ghcjs_dom_data_transfer_get_files ::
        JSRef DataTransfer -> IO (JSRef FileList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
dataTransferGetFiles ::
                     (MonadIO m, IsDataTransfer self) => self -> m (Maybe FileList)
dataTransferGetFiles self
  = liftIO
      ((ghcjs_dom_data_transfer_get_files
          (unDataTransfer (toDataTransfer self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"items\"]"
        ghcjs_dom_data_transfer_get_items ::
        JSRef DataTransfer -> IO (JSRef DataTransferItemList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
dataTransferGetItems ::
                     (MonadIO m, IsDataTransfer self) =>
                       self -> m (Maybe DataTransferItemList)
dataTransferGetItems self
  = liftIO
      ((ghcjs_dom_data_transfer_get_items
          (unDataTransfer (toDataTransfer self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.DataTransfer (
  ) where
#endif
