{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLSerializer
       (ghcjs_dom_xml_serializer_new, xmlSerializerNew,
        ghcjs_dom_xml_serializer_serialize_to_string,
        xmlSerializerSerializeToString, XMLSerializer, IsXMLSerializer,
        castToXMLSerializer, gTypeXMLSerializer, toXMLSerializer)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"XMLSerializer\"]()"
        ghcjs_dom_xml_serializer_new :: IO (JSRef XMLSerializer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer Mozilla XMLSerializer documentation> 
xmlSerializerNew :: IO XMLSerializer
xmlSerializerNew
  = ghcjs_dom_xml_serializer_new >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"serializeToString\"]($2)"
        ghcjs_dom_xml_serializer_serialize_to_string ::
        JSRef XMLSerializer -> JSRef Node -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer.serializeToString Mozilla XMLSerializer.serializeToString documentation> 
xmlSerializerSerializeToString ::
                               (IsXMLSerializer self, IsNode node, FromJSString result) =>
                                 self -> Maybe node -> IO result
xmlSerializerSerializeToString self node
  = fromJSString <$>
      (ghcjs_dom_xml_serializer_serialize_to_string
         (unXMLSerializer (toXMLSerializer self))
         (maybe jsNull (unNode . toNode) node))
#else
module GHCJS.DOM.XMLSerializer (
  ) where
#endif
