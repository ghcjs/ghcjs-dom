{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DocumentType
       (js_getName, getName, js_getEntities, getEntities, js_getNotations,
        getNotations, js_getPublicId, getPublicId, js_getSystemId,
        getSystemId, js_getInternalSubset, getInternalSubset, DocumentType,
        castToDocumentType, gTypeDocumentType)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => DocumentType -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unDocumentType self)))
 
foreign import javascript unsafe "$1[\"entities\"]" js_getEntities
        :: JSRef DocumentType -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntities ::
            (MonadIO m) => DocumentType -> m (Maybe NamedNodeMap)
getEntities self
  = liftIO ((js_getEntities (unDocumentType self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"notations\"]"
        js_getNotations :: JSRef DocumentType -> IO (JSRef NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotations ::
             (MonadIO m) => DocumentType -> m (Maybe NamedNodeMap)
getNotations self
  = liftIO ((js_getNotations (unDocumentType self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"publicId\"]" js_getPublicId
        :: JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicId ::
            (MonadIO m, FromJSString result) => DocumentType -> m result
getPublicId self
  = liftIO (fromJSString <$> (js_getPublicId (unDocumentType self)))
 
foreign import javascript unsafe "$1[\"systemId\"]" js_getSystemId
        :: JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemId ::
            (MonadIO m, FromJSString result) => DocumentType -> m result
getSystemId self
  = liftIO (fromJSString <$> (js_getSystemId (unDocumentType self)))
 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        js_getInternalSubset :: JSRef DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubset ::
                  (MonadIO m, FromJSString result) => DocumentType -> m result
getInternalSubset self
  = liftIO
      (fromJSString <$> (js_getInternalSubset (unDocumentType self)))
#else
module GHCJS.DOM.DocumentType (
  module Graphics.UI.Gtk.WebKit.DOM.DocumentType
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DocumentType
#endif
