{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathNSResolver
       (ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri,
        xPathNSResolverLookupNamespaceURI, XPathNSResolver,
        IsXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver,
        toXPathNSResolver)
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

 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri ::
        JSRef XPathNSResolver -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XPathNSResolver.lookupNamespaceURI Mozilla XPathNSResolver.lookupNamespaceURI documentation> 
xPathNSResolverLookupNamespaceURI ::
                                  (IsXPathNSResolver self, ToJSString prefix,
                                   FromJSString result) =>
                                    self -> prefix -> IO result
xPathNSResolverLookupNamespaceURI self prefix
  = fromJSString <$>
      (ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri
         (unXPathNSResolver (toXPathNSResolver self))
         (toJSString prefix))
#else
module GHCJS.DOM.XPathNSResolver (
  module Graphics.UI.Gtk.WebKit.DOM.XPathNSResolver
  ) where
import Graphics.UI.Gtk.WebKit.DOM.XPathNSResolver
#endif
