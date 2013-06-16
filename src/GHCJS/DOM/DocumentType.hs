{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DocumentType
       (webkit_dom_document_type_get_name, documentTypeGetName,
        webkit_dom_document_type_get_entities, documentTypeGetEntities,
        webkit_dom_document_type_get_notations, documentTypeGetNotations,
        webkit_dom_document_type_get_public_id, documentTypeGetPublicId,
        webkit_dom_document_type_get_system_id, documentTypeGetSystemId,
        webkit_dom_document_type_get_internal_subset,
        documentTypeGetInternalSubset)
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
foreign import javascript unsafe "$1[\"name\"]"
        webkit_dom_document_type_get_name ::
        JSRef DocumentType -> IO JSString
#else 
webkit_dom_document_type_get_name ::
                                    JSRef DocumentType -> IO JSString
webkit_dom_document_type_get_name = undefined
#endif
 
documentTypeGetName ::
                    (DocumentTypeClass self, FromJSString result) => self -> IO result
documentTypeGetName self
  = fromJSString <$>
      (webkit_dom_document_type_get_name
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"entities\"]"
        webkit_dom_document_type_get_entities ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
#else 
webkit_dom_document_type_get_entities ::
                                        JSRef DocumentType -> IO (JSRef NamedNodeMap)
webkit_dom_document_type_get_entities = undefined
#endif
 
documentTypeGetEntities ::
                        (DocumentTypeClass self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetEntities self
  = fmap NamedNodeMap . maybeJSNull <$>
      (webkit_dom_document_type_get_entities
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"notations\"]"
        webkit_dom_document_type_get_notations ::
        JSRef DocumentType -> IO (JSRef NamedNodeMap)
#else 
webkit_dom_document_type_get_notations ::
                                         JSRef DocumentType -> IO (JSRef NamedNodeMap)
webkit_dom_document_type_get_notations = undefined
#endif
 
documentTypeGetNotations ::
                         (DocumentTypeClass self) => self -> IO (Maybe NamedNodeMap)
documentTypeGetNotations self
  = fmap NamedNodeMap . maybeJSNull <$>
      (webkit_dom_document_type_get_notations
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"publicId\"]"
        webkit_dom_document_type_get_public_id ::
        JSRef DocumentType -> IO JSString
#else 
webkit_dom_document_type_get_public_id ::
                                         JSRef DocumentType -> IO JSString
webkit_dom_document_type_get_public_id = undefined
#endif
 
documentTypeGetPublicId ::
                        (DocumentTypeClass self, FromJSString result) => self -> IO result
documentTypeGetPublicId self
  = fromJSString <$>
      (webkit_dom_document_type_get_public_id
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"systemId\"]"
        webkit_dom_document_type_get_system_id ::
        JSRef DocumentType -> IO JSString
#else 
webkit_dom_document_type_get_system_id ::
                                         JSRef DocumentType -> IO JSString
webkit_dom_document_type_get_system_id = undefined
#endif
 
documentTypeGetSystemId ::
                        (DocumentTypeClass self, FromJSString result) => self -> IO result
documentTypeGetSystemId self
  = fromJSString <$>
      (webkit_dom_document_type_get_system_id
         (unDocumentType (toDocumentType self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        webkit_dom_document_type_get_internal_subset ::
        JSRef DocumentType -> IO JSString
#else 
webkit_dom_document_type_get_internal_subset ::
                                               JSRef DocumentType -> IO JSString
webkit_dom_document_type_get_internal_subset = undefined
#endif
 
documentTypeGetInternalSubset ::
                              (DocumentTypeClass self, FromJSString result) => self -> IO result
documentTypeGetInternalSubset self
  = fromJSString <$>
      (webkit_dom_document_type_get_internal_subset
         (unDocumentType (toDocumentType self)))