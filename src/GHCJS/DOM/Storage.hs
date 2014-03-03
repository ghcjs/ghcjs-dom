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
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"key\"]($2)"
        ghcjs_dom_storage_key :: JSRef Storage -> Word -> IO JSString
#else 
ghcjs_dom_storage_key :: JSRef Storage -> Word -> IO JSString
ghcjs_dom_storage_key = undefined
#endif
 
storageKey ::
           (IsStorage self, FromJSString result) => self -> Word -> IO result
storageKey self index
  = fromJSString <$>
      (ghcjs_dom_storage_key (unStorage (toStorage self)) index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        ghcjs_dom_storage_get_item ::
        JSRef Storage -> JSString -> IO JSString
#else 
ghcjs_dom_storage_get_item ::
                             JSRef Storage -> JSString -> IO JSString
ghcjs_dom_storage_get_item = undefined
#endif
 
storageGetItem ::
               (IsStorage self, ToJSString key, FromJSString result) =>
                 self -> key -> IO result
storageGetItem self key
  = fromJSString <$>
      (ghcjs_dom_storage_get_item (unStorage (toStorage self))
         (toJSString key))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"setItem\"]($2, $3)"
        ghcjs_dom_storage_set_item ::
        JSRef Storage -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_storage_set_item ::
                             JSRef Storage -> JSString -> JSString -> IO ()
ghcjs_dom_storage_set_item = undefined
#endif
 
storageSetItem ::
               (IsStorage self, ToJSString key, ToJSString data') =>
                 self -> key -> data' -> IO ()
storageSetItem self key data'
  = ghcjs_dom_storage_set_item (unStorage (toStorage self))
      (toJSString key)
      (toJSString data')


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        ghcjs_dom_storage_remove_item :: JSRef Storage -> JSString -> IO ()
#else 
ghcjs_dom_storage_remove_item :: JSRef Storage -> JSString -> IO ()
ghcjs_dom_storage_remove_item = undefined
#endif
 
storageRemoveItem ::
                  (IsStorage self, ToJSString key) => self -> key -> IO ()
storageRemoveItem self key
  = ghcjs_dom_storage_remove_item (unStorage (toStorage self))
      (toJSString key)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_storage_clear :: JSRef Storage -> IO ()
#else 
ghcjs_dom_storage_clear :: JSRef Storage -> IO ()
ghcjs_dom_storage_clear = undefined
#endif
 
storageClear :: (IsStorage self) => self -> IO ()
storageClear self
  = ghcjs_dom_storage_clear (unStorage (toStorage self))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_storage_get_length :: JSRef Storage -> IO Word
#else 
ghcjs_dom_storage_get_length :: JSRef Storage -> IO Word
ghcjs_dom_storage_get_length = undefined
#endif
 
storageGetLength :: (IsStorage self) => self -> IO Word
storageGetLength self
  = ghcjs_dom_storage_get_length (unStorage (toStorage self))
#else
module GHCJS.DOM.Storage (
  module Graphics.UI.Gtk.WebKit.DOM.Storage
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Storage
#endif
