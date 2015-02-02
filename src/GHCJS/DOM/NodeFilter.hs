{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NodeFilter
       (ghcjs_dom_node_filter_accept_node, nodeFilterAcceptNode,
        cFILTER_ACCEPT, cFILTER_REJECT, cFILTER_SKIP, cSHOW_ALL,
        cSHOW_ELEMENT, cSHOW_ATTRIBUTE, cSHOW_TEXT, cSHOW_CDATA_SECTION,
        cSHOW_ENTITY_REFERENCE, cSHOW_ENTITY, cSHOW_PROCESSING_INSTRUCTION,
        cSHOW_COMMENT, cSHOW_DOCUMENT, cSHOW_DOCUMENT_TYPE,
        cSHOW_DOCUMENT_FRAGMENT, cSHOW_NOTATION, NodeFilter, IsNodeFilter,
        castToNodeFilter, gTypeNodeFilter, toNodeFilter)
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

 
foreign import javascript unsafe "$1[\"acceptNode\"]($2)"
        ghcjs_dom_node_filter_accept_node ::
        JSRef NodeFilter -> JSRef Node -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter.acceptNode Mozilla NodeFilter.acceptNode documentation> 
nodeFilterAcceptNode ::
                     (IsNodeFilter self, IsNode n) => self -> Maybe n -> IO Int
nodeFilterAcceptNode self n
  = ghcjs_dom_node_filter_accept_node
      (unNodeFilter (toNodeFilter self))
      (maybe jsNull (unNode . toNode) n)
cFILTER_ACCEPT = 1
cFILTER_REJECT = 2
cFILTER_SKIP = 3
cSHOW_ALL = 4294967295
cSHOW_ELEMENT = 1
cSHOW_ATTRIBUTE = 2
cSHOW_TEXT = 4
cSHOW_CDATA_SECTION = 8
cSHOW_ENTITY_REFERENCE = 16
cSHOW_ENTITY = 32
cSHOW_PROCESSING_INSTRUCTION = 64
cSHOW_COMMENT = 128
cSHOW_DOCUMENT = 256
cSHOW_DOCUMENT_TYPE = 512
cSHOW_DOCUMENT_FRAGMENT = 1024
cSHOW_NOTATION = 2048
#else
module GHCJS.DOM.NodeFilter (
  module Graphics.UI.Gtk.WebKit.DOM.NodeFilter
  ) where
import Graphics.UI.Gtk.WebKit.DOM.NodeFilter
#endif
