{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMMimeType
       (ghcjs_dom_dom_mime_type_get_suffixes, domMimeTypeGetSuffixes,
        ghcjs_dom_dom_mime_type_get_description, domMimeTypeGetDescription,
        ghcjs_dom_dom_mime_type_get_enabled_plugin,
        domMimeTypeGetEnabledPlugin, DOMMimeType, IsDOMMimeType,
        castToDOMMimeType, gTypeDOMMimeType, toDOMMimeType)
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
foreign import javascript unsafe "$1[\"suffixes\"]"
        ghcjs_dom_dom_mime_type_get_suffixes ::
        JSRef DOMMimeType -> IO JSString
#else 
ghcjs_dom_dom_mime_type_get_suffixes ::
                                       JSRef DOMMimeType -> IO JSString
ghcjs_dom_dom_mime_type_get_suffixes = undefined
#endif
 
domMimeTypeGetSuffixes ::
                       (IsDOMMimeType self, FromJSString result) => self -> IO result
domMimeTypeGetSuffixes self
  = fromJSString <$>
      (ghcjs_dom_dom_mime_type_get_suffixes
         (unDOMMimeType (toDOMMimeType self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"description\"]"
        ghcjs_dom_dom_mime_type_get_description ::
        JSRef DOMMimeType -> IO JSString
#else 
ghcjs_dom_dom_mime_type_get_description ::
                                          JSRef DOMMimeType -> IO JSString
ghcjs_dom_dom_mime_type_get_description = undefined
#endif
 
domMimeTypeGetDescription ::
                          (IsDOMMimeType self, FromJSString result) => self -> IO result
domMimeTypeGetDescription self
  = fromJSString <$>
      (ghcjs_dom_dom_mime_type_get_description
         (unDOMMimeType (toDOMMimeType self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        ghcjs_dom_dom_mime_type_get_enabled_plugin ::
        JSRef DOMMimeType -> IO (JSRef DOMPlugin)
#else 
ghcjs_dom_dom_mime_type_get_enabled_plugin ::
                                             JSRef DOMMimeType -> IO (JSRef DOMPlugin)
ghcjs_dom_dom_mime_type_get_enabled_plugin = undefined
#endif
 
domMimeTypeGetEnabledPlugin ::
                            (IsDOMMimeType self) => self -> IO (Maybe DOMPlugin)
domMimeTypeGetEnabledPlugin self
  = fmap DOMPlugin . maybeJSNull <$>
      (ghcjs_dom_dom_mime_type_get_enabled_plugin
         (unDOMMimeType (toDOMMimeType self)))
#else
module GHCJS.DOM.DOMMimeType (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
#endif
