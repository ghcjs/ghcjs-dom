{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMImplementation
       (js_hasFeature, hasFeature, js_createDocumentType,
        createDocumentType, js_createDocument, createDocument,
        js_createCSSStyleSheet, createCSSStyleSheet, js_createHTMLDocument,
        createHTMLDocument, DOMImplementation, castToDOMImplementation,
        gTypeDOMImplementation)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe
        "($1[\"hasFeature\"]($2,\n$3) ? 1 : 0)" js_hasFeature ::
        DOMImplementation -> JSString -> Nullable JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature ::
           (MonadIO m, ToJSString feature, ToJSString version) =>
             DOMImplementation -> feature -> Maybe version -> m Bool
hasFeature self feature version
  = liftIO
      (js_hasFeature (self) (toJSString feature)
         (toMaybeJSString version))
 
foreign import javascript unsafe
        "$1[\"createDocumentType\"]($2, $3,\n$4)" js_createDocumentType ::
        DOMImplementation ->
          Nullable JSString ->
            Nullable JSString ->
              Nullable JSString -> IO (Nullable DocumentType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType ::
                   (MonadIO m, ToJSString qualifiedName, ToJSString publicId,
                    ToJSString systemId) =>
                     DOMImplementation ->
                       Maybe qualifiedName ->
                         Maybe publicId -> Maybe systemId -> m (Maybe DocumentType)
createDocumentType self qualifiedName publicId systemId
  = liftIO
      (nullableToMaybe <$>
         (js_createDocumentType (self) (toMaybeJSString qualifiedName)
            (toMaybeJSString publicId)
            (toMaybeJSString systemId)))
 
foreign import javascript unsafe
        "$1[\"createDocument\"]($2, $3, $4)" js_createDocument ::
        DOMImplementation ->
          Nullable JSString ->
            Nullable JSString ->
              Nullable DocumentType -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument ::
               (MonadIO m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                 DOMImplementation ->
                   Maybe namespaceURI ->
                     Maybe qualifiedName -> Maybe DocumentType -> m (Maybe Document)
createDocument self namespaceURI qualifiedName doctype
  = liftIO
      (nullableToMaybe <$>
         (js_createDocument (self) (toMaybeJSString namespaceURI)
            (toMaybeJSString qualifiedName)
            (maybeToNullable doctype)))
 
foreign import javascript unsafe
        "$1[\"createCSSStyleSheet\"]($2,\n$3)" js_createCSSStyleSheet ::
        DOMImplementation ->
          JSString -> JSString -> IO (Nullable CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createCSSStyleSheet Mozilla DOMImplementation.createCSSStyleSheet documentation> 
createCSSStyleSheet ::
                    (MonadIO m, ToJSString title, ToJSString media) =>
                      DOMImplementation -> title -> media -> m (Maybe CSSStyleSheet)
createCSSStyleSheet self title media
  = liftIO
      (nullableToMaybe <$>
         (js_createCSSStyleSheet (self) (toJSString title)
            (toJSString media)))
 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        js_createHTMLDocument ::
        DOMImplementation -> JSString -> IO (Nullable HTMLDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument ::
                   (MonadIO m, ToJSString title) =>
                     DOMImplementation -> title -> m (Maybe HTMLDocument)
createHTMLDocument self title
  = liftIO
      (nullableToMaybe <$>
         (js_createHTMLDocument (self) (toJSString title)))