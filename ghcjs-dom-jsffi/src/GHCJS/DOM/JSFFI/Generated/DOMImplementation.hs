{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DOMImplementation
       (js_createDocumentType, createDocumentType, createDocumentType_,
        js_createDocument, createDocument, createDocument_,
        js_createHTMLDocument, createHTMLDocument, createHTMLDocument_,
        js_hasFeature, hasFeature, hasFeature_, DOMImplementation(..),
        gTypeDOMImplementation)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe
        "$1[\"createDocumentType\"]($2, $3,\n$4)" js_createDocumentType ::
        DOMImplementation ->
          JSString -> JSString -> JSString -> IO DocumentType

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType ::
                   (MonadIO m, ToJSString qualifiedName, ToJSString publicId,
                    ToJSString systemId) =>
                     DOMImplementation ->
                       qualifiedName -> publicId -> systemId -> m DocumentType
createDocumentType self qualifiedName publicId systemId
  = liftIO
      (js_createDocumentType self (toJSString qualifiedName)
         (toJSString publicId)
         (toJSString systemId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocumentType Mozilla DOMImplementation.createDocumentType documentation> 
createDocumentType_ ::
                    (MonadIO m, ToJSString qualifiedName, ToJSString publicId,
                     ToJSString systemId) =>
                      DOMImplementation -> qualifiedName -> publicId -> systemId -> m ()
createDocumentType_ self qualifiedName publicId systemId
  = liftIO
      (void
         (js_createDocumentType self (toJSString qualifiedName)
            (toJSString publicId)
            (toJSString systemId)))
 
foreign import javascript safe "$1[\"createDocument\"]($2, $3, $4)"
        js_createDocument ::
        DOMImplementation ->
          Optional JSString ->
            JSString -> Optional DocumentType -> IO XMLDocument

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument ::
               (MonadIO m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                 DOMImplementation ->
                   Maybe namespaceURI ->
                     qualifiedName -> Maybe DocumentType -> m XMLDocument
createDocument self namespaceURI qualifiedName doctype
  = liftIO
      (js_createDocument self (toOptionalJSString namespaceURI)
         (toJSString qualifiedName)
         (maybeToOptional doctype))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createDocument Mozilla DOMImplementation.createDocument documentation> 
createDocument_ ::
                (MonadIO m, ToJSString namespaceURI, ToJSString qualifiedName) =>
                  DOMImplementation ->
                    Maybe namespaceURI -> qualifiedName -> Maybe DocumentType -> m ()
createDocument_ self namespaceURI qualifiedName doctype
  = liftIO
      (void
         (js_createDocument self (toOptionalJSString namespaceURI)
            (toJSString qualifiedName)
            (maybeToOptional doctype)))
 
foreign import javascript unsafe "$1[\"createHTMLDocument\"]($2)"
        js_createHTMLDocument ::
        DOMImplementation -> Optional JSString -> IO HTMLDocument

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument ::
                   (MonadIO m, ToJSString title) =>
                     DOMImplementation -> Maybe title -> m HTMLDocument
createHTMLDocument self title
  = liftIO (js_createHTMLDocument self (toOptionalJSString title))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.createHTMLDocument Mozilla DOMImplementation.createHTMLDocument documentation> 
createHTMLDocument_ ::
                    (MonadIO m, ToJSString title) =>
                      DOMImplementation -> Maybe title -> m ()
createHTMLDocument_ self title
  = liftIO
      (void (js_createHTMLDocument self (toOptionalJSString title)))
 
foreign import javascript unsafe "($1[\"hasFeature\"]() ? 1 : 0)"
        js_hasFeature :: DOMImplementation -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature :: (MonadIO m) => DOMImplementation -> m Bool
hasFeature self = liftIO (js_hasFeature self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMImplementation.hasFeature Mozilla DOMImplementation.hasFeature documentation> 
hasFeature_ :: (MonadIO m) => DOMImplementation -> m ()
hasFeature_ self = liftIO (void (js_hasFeature self))