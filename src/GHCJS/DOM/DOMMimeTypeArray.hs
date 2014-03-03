{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMMimeTypeArray
       (ghcjs_dom_dom_mime_type_array_item, domMimeTypeArrayItem,
        ghcjs_dom_dom_mime_type_array_named_item,
        domMimeTypeArrayNamedItem,
        ghcjs_dom_dom_mime_type_array_get_length,
        domMimeTypeArrayGetLength, DOMMimeTypeArray, IsDOMMimeTypeArray,
        castToDOMMimeTypeArray, gTypeDOMMimeTypeArray, toDOMMimeTypeArray)
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
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_dom_mime_type_array_item ::
        JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)
#else 
ghcjs_dom_dom_mime_type_array_item ::
                                     JSRef DOMMimeTypeArray -> Word -> IO (JSRef DOMMimeType)
ghcjs_dom_dom_mime_type_array_item = undefined
#endif
 
domMimeTypeArrayItem ::
                     (IsDOMMimeTypeArray self) => self -> Word -> IO (Maybe DOMMimeType)
domMimeTypeArrayItem self index
  = fmap DOMMimeType . maybeJSNull <$>
      (ghcjs_dom_dom_mime_type_array_item
         (unDOMMimeTypeArray (toDOMMimeTypeArray self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        ghcjs_dom_dom_mime_type_array_named_item ::
        JSRef DOMMimeTypeArray -> JSString -> IO (JSRef DOMMimeType)
#else 
ghcjs_dom_dom_mime_type_array_named_item ::
                                           JSRef DOMMimeTypeArray ->
                                             JSString -> IO (JSRef DOMMimeType)
ghcjs_dom_dom_mime_type_array_named_item = undefined
#endif
 
domMimeTypeArrayNamedItem ::
                          (IsDOMMimeTypeArray self, ToJSString name) =>
                            self -> name -> IO (Maybe DOMMimeType)
domMimeTypeArrayNamedItem self name
  = fmap DOMMimeType . maybeJSNull <$>
      (ghcjs_dom_dom_mime_type_array_named_item
         (unDOMMimeTypeArray (toDOMMimeTypeArray self))
         (toJSString name))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_dom_mime_type_array_get_length ::
        JSRef DOMMimeTypeArray -> IO Word
#else 
ghcjs_dom_dom_mime_type_array_get_length ::
                                           JSRef DOMMimeTypeArray -> IO Word
ghcjs_dom_dom_mime_type_array_get_length = undefined
#endif
 
domMimeTypeArrayGetLength ::
                          (IsDOMMimeTypeArray self) => self -> IO Word
domMimeTypeArrayGetLength self
  = ghcjs_dom_dom_mime_type_array_get_length
      (unDOMMimeTypeArray (toDOMMimeTypeArray self))
#else
module GHCJS.DOM.DOMMimeTypeArray (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeTypeArray
#endif
