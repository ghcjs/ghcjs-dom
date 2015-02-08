{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGDocument
       (ghcjs_dom_svg_document_create_event, svgDocumentCreateEvent,
        ghcjs_dom_svg_document_get_root_element, svgDocumentGetRootElement,
        SVGDocument, IsSVGDocument, castToSVGDocument, gTypeSVGDocument,
        toSVGDocument)
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

 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        ghcjs_dom_svg_document_create_event ::
        JSRef SVGDocument -> JSString -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
svgDocumentCreateEvent ::
                       (MonadIO m, IsSVGDocument self, ToJSString eventType) =>
                         self -> eventType -> m (Maybe Event)
svgDocumentCreateEvent self eventType
  = liftIO
      ((ghcjs_dom_svg_document_create_event
          (unSVGDocument (toSVGDocument self))
          (toJSString eventType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rootElement\"]"
        ghcjs_dom_svg_document_get_root_element ::
        JSRef SVGDocument -> IO (JSRef SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
svgDocumentGetRootElement ::
                          (MonadIO m, IsSVGDocument self) => self -> m (Maybe SVGSVGElement)
svgDocumentGetRootElement self
  = liftIO
      ((ghcjs_dom_svg_document_get_root_element
          (unSVGDocument (toSVGDocument self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.SVGDocument (
  ) where
#endif
