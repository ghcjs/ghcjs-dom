{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Storage
       (webkit_dom_storage_key, storageKey, webkit_dom_storage_get_item,
        storageGetItem, webkit_dom_storage_set_item, storageSetItem,
        webkit_dom_storage_remove_item, storageRemoveItem,
        webkit_dom_storage_clear, storageClear,
        webkit_dom_storage_get_length, storageGetLength)
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



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"key\"]($2)"
        webkit_dom_storage_key :: JSRef Storage -> Word -> IO JSString
#else 
webkit_dom_storage_key :: JSRef Storage -> Word -> IO JSString
webkit_dom_storage_key = undefined
#endif
 
storageKey ::
           (StorageClass self, FromJSString result) =>
             self -> Word -> IO result
storageKey self index
  = fromJSString <$>
      (webkit_dom_storage_key (unStorage (toStorage self)) index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getItem\"]($2)"
        webkit_dom_storage_get_item ::
        JSRef Storage -> JSString -> IO JSString
#else 
webkit_dom_storage_get_item ::
                              JSRef Storage -> JSString -> IO JSString
webkit_dom_storage_get_item = undefined
#endif
 
storageGetItem ::
               (StorageClass self, ToJSString key, FromJSString result) =>
                 self -> key -> IO result
storageGetItem self key
  = fromJSString <$>
      (webkit_dom_storage_get_item (unStorage (toStorage self))
         (toJSString key))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setItem\"]($2, $3)"
        webkit_dom_storage_set_item ::
        JSRef Storage -> JSString -> JSString -> IO ()
#else 
webkit_dom_storage_set_item ::
                              JSRef Storage -> JSString -> JSString -> IO ()
webkit_dom_storage_set_item = undefined
#endif
 
storageSetItem ::
               (StorageClass self, ToJSString key, ToJSString data') =>
                 self -> key -> data' -> IO ()
storageSetItem self key data'
  = webkit_dom_storage_set_item (unStorage (toStorage self))
      (toJSString key)
      (toJSString data')


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        webkit_dom_storage_remove_item ::
        JSRef Storage -> JSString -> IO ()
#else 
webkit_dom_storage_remove_item ::
                                 JSRef Storage -> JSString -> IO ()
webkit_dom_storage_remove_item = undefined
#endif
 
storageRemoveItem ::
                  (StorageClass self, ToJSString key) => self -> key -> IO ()
storageRemoveItem self key
  = webkit_dom_storage_remove_item (unStorage (toStorage self))
      (toJSString key)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]()"
        webkit_dom_storage_clear :: JSRef Storage -> IO ()
#else 
webkit_dom_storage_clear :: JSRef Storage -> IO ()
webkit_dom_storage_clear = undefined
#endif
 
storageClear :: (StorageClass self) => self -> IO ()
storageClear self
  = webkit_dom_storage_clear (unStorage (toStorage self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_storage_get_length :: JSRef Storage -> IO Word
#else 
webkit_dom_storage_get_length :: JSRef Storage -> IO Word
webkit_dom_storage_get_length = undefined
#endif
 
storageGetLength :: (StorageClass self) => self -> IO Word
storageGetLength self
  = webkit_dom_storage_get_length (unStorage (toStorage self))