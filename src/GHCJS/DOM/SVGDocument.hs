{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGDocument
       (ghcjs_dom_svg_document_create_event, svgDocumentCreateEvent,
        ghcjs_dom_svg_document_get_root_element, svgDocumentGetRootElement,
        SVGDocument, IsSVGDocument, castToSVGDocument, gTypeSVGDocument,
        toSVGDocument)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        ghcjs_dom_svg_document_create_event ::
        JSRef SVGDocument -> JSString -> IO (JSRef Event)
 
svgDocumentCreateEvent ::
                       (IsSVGDocument self, ToJSString eventType) =>
                         self -> eventType -> IO (Maybe Event)
svgDocumentCreateEvent self eventType
  = fmap Event . maybeJSNull <$>
      (ghcjs_dom_svg_document_create_event
         (unSVGDocument (toSVGDocument self))
         (toJSString eventType))
 
foreign import javascript unsafe "$1[\"rootElement\"]"
        ghcjs_dom_svg_document_get_root_element ::
        JSRef SVGDocument -> IO (JSRef SVGSVGElement)
 
svgDocumentGetRootElement ::
                          (IsSVGDocument self) => self -> IO (Maybe SVGSVGElement)
svgDocumentGetRootElement self
  = fmap SVGSVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_document_get_root_element
         (unSVGDocument (toSVGDocument self)))
#else
module GHCJS.DOM.SVGDocument (
  module Graphics.UI.Gtk.WebKit.DOM.SVGDocument
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGDocument
#endif
