{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XSLTProcessor
       (ghcjs_dom_xslt_processor_new, xsltProcessorNew,
        ghcjs_dom_xslt_processor_import_stylesheet,
        xsltProcessorImportStylesheet,
        ghcjs_dom_xslt_processor_transform_to_fragment,
        xsltProcessorTransformToFragment,
        ghcjs_dom_xslt_processor_transform_to_document,
        xsltProcessorTransformToDocument,
        ghcjs_dom_xslt_processor_set_parameter, xsltProcessorSetParameter,
        ghcjs_dom_xslt_processor_get_parameter, xsltProcessorGetParameter,
        ghcjs_dom_xslt_processor_remove_parameter,
        xsltProcessorRemoveParameter,
        ghcjs_dom_xslt_processor_clear_parameters,
        xsltProcessorClearParameters, ghcjs_dom_xslt_processor_reset,
        xsltProcessorReset, XSLTProcessor, IsXSLTProcessor,
        castToXSLTProcessor, gTypeXSLTProcessor, toXSLTProcessor)
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

 
foreign import javascript unsafe "new window[\"XSLTProcessor\"]()"
        ghcjs_dom_xslt_processor_new :: IO (JSRef XSLTProcessor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
xsltProcessorNew :: (MonadIO m) => m XSLTProcessor
xsltProcessorNew
  = liftIO (ghcjs_dom_xslt_processor_new >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"importStylesheet\"]($2)"
        ghcjs_dom_xslt_processor_import_stylesheet ::
        JSRef XSLTProcessor -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
xsltProcessorImportStylesheet ::
                              (MonadIO m, IsXSLTProcessor self, IsNode stylesheet) =>
                                self -> Maybe stylesheet -> m ()
xsltProcessorImportStylesheet self stylesheet
  = liftIO
      (ghcjs_dom_xslt_processor_import_stylesheet
         (unXSLTProcessor (toXSLTProcessor self))
         (maybe jsNull (unNode . toNode) stylesheet))
 
foreign import javascript unsafe
        "$1[\"transformToFragment\"]($2,\n$3)"
        ghcjs_dom_xslt_processor_transform_to_fragment ::
        JSRef XSLTProcessor ->
          JSRef Node -> JSRef Document -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
xsltProcessorTransformToFragment ::
                                 (MonadIO m, IsXSLTProcessor self, IsNode source,
                                  IsDocument docVal) =>
                                   self ->
                                     Maybe source -> Maybe docVal -> m (Maybe DocumentFragment)
xsltProcessorTransformToFragment self source docVal
  = liftIO
      ((ghcjs_dom_xslt_processor_transform_to_fragment
          (unXSLTProcessor (toXSLTProcessor self))
          (maybe jsNull (unNode . toNode) source)
          (maybe jsNull (unDocument . toDocument) docVal))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transformToDocument\"]($2)"
        ghcjs_dom_xslt_processor_transform_to_document ::
        JSRef XSLTProcessor -> JSRef Node -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
xsltProcessorTransformToDocument ::
                                 (MonadIO m, IsXSLTProcessor self, IsNode source) =>
                                   self -> Maybe source -> m (Maybe Document)
xsltProcessorTransformToDocument self source
  = liftIO
      ((ghcjs_dom_xslt_processor_transform_to_document
          (unXSLTProcessor (toXSLTProcessor self))
          (maybe jsNull (unNode . toNode) source))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setParameter\"]($2, $3, $4)"
        ghcjs_dom_xslt_processor_set_parameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.parameter Mozilla XSLTProcessor.parameter documentation> 
xsltProcessorSetParameter ::
                          (MonadIO m, IsXSLTProcessor self, ToJSString namespaceURI,
                           ToJSString localName, ToJSString value) =>
                            self -> namespaceURI -> localName -> value -> m ()
xsltProcessorSetParameter self namespaceURI localName value
  = liftIO
      (ghcjs_dom_xslt_processor_set_parameter
         (unXSLTProcessor (toXSLTProcessor self))
         (toJSString namespaceURI)
         (toJSString localName)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2, $3)"
        ghcjs_dom_xslt_processor_get_parameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.parameter Mozilla XSLTProcessor.parameter documentation> 
xsltProcessorGetParameter ::
                          (MonadIO m, IsXSLTProcessor self, ToJSString namespaceURI,
                           ToJSString localName, FromJSString result) =>
                            self -> namespaceURI -> localName -> m result
xsltProcessorGetParameter self namespaceURI localName
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_xslt_processor_get_parameter
            (unXSLTProcessor (toXSLTProcessor self))
            (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"removeParameter\"]($2, $3)"
        ghcjs_dom_xslt_processor_remove_parameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
xsltProcessorRemoveParameter ::
                             (MonadIO m, IsXSLTProcessor self, ToJSString namespaceURI,
                              ToJSString localName) =>
                               self -> namespaceURI -> localName -> m ()
xsltProcessorRemoveParameter self namespaceURI localName
  = liftIO
      (ghcjs_dom_xslt_processor_remove_parameter
         (unXSLTProcessor (toXSLTProcessor self))
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"clearParameters\"]()"
        ghcjs_dom_xslt_processor_clear_parameters ::
        JSRef XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
xsltProcessorClearParameters ::
                             (MonadIO m, IsXSLTProcessor self) => self -> m ()
xsltProcessorClearParameters self
  = liftIO
      (ghcjs_dom_xslt_processor_clear_parameters
         (unXSLTProcessor (toXSLTProcessor self)))
 
foreign import javascript unsafe "$1[\"reset\"]()"
        ghcjs_dom_xslt_processor_reset :: JSRef XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
xsltProcessorReset ::
                   (MonadIO m, IsXSLTProcessor self) => self -> m ()
xsltProcessorReset self
  = liftIO
      (ghcjs_dom_xslt_processor_reset
         (unXSLTProcessor (toXSLTProcessor self)))
#else
module GHCJS.DOM.XSLTProcessor (
  ) where
#endif
