{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.XSLTProcessor
       (js_newXSLTProcessor, newXSLTProcessor, js_importStylesheet,
        importStylesheet, js_transformToFragment, transformToFragment,
        js_transformToDocument, transformToDocument, js_setParameter,
        setParameter, js_getParameter, getParameter, js_removeParameter,
        removeParameter, js_clearParameters, clearParameters, js_reset,
        reset, XSLTProcessor, castToXSLTProcessor, gTypeXSLTProcessor)
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
 
foreign import javascript unsafe "new window[\"XSLTProcessor\"]()"
        js_newXSLTProcessor :: IO XSLTProcessor

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
newXSLTProcessor :: (MonadIO m) => m XSLTProcessor
newXSLTProcessor = liftIO (js_newXSLTProcessor)
 
foreign import javascript unsafe "$1[\"importStylesheet\"]($2)"
        js_importStylesheet :: XSLTProcessor -> Nullable Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
importStylesheet ::
                 (MonadIO m, IsNode stylesheet) =>
                   XSLTProcessor -> Maybe stylesheet -> m ()
importStylesheet self stylesheet
  = liftIO
      (js_importStylesheet (self)
         (maybeToNullable (fmap toNode stylesheet)))
 
foreign import javascript unsafe
        "$1[\"transformToFragment\"]($2,\n$3)" js_transformToFragment ::
        XSLTProcessor ->
          Nullable Node ->
            Nullable Document -> IO (Nullable DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment ::
                    (MonadIO m, IsNode source, IsDocument docVal) =>
                      XSLTProcessor ->
                        Maybe source -> Maybe docVal -> m (Maybe DocumentFragment)
transformToFragment self source docVal
  = liftIO
      (nullableToMaybe <$>
         (js_transformToFragment (self)
            (maybeToNullable (fmap toNode source))
            (maybeToNullable (fmap toDocument docVal))))
 
foreign import javascript unsafe "$1[\"transformToDocument\"]($2)"
        js_transformToDocument ::
        XSLTProcessor -> Nullable Node -> IO (Nullable Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument ::
                    (MonadIO m, IsNode source) =>
                      XSLTProcessor -> Maybe source -> m (Maybe Document)
transformToDocument self source
  = liftIO
      (nullableToMaybe <$>
         (js_transformToDocument (self)
            (maybeToNullable (fmap toNode source))))
 
foreign import javascript unsafe "$1[\"setParameter\"]($2, $3, $4)"
        js_setParameter ::
        XSLTProcessor -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.setParameter Mozilla XSLTProcessor.setParameter documentation> 
setParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              ToJSString value) =>
               XSLTProcessor -> namespaceURI -> localName -> value -> m ()
setParameter self namespaceURI localName value
  = liftIO
      (js_setParameter (self) (toJSString namespaceURI)
         (toJSString localName)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2, $3)"
        js_getParameter ::
        XSLTProcessor -> JSString -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              FromJSString result) =>
               XSLTProcessor -> namespaceURI -> localName -> m (Maybe result)
getParameter self namespaceURI localName
  = liftIO
      (fromMaybeJSString <$>
         (js_getParameter (self) (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"removeParameter\"]($2, $3)"
        js_removeParameter ::
        XSLTProcessor -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
removeParameter ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  XSLTProcessor -> namespaceURI -> localName -> m ()
removeParameter self namespaceURI localName
  = liftIO
      (js_removeParameter (self) (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"clearParameters\"]()"
        js_clearParameters :: XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
clearParameters :: (MonadIO m) => XSLTProcessor -> m ()
clearParameters self = liftIO (js_clearParameters (self))
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
reset :: (MonadIO m) => XSLTProcessor -> m ()
reset self = liftIO (js_reset (self))