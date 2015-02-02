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
                      (IsDataTransfer self, ToJSString type') => self -> type' -> IO ()
dataTransferClearData self type'
  = ghcjs_dom_data_transfer_clear_data
      (unDataTransfer (toDataTransfer self))
      (toJSString type')
 
foreign import javascript unsafe "$1[\"getData\"]($2)"
        ghcjs_dom_data_transfer_get_data ::
        JSRef DataTransfer -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.data Mozilla DataTransfer.data documentation> 
dataTransferGetData ::
                    (IsDataTransfer self, ToJSString type', FromJSString result) =>
                      self -> type' -> IO result
dataTransferGetData self type'
  = fromJSString <$>
      (ghcjs_dom_data_transfer_get_data
         (unDataTransfer (toDataTransfer self))
         (toJSString type'))
 
foreign import javascript unsafe "$1[\"setData\"]($2, $3)"
        ghcjs_dom_data_transfer_set_data ::
        JSRef DataTransfer -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.data Mozilla DataTransfer.data documentation> 
dataTransferSetData ::
                    (IsDataTransfer self, ToJSString type', ToJSString data') =>
                      self -> type' -> data' -> IO ()
dataTransferSetData self type' data'
  = ghcjs_dom_data_transfer_set_data
      (unDataTransfer (toDataTransfer self))
      (toJSString type')
      (toJSString data')
 
foreign import javascript unsafe "$1[\"setDragImage\"]($2, $3, $4)"
        ghcjs_dom_data_transfer_set_drag_image ::
        JSRef DataTransfer -> JSRef Element -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dragImage Mozilla DataTransfer.dragImage documentation> 
dataTransferSetDragImage ::
                         (IsDataTransfer self, IsElement image) =>
                           self -> Maybe image -> Int -> Int -> IO ()
dataTransferSetDragImage self image x y
  = ghcjs_dom_data_transfer_set_drag_image
      (unDataTransfer (toDataTransfer self))
      (maybe jsNull (unElement . toElement) image)
      x
      y
 
foreign import javascript unsafe "$1[\"dropEffect\"] = $2;"
        ghcjs_dom_data_transfer_set_drop_effect ::
        JSRef DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
dataTransferSetDropEffect ::
                          (IsDataTransfer self, ToJSString val) => self -> val -> IO ()
dataTransferSetDropEffect self val
  = ghcjs_dom_data_transfer_set_drop_effect
      (unDataTransfer (toDataTransfer self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"dropEffect\"]"
        ghcjs_dom_data_transfer_get_drop_effect ::
        JSRef DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.dropEffect Mozilla DataTransfer.dropEffect documentation> 
dataTransferGetDropEffect ::
                          (IsDataTransfer self, FromJSString result) => self -> IO result
dataTransferGetDropEffect self
  = fromJSString <$>
      (ghcjs_dom_data_transfer_get_drop_effect
         (unDataTransfer (toDataTransfer self)))
 
foreign import javascript unsafe "$1[\"effectAllowed\"] = $2;"
        ghcjs_dom_data_transfer_set_effect_allowed ::
        JSRef DataTransfer -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
dataTransferSetEffectAllowed ::
                             (IsDataTransfer self, ToJSString val) => self -> val -> IO ()
dataTransferSetEffectAllowed self val
  = ghcjs_dom_data_transfer_set_effect_allowed
      (unDataTransfer (toDataTransfer self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"effectAllowed\"]"
        ghcjs_dom_data_transfer_get_effect_allowed ::
        JSRef DataTransfer -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.effectAllowed Mozilla DataTransfer.effectAllowed documentation> 
dataTransferGetEffectAllowed ::
                             (IsDataTransfer self, FromJSString result) => self -> IO result
dataTransferGetEffectAllowed self
  = fromJSString <$>
      (ghcjs_dom_data_transfer_get_effect_allowed
         (unDataTransfer (toDataTransfer self)))
 
foreign import javascript unsafe "$1[\"types\"]"
        ghcjs_dom_data_transfer_get_types ::
        JSRef DataTransfer -> IO (JSRef Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.types Mozilla DataTransfer.types documentation> 
dataTransferGetTypes ::
                     (IsDataTransfer self) => self -> IO (Maybe Array)
dataTransferGetTypes self
  = (ghcjs_dom_data_transfer_get_types
       (unDataTransfer (toDataTransfer self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"files\"]"
        ghcjs_dom_data_transfer_get_files ::
        JSRef DataTransfer -> IO (JSRef FileList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.files Mozilla DataTransfer.files documentation> 
dataTransferGetFiles ::
                     (IsDataTransfer self) => self -> IO (Maybe FileList)
dataTransferGetFiles self
  = (ghcjs_dom_data_transfer_get_files
       (unDataTransfer (toDataTransfer self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"items\"]"
        ghcjs_dom_data_transfer_get_items ::
        JSRef DataTransfer -> IO (JSRef DataTransferItemList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransfer.items Mozilla DataTransfer.items documentation> 
dataTransferGetItems ::
                     (IsDataTransfer self) => self -> IO (Maybe DataTransferItemList)
dataTransferGetItems self
  = (ghcjs_dom_data_transfer_get_items
       (unDataTransfer (toDataTransfer self)))
      >>= fromJSRef
#else
module GHCJS.DOM.DataTransfer (
  ) where
#endif
