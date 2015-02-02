{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitNamespace
       (ghcjs_dom_webkit_namespace_get_message_handlers,
        webKitNamespaceGetMessageHandlers, WebKitNamespace,
        IsWebKitNamespace, castToWebKitNamespace, gTypeWebKitNamespace,
        toWebKitNamespace)
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

 
foreign import javascript unsafe "$1[\"messageHandlers\"]"
        ghcjs_dom_webkit_namespace_get_message_handlers ::
        JSRef WebKitNamespace -> IO (JSRef UserMessageHandlersNamespace)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitNamespace.messageHandlers Mozilla WebKitNamespace.messageHandlers documentation> 
webKitNamespaceGetMessageHandlers ::
                                  (IsWebKitNamespace self) =>
                                    self -> IO (Maybe UserMessageHandlersNamespace)
webKitNamespaceGetMessageHandlers self
  = (ghcjs_dom_webkit_namespace_get_message_handlers
       (unWebKitNamespace (toWebKitNamespace self)))
      >>= fromJSRef
#else
module GHCJS.DOM.WebKitNamespace (
  ) where
#endif
