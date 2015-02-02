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

 
foreign import javascript unsafe "$1[\"suffixes\"]"
        ghcjs_dom_dom_mime_type_get_suffixes ::
        JSRef DOMMimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.suffixes Mozilla MimeType.suffixes documentation> 
domMimeTypeGetSuffixes ::
                       (IsDOMMimeType self, FromJSString result) => self -> IO result
domMimeTypeGetSuffixes self
  = fromJSString <$>
      (ghcjs_dom_dom_mime_type_get_suffixes
         (unDOMMimeType (toDOMMimeType self)))
 
foreign import javascript unsafe "$1[\"description\"]"
        ghcjs_dom_dom_mime_type_get_description ::
        JSRef DOMMimeType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.description Mozilla MimeType.description documentation> 
domMimeTypeGetDescription ::
                          (IsDOMMimeType self, FromJSString result) => self -> IO result
domMimeTypeGetDescription self
  = fromJSString <$>
      (ghcjs_dom_dom_mime_type_get_description
         (unDOMMimeType (toDOMMimeType self)))
 
foreign import javascript unsafe "$1[\"enabledPlugin\"]"
        ghcjs_dom_dom_mime_type_get_enabled_plugin ::
        JSRef DOMMimeType -> IO (JSRef DOMPlugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeType.enabledPlugin Mozilla MimeType.enabledPlugin documentation> 
domMimeTypeGetEnabledPlugin ::
                            (IsDOMMimeType self) => self -> IO (Maybe DOMPlugin)
domMimeTypeGetEnabledPlugin self
  = (ghcjs_dom_dom_mime_type_get_enabled_plugin
       (unDOMMimeType (toDOMMimeType self)))
      >>= fromJSRef
#else
module GHCJS.DOM.DOMMimeType (
  module Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMMimeType
#endif
