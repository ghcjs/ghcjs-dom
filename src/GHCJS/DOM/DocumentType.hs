{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DocumentType
       (ghcjs_dom_document_type_get_name, documentTypeGetName,
        ghcjs_dom_document_type_get_entities, documentTypeGetEntities,
        ghcjs_dom_document_type_get_notations, documentTypeGetNotations,
        ghcjs_dom_document_type_get_public_id, documentTypeGetPublicId,
        ghcjs_dom_document_type_get_system_id, documentTypeGetSystemId,
        ghcjs_dom_document_type_get_internal_subset,
        documentTypeGetInternalSubset, DocumentType, IsDocumentType,
        castToDocumentType, gTypeDocumentType, toDocumentType)
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

 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_document_type_get_name ::
        JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
documentTypeGetName ::
                    (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetName self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_name
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"entities\"]"
        ghcjs_dom_document_type_get_entities ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
documentTypeGetEntities ::
                        (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetEntities self
  = (ghcjs_dom_document_type_get_entities
       (unDocumentType (toDocumentType self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"notations\"]"
        ghcjs_dom_document_type_get_notations ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
documentTypeGetNotations ::
                         (IsDocumentType self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetNotations self
  = (ghcjs_dom_document_type_get_notations
       (unDocumentType (toDocumentType self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"publicId\"]"
        ghcjs_dom_document_type_get_public_id ::
        JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
documentTypeGetPublicId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetPublicId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_public_id
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"systemId\"]"
        ghcjs_dom_document_type_get_system_id ::
        JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
documentTypeGetSystemId ::
                        (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetSystemId self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_system_id
         (unDocumentType (toDocumentType self)))
 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        ghcjs_dom_document_type_get_internal_subset ::
        JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
documentTypeGetInternalSubset ::
                              (IsDocumentType self, FromJSString result) => self -> IO result
documentTypeGetInternalSubset self
  = fromJSString <$>
      (ghcjs_dom_document_type_get_internal_subset
         (unDocumentType (toDocumentType self)))
#else
module GHCJS.DOM.DocumentType (
  module Graphics.UI.Gtk.WebKit.DOM.DocumentType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DocumentType
#endif
