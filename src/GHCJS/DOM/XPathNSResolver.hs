{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XPathNSResolver
       (ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri,
        xPathNSResolverLookupNamespaceURI, XPathNSResolver,
        IsXPathNSResolver, castToXPathNSResolver, gTypeXPathNSResolver,
        toXPathNSResolver)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lookupNamespaceURI\"]($2)"
        ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri ::
        JSRef XPathNSResolver -> JSString -> IO JSString
#else 
ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri ::
                                                   JSRef XPathNSResolver -> JSString -> IO JSString
ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri = undefined
#endif
 
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
