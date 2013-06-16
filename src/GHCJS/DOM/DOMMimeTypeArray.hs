{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMMimeTypeArray
       (webkit_dom_dom_mime_type_array_item, domMimeTypeArrayItem,
        webkit_dom_dom_mime_type_array_named_item,
        domMimeTypeArrayNamedItem,
        webkit_dom_dom_mime_type_array_get_length,
        domMimeTypeArrayGetLength)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_dom_mime_type_array_item ::
        JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)
#else 
webkit_dom_dom_mime_type_array_item ::
                                      JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)
webkit_dom_dom_mime_type_array_item = undefined
#endif
 
domMimeTypeArrayItem ::
                     (DOMMimeTypeArrayClass self) =>
                       self -> Word -> IO (Maybe DOMMimeType)
domMimeTypeArrayItem self index
  = fmap DOMMimeType . maybeJSNull <$>
      (webkit_dom_dom_mime_type_array_item
         (unDOMMimeTypeArray (toDOMMimeTypeArray self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        webkit_dom_dom_mime_type_array_named_item ::
        JSRef DOMMimeTypeArray -> JSString -> IO (JSRef DOMMimeType)
#else 
webkit_dom_dom_mime_type_array_named_item ::
                                            JSRef DOMMimeTypeArray ->
                                              JSString -> IO (JSRef DOMMimeType)
webkit_dom_dom_mime_type_array_named_item = undefined
#endif
 
domMimeTypeArrayNamedItem ::
                          (DOMMimeTypeArrayClass self, ToJSString name) =>
                            self -> name -> IO (Maybe DOMMimeType)
domMimeTypeArrayNamedItem self name
  = fmap DOMMimeType . maybeJSNull <$>
      (webkit_dom_dom_mime_type_array_named_item
         (unDOMMimeTypeArray (toDOMMimeTypeArray self))
         (toJSString name))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_dom_mime_type_array_get_length ::
        JSRef DOMMimeTypeArray -> IO Word
#else 
webkit_dom_dom_mime_type_array_get_length ::
                                            JSRef DOMMimeTypeArray -> IO Word
webkit_dom_dom_mime_type_array_get_length = undefined
#endif
 
domMimeTypeArrayGetLength ::
                          (DOMMimeTypeArrayClass self) => self -> IO Word
domMimeTypeArrayGetLength self
  = webkit_dom_dom_mime_type_array_get_length
      (unDOMMimeTypeArray (toDOMMimeTypeArray self))