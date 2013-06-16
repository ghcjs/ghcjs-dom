{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMMimeType
       (webkit_dom_dom_mime_type_get_suffixes, domMimeTypeGetSuffixes,
        webkit_dom_dom_mime_type_get_description,
        domMimeTypeGetDescription,
        webkit_dom_dom_mime_type_get_enabled_plugin,
        domMimeTypeGetEnabledPlugin)
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
foreign import javascript unsafe "$1[\"suffixes\"]"
        webkit_dom_dom_mime_type_get_suffixes ::
        JSRef DOMMimeType -> IO JSString
#else 
webkit_dom_dom_mime_type_get_suffixes ::
                                        JSRef DOMMimeType -> IO JSString
webkit_dom_dom_mime_type_get_suffixes = undefined
#endif
 
domMimeTypeGetSuffixes ::
                       (DOMMimeTypeClass self, FromJSString result) => self -> IO result
domMimeTypeGetSuffixes self
  = fromJSString <$>
      (webkit_dom_dom_mime_type_get_suffixes
         (unDOMMimeType (toDOMMimeType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"description\"]"
        webkit_dom_dom_mime_type_get_description ::
        JSRef DOMMimeType -> IO JSString
#else 
webkit_dom_dom_mime_type_get_description ::
                                           JSRef DOMMimeType -> IO JSString
webkit_dom_dom_mime_type_get_description = undefined
#endif
 
domMimeTypeGetDescription ::
                          (DOMMimeTypeClass self, FromJSString result) => self -> IO result
domMimeTypeGetDescription self
  = fromJSString <$>
      (webkit_dom_dom_mime_type_get_description
         (unDOMMimeType (toDOMMimeType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        webkit_dom_dom_mime_type_get_enabled_plugin ::
        JSRef DOMMimeType -> IO (JSRef DOMPlugin)
#else 
webkit_dom_dom_mime_type_get_enabled_plugin ::
                                              JSRef DOMMimeType -> IO (JSRef DOMPlugin)
webkit_dom_dom_mime_type_get_enabled_plugin = undefined
#endif
 
domMimeTypeGetEnabledPlugin ::
                            (DOMMimeTypeClass self) => self -> IO (Maybe DOMPlugin)
domMimeTypeGetEnabledPlugin self
  = fmap DOMPlugin . maybeJSNull <$>
      (webkit_dom_dom_mime_type_get_enabled_plugin
         (unDOMMimeType (toDOMMimeType self)))