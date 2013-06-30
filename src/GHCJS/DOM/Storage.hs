{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Storage
       (ghcjs_dom_storage_key, storageKey, ghcjs_dom_storage_get_item,
        storageGetItem, ghcjs_dom_storage_set_item, storageSetItem,
        ghcjs_dom_storage_remove_item, storageRemoveItem,
        ghcjs_dom_storage_clear, storageClear,
        ghcjs_dom_storage_get_length, storageGetLength)
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


#ifdef __GHCJS__ 
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


#ifdef __GHCJS__ 
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


#ifdef __GHCJS__ 
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


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_storage_clear :: JSRef Storage -> IO ()
#else 
ghcjs_dom_storage_clear :: JSRef Storage -> IO ()
ghcjs_dom_storage_clear = undefined
#endif
 
storageClear :: (IsStorage self) => self -> IO ()
storageClear self
  = ghcjs_dom_storage_clear (unStorage (toStorage self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_storage_get_length :: JSRef Storage -> IO Word
#else 
ghcjs_dom_storage_get_length :: JSRef Storage -> IO Word
ghcjs_dom_storage_get_length = undefined
#endif
 
storageGetLength :: (IsStorage self) => self -> IO Word
storageGetLength self
  = ghcjs_dom_storage_get_length (unStorage (toStorage self))