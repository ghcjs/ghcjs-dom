{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataTransferItem
       (ghcjs_dom_data_transfer_item_get_as_string,
        dataTransferItemGetAsString,
        ghcjs_dom_data_transfer_item_get_as_file,
        dataTransferItemGetAsFile, ghcjs_dom_data_transfer_item_get_kind,
        dataTransferItemGetKind, DataTransferItem, IsDataTransferItem,
        castToDataTransferItem, gTypeDataTransferItem, toDataTransferItem)
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

 
foreign import javascript unsafe "$1[\"getAsString\"]($2)"
        ghcjs_dom_data_transfer_item_get_as_string ::
        JSRef DataTransferItem -> JSRef StringCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.asString Mozilla DataTransferItem.asString documentation> 
dataTransferItemGetAsString ::
                            (MonadIO m, IsDataTransferItem self, IsStringCallback callback) =>
                              self -> Maybe callback -> m ()
dataTransferItemGetAsString self callback
  = liftIO
      (ghcjs_dom_data_transfer_item_get_as_string
         (unDataTransferItem (toDataTransferItem self))
         (maybe jsNull (unStringCallback . toStringCallback) callback))
 
foreign import javascript unsafe "$1[\"getAsFile\"]()"
        ghcjs_dom_data_transfer_item_get_as_file ::
        JSRef DataTransferItem -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.asFile Mozilla DataTransferItem.asFile documentation> 
dataTransferItemGetAsFile ::
                          (MonadIO m, IsDataTransferItem self) => self -> m (Maybe Blob)
dataTransferItemGetAsFile self
  = liftIO
      ((ghcjs_dom_data_transfer_item_get_as_file
          (unDataTransferItem (toDataTransferItem self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_data_transfer_item_get_kind ::
        JSRef DataTransferItem -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.kind Mozilla DataTransferItem.kind documentation> 
dataTransferItemGetKind ::
                        (MonadIO m, IsDataTransferItem self, FromJSString result) =>
                          self -> m result
dataTransferItemGetKind self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_data_transfer_item_get_kind
            (unDataTransferItem (toDataTransferItem self))))
#else
module GHCJS.DOM.DataTransferItem (
  ) where
#endif
