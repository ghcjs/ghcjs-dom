{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Storage
       (ghcjs_dom_storage_key, storageKey, ghcjs_dom_storage_get_item,
        storageGetItem, ghcjs_dom_storage_set_item, storageSetItem,
        ghcjs_dom_storage_remove_item, storageRemoveItem,
        ghcjs_dom_storage_clear, storageClear,
        ghcjs_dom_storage_get_length, storageGetLength, Storage, IsStorage,
        castToStorage, gTypeStorage, toStorage)
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

 
foreign import javascript unsafe "$1[\"key\"]($2)"
        ghcjs_dom_storage_key :: JSRef Storage -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.key Mozilla Storage.key documentation> 
storageKey ::
           (MonadIO m, IsStorage self, FromJSString result) =>
             self -> Word -> m result
storageKey self index
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_key (unStorage (toStorage self)) index))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_storage_get_item ::
        JSRef Storage -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.item Mozilla Storage.item documentation> 
storageGetItem ::
               (MonadIO m, IsStorage self, ToJSString key, FromJSString result) =>
                 self -> key -> m result
storageGetItem self key
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_storage_get_item (unStorage (toStorage self))
            (toJSString key)))
 
foreign import javascript unsafe "$1[\"setItem\"]($2, $3)"
        ghcjs_dom_storage_set_item ::
        JSRef Storage -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.item Mozilla Storage.item documentation> 
storageSetItem ::
               (MonadIO m, IsStorage self, ToJSString key, ToJSString data') =>
                 self -> key -> data' -> m ()
storageSetItem self key data'
  = liftIO
      (ghcjs_dom_storage_set_item (unStorage (toStorage self))
         (toJSString key)
         (toJSString data'))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_storage_remove_item :: JSRef Storage -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.removeItem Mozilla Storage.removeItem documentation> 
storageRemoveItem ::
                  (MonadIO m, IsStorage self, ToJSString key) => self -> key -> m ()
storageRemoveItem self key
  = liftIO
      (ghcjs_dom_storage_remove_item (unStorage (toStorage self))
         (toJSString key))
 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_storage_clear :: JSRef Storage -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.clear Mozilla Storage.clear documentation> 
storageClear :: (MonadIO m, IsStorage self) => self -> m ()
storageClear self
  = liftIO (ghcjs_dom_storage_clear (unStorage (toStorage self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_storage_get_length :: JSRef Storage -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Storage.length Mozilla Storage.length documentation> 
storageGetLength :: (MonadIO m, IsStorage self) => self -> m Word
storageGetLength self
  = liftIO
      (ghcjs_dom_storage_get_length (unStorage (toStorage self)))
#else
module GHCJS.DOM.Storage (
  module Graphics.UI.Gtk.WebKit.DOM.Storage
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Storage
#endif
