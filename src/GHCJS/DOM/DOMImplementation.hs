{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMImplementation
       (webkit_dom_dom_implementation_has_feature,
        domImplementationHasFeature,
        webkit_dom_dom_implementation_create_document_type,
        domImplementationCreateDocumentType,
        webkit_dom_dom_implementation_create_document,
        domImplementationCreateDocument,
        webkit_dom_dom_implementation_create_css_style_sheet,
        domImplementationCreateCSSStyleSheet,
        webkit_dom_dom_implementation_create_html_document,
        domImplementationCreateHTMLDocument)
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
foreign import javascript unsafe
        "($1[\"hasFeature\"]($2,\n$3) ? 1 : 0)"
        webkit_dom_dom_implementation_has_feature ::
        JSRef DOMImplementation -> JSString -> JSString -> IO JSBool
#else 
webkit_dom_dom_implementation_has_feature ::
                                            JSRef DOMImplementation ->
                                              JSString -> JSString -> IO JSBool
webkit_dom_dom_implementation_has_feature = undefined
#endif
 
domImplementationHasFeature ::
                            (DOMImplementationClass self, ToJSString feature,
                             ToJSString version) =>
                              self -> feature -> version -> IO Bool
domImplementationHasFeature self feature version
  = fromJSBool <$>
      (webkit_dom_dom_implementation_has_feature
         (unDOMImplementation (toDOMImplementation self))
         (toJSString feature)
         (toJSString version))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createDocumentType\"]($2, $3,\n$4)"
        webkit_dom_dom_implementation_create_document_type ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSString -> IO (JSRef DocumentType)
#else 
webkit_dom_dom_implementation_create_document_type ::
                                                     JSRef DOMImplementation ->
                                                       JSString ->
                                                         JSString ->
                                                           JSString -> IO (JSRef DocumentType)
webkit_dom_dom_implementation_create_document_type = undefined
#endif
 
domImplementationCreateDocumentType ::
                                    (DOMImplementationClass self, ToJSString qualifiedName,
                                     ToJSString publicId, ToJSString systemId) =>
                                      self ->
                                        qualifiedName ->
                                          publicId -> systemId -> IO (Maybe DocumentType)
domImplementationCreateDocumentType self qualifiedName publicId
  systemId
  = fmap DocumentType . maybeJSNull <$>
      (webkit_dom_dom_implementation_create_document_type
         (unDOMImplementation (toDOMImplementation self))
         (toJSString qualifiedName)
         (toJSString publicId)
         (toJSString systemId))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createDocument\"]($2, $3, $4)"
        webkit_dom_dom_implementation_create_document ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSRef DocumentType -> IO (JSRef Document)
#else 
webkit_dom_dom_implementation_create_document ::
                                                JSRef DOMImplementation ->
                                                  JSString ->
                                                    JSString ->
                                                      JSRef DocumentType -> IO (JSRef Document)
webkit_dom_dom_implementation_create_document = undefined
#endif
 
domImplementationCreateDocument ::
                                (DOMImplementationClass self, ToJSString namespaceURI,
                                 ToJSString qualifiedName, DocumentTypeClass doctype) =>
                                  self ->
                                    namespaceURI ->
                                      qualifiedName -> Maybe doctype -> IO (Maybe Document)
domImplementationCreateDocument self namespaceURI qualifiedName
  doctype
  = fmap Document . maybeJSNull <$>
      (webkit_dom_dom_implementation_create_document
         (unDOMImplementation (toDOMImplementation self))
         (toJSString namespaceURI)
         (toJSString qualifiedName)
         (maybe jsNull (unDocumentType . toDocumentType) doctype))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"createCSSStyleSheet\"]($2,\n$3)"
        webkit_dom_dom_implementation_create_css_style_sheet ::
        JSRef DOMImplementation ->
          JSString -> JSString -> IO (JSRef CSSStyleSheet)
#else 
webkit_dom_dom_implementation_create_css_style_sheet ::
                                                       JSRef DOMImplementation ->
                                                         JSString ->
                                                           JSString -> IO (JSRef CSSStyleSheet)
webkit_dom_dom_implementation_create_css_style_sheet = undefined
#endif
 
domImplementationCreateCSSStyleSheet ::
                                     (DOMImplementationClass self, ToJSString title,
                                      ToJSString media) =>
                                       self -> title -> media -> IO (Maybe CSSStyleSheet)
domImplementationCreateCSSStyleSheet self title media
  = fmap CSSStyleSheet . maybeJSNull <$>
      (webkit_dom_dom_implementation_create_css_style_sheet
         (unDOMImplementation (toDOMImplementation self))
         (toJSString title)
         (toJSString media))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        webkit_dom_dom_implementation_create_html_document ::
        JSRef DOMImplementation -> JSString -> IO (JSRef HTMLDocument)
#else 
webkit_dom_dom_implementation_create_html_document ::
                                                     JSRef DOMImplementation ->
                                                       JSString -> IO (JSRef HTMLDocument)
webkit_dom_dom_implementation_create_html_document = undefined
#endif
 
domImplementationCreateHTMLDocument ::
                                    (DOMImplementationClass self, ToJSString title) =>
                                      self -> title -> IO (Maybe HTMLDocument)
domImplementationCreateHTMLDocument self title
  = fmap HTMLDocument . maybeJSNull <$>
      (webkit_dom_dom_implementation_create_html_document
         (unDOMImplementation (toDOMImplementation self))
         (toJSString title))