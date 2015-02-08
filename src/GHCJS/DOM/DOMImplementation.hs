{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMImplementation
       (ghcjs_dom_dom_implementation_has_feature,
        domImplementationHasFeature,
        ghcjs_dom_dom_implementation_create_document_type,
        domImplementationCreateDocumentType,
        ghcjs_dom_dom_implementation_create_document,
        domImplementationCreateDocument,
        ghcjs_dom_dom_implementation_create_css_style_sheet,
        domImplementationCreateCSSStyleSheet,
        ghcjs_dom_dom_implementation_create_html_document,
        domImplementationCreateHTMLDocument, DOMImplementation,
        IsDOMImplementation, castToDOMImplementation,
        gTypeDOMImplementation, toDOMImplementation)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"hasFeature\"]($2,\n$3) ? 1 : 0)"
        ghcjs_dom_dom_implementation_has_feature ::
        JSRef DOMImplementation -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
domImplementationHasFeature ::
                            (MonadIO m, IsDOMImplementation self, ToJSString feature,
                             ToJSString version) =>
                              self -> feature -> version -> m Bool
domImplementationHasFeature self feature version
  = liftIO
      (ghcjs_dom_dom_implementation_has_feature
         (unDOMImplementation (toDOMImplementation self))
         (toJSString feature)
         (toJSString version))
 
foreign import javascript unsafe
        "$1[\"createDocumentType\"]($2, $3,\n$4)"
        ghcjs_dom_dom_implementation_create_document_type ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSString -> IO (JSRef DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
domImplementationCreateDocumentType ::
                                    (MonadIO m, IsDOMImplementation self, ToJSString qualifiedName,
                                     ToJSString publicId, ToJSString systemId) =>
                                      self ->
                                        qualifiedName ->
                                          publicId -> systemId -> m (Maybe DocumentType)
domImplementationCreateDocumentType self qualifiedName publicId
  systemId
  = liftIO
      ((ghcjs_dom_dom_implementation_create_document_type
          (unDOMImplementation (toDOMImplementation self))
          (toJSString qualifiedName)
          (toJSString publicId)
          (toJSString systemId))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createDocument\"]($2, $3, $4)"
        ghcjs_dom_dom_implementation_create_document ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSRef DocumentType -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
domImplementationCreateDocument ::
                                (MonadIO m, IsDOMImplementation self, ToJSString namespaceURI,
                                 ToJSString qualifiedName, IsDocumentType doctype) =>
                                  self ->
                                    namespaceURI ->
                                      qualifiedName -> Maybe doctype -> m (Maybe Document)
domImplementationCreateDocument self namespaceURI qualifiedName
  doctype
  = liftIO
      ((ghcjs_dom_dom_implementation_create_document
          (unDOMImplementation (toDOMImplementation self))
          (toJSString namespaceURI)
          (toJSString qualifiedName)
          (maybe jsNull (unDocumentType . toDocumentType) doctype))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createCSSStyleSheet\"]($2,\n$3)"
        ghcjs_dom_dom_implementation_create_css_style_sheet ::
        JSRef DOMImplementation ->
          JSString -> JSString -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
domImplementationCreateCSSStyleSheet ::
                                     (MonadIO m, IsDOMImplementation self, ToJSString title,
                                      ToJSString media) =>
                                       self -> title -> media -> m (Maybe CSSStyleSheet)
domImplementationCreateCSSStyleSheet self title media
  = liftIO
      ((ghcjs_dom_dom_implementation_create_css_style_sheet
          (unDOMImplementation (toDOMImplementation self))
          (toJSString title)
          (toJSString media))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        ghcjs_dom_dom_implementation_create_html_document ::
        JSRef DOMImplementation -> JSString -> IO (JSRef HTMLDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
domImplementationCreateHTMLDocument ::
                                    (MonadIO m, IsDOMImplementation self, ToJSString title) =>
                                      self -> title -> m (Maybe HTMLDocument)
domImplementationCreateHTMLDocument self title
  = liftIO
      ((ghcjs_dom_dom_implementation_create_html_document
          (unDOMImplementation (toDOMImplementation self))
          (toJSString title))
         >>= fromJSRef)
#else
module GHCJS.DOM.DOMImplementation (
  module Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMImplementation
#endif
