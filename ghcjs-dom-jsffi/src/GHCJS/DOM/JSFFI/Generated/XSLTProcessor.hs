{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XSLTProcessor
       (js_newXSLTProcessor, newXSLTProcessor, js_importStylesheet,
        importStylesheet, js_transformToFragment, transformToFragment,
        transformToFragment_, js_transformToDocument, transformToDocument,
        transformToDocument_, js_setParameter, setParameter,
        js_getParameter, getParameter, getParameter_, getParameterUnsafe,
        getParameterUnchecked, js_removeParameter, removeParameter,
        js_clearParameters, clearParameters, js_reset, reset,
        XSLTProcessor(..), gTypeXSLTProcessor)
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
 
foreign import javascript unsafe "new window[\"XSLTProcessor\"]()"
        js_newXSLTProcessor :: IO XSLTProcessor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
newXSLTProcessor :: (MonadIO m) => m XSLTProcessor
newXSLTProcessor = liftIO (js_newXSLTProcessor)
 
foreign import javascript unsafe "$1[\"importStylesheet\"]($2)"
        js_importStylesheet :: XSLTProcessor -> Optional Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
importStylesheet ::
                 (MonadIO m, IsNode stylesheet) =>
                   XSLTProcessor -> Maybe stylesheet -> m ()
importStylesheet self stylesheet
  = liftIO
      (js_importStylesheet self
         (maybeToOptional (fmap toNode stylesheet)))
 
foreign import javascript unsafe
        "$1[\"transformToFragment\"]($2,\n$3)" js_transformToFragment ::
        XSLTProcessor ->
          Optional Node -> Optional Document -> IO DocumentFragment

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment ::
                    (MonadIO m, IsNode source, IsDocument docVal) =>
                      XSLTProcessor -> Maybe source -> Maybe docVal -> m DocumentFragment
transformToFragment self source docVal
  = liftIO
      (js_transformToFragment self (maybeToOptional (fmap toNode source))
         (maybeToOptional (fmap toDocument docVal)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment_ ::
                     (MonadIO m, IsNode source, IsDocument docVal) =>
                       XSLTProcessor -> Maybe source -> Maybe docVal -> m ()
transformToFragment_ self source docVal
  = liftIO
      (void
         (js_transformToFragment self (maybeToOptional (fmap toNode source))
            (maybeToOptional (fmap toDocument docVal))))
 
foreign import javascript unsafe "$1[\"transformToDocument\"]($2)"
        js_transformToDocument ::
        XSLTProcessor -> Optional Node -> IO Document

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument ::
                    (MonadIO m, IsNode source) =>
                      XSLTProcessor -> Maybe source -> m Document
transformToDocument self source
  = liftIO
      (js_transformToDocument self
         (maybeToOptional (fmap toNode source)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument_ ::
                     (MonadIO m, IsNode source) => XSLTProcessor -> Maybe source -> m ()
transformToDocument_ self source
  = liftIO
      (void
         (js_transformToDocument self
            (maybeToOptional (fmap toNode source))))
 
foreign import javascript unsafe "$1[\"setParameter\"]($2, $3, $4)"
        js_setParameter ::
        XSLTProcessor ->
          Optional JSString ->
            Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.setParameter Mozilla XSLTProcessor.setParameter documentation> 
setParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              ToJSString value) =>
               XSLTProcessor ->
                 Maybe namespaceURI -> Maybe localName -> Maybe value -> m ()
setParameter self namespaceURI localName value
  = liftIO
      (js_setParameter self (toOptionalJSString namespaceURI)
         (toOptionalJSString localName)
         (toOptionalJSString value))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2, $3)"
        js_getParameter ::
        XSLTProcessor ->
          Optional JSString -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              FromJSString result) =>
               XSLTProcessor ->
                 Maybe namespaceURI -> Maybe localName -> m (Maybe result)
getParameter self namespaceURI localName
  = liftIO
      (fromMaybeJSString <$>
         (js_getParameter self (toOptionalJSString namespaceURI)
            (toOptionalJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter_ ::
              (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                XSLTProcessor -> Maybe namespaceURI -> Maybe localName -> m ()
getParameter_ self namespaceURI localName
  = liftIO
      (void
         (js_getParameter self (toOptionalJSString namespaceURI)
            (toOptionalJSString localName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameterUnsafe ::
                   (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                    HasCallStack, FromJSString result) =>
                     XSLTProcessor -> Maybe namespaceURI -> Maybe localName -> m result
getParameterUnsafe self namespaceURI localName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getParameter self (toOptionalJSString namespaceURI)
             (toOptionalJSString localName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameterUnchecked ::
                      (MonadIO m, ToJSString namespaceURI, ToJSString localName,
                       FromJSString result) =>
                        XSLTProcessor -> Maybe namespaceURI -> Maybe localName -> m result
getParameterUnchecked self namespaceURI localName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getParameter self (toOptionalJSString namespaceURI)
            (toOptionalJSString localName)))
 
foreign import javascript unsafe "$1[\"removeParameter\"]($2, $3)"
        js_removeParameter ::
        XSLTProcessor -> Optional JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
removeParameter ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  XSLTProcessor -> Maybe namespaceURI -> Maybe localName -> m ()
removeParameter self namespaceURI localName
  = liftIO
      (js_removeParameter self (toOptionalJSString namespaceURI)
         (toOptionalJSString localName))
 
foreign import javascript unsafe "$1[\"clearParameters\"]()"
        js_clearParameters :: XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
clearParameters :: (MonadIO m) => XSLTProcessor -> m ()
clearParameters self = liftIO (js_clearParameters self)
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
reset :: (MonadIO m) => XSLTProcessor -> m ()
reset self = liftIO (js_reset self)