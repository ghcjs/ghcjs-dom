{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMImplementation
       (js_hasFeature, hasFeature, js_createDocumentType,
        createDocumentType, js_createDocument, createDocument,
        js_createCSSStyleSheet, createCSSStyleSheet, js_createHTMLDocument,
        createHTMLDocument, DOMImplementation, castToDOMImplementation,
        gTypeDOMImplementation)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "($1[\"hasFeature\"]($2,\n$3) ? 1 : 0)" js_hasFeature ::
        JSRef DOMImplementation -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature ::
           (MonadIO m, ToJSString feature, ToJSString version) =>
             DOMImplementation -> feature -> version -> m Bool
hasFeature self feature version
  = liftIO
      (js_hasFeature (unDOMImplementation self) (toJSString feature)
         (toJSString version))
 
foreign import javascript unsafe
        "$1[\"createDocumentType\"]($2, $3,\n$4)" js_createDocumentType ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSString -> IO (JSRef DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType ::
                   (MonadIO m, ToJSString qualifiedName, ToJSString publicId,
                    ToJSString systemId) =>
                     DOMImplementation ->
                       qualifiedName -> publicId -> systemId -> m (Maybe DocumentType)
createDocumentType self qualifiedName publicId systemId
  = liftIO
      ((js_createDocumentType (unDOMImplementation self)
          (toJSString qualifiedName)
          (toJSString publicId)
          (toJSString systemId))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createDocument\"]($2, $3, $4)" js_createDocument ::
        JSRef DOMImplementation ->
          JSString -> JSString -> JSRef DocumentType -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument ::
               (MonadIO m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                 DOMImplementation ->
                   namespaceURI ->
                     qualifiedName -> Maybe DocumentType -> m (Maybe Document)
createDocument self namespaceURI qualifiedName doctype
  = liftIO
      ((js_createDocument (unDOMImplementation self)
          (toJSString namespaceURI)
          (toJSString qualifiedName)
          (maybe jsNull pToJSRef doctype))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"createCSSStyleSheet\"]($2,\n$3)" js_createCSSStyleSheet ::
        JSRef DOMImplementation ->
          JSString -> JSString -> IO (JSRef CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
createCSSStyleSheet ::
                    (MonadIO m, ToJSString title, ToJSString media) =>
                      DOMImplementation -> title -> media -> m (Maybe CSSStyleSheet)
createCSSStyleSheet self title media
  = liftIO
      ((js_createCSSStyleSheet (unDOMImplementation self)
          (toJSString title)
          (toJSString media))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        js_createHTMLDocument ::
        JSRef DOMImplementation -> JSString -> IO (JSRef HTMLDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument ::
                   (MonadIO m, ToJSString title) =>
                     DOMImplementation -> title -> m (Maybe HTMLDocument)
createHTMLDocument self title
  = liftIO
      ((js_createHTMLDocument (unDOMImplementation self)
          (toJSString title))
         >>= fromJSRef)