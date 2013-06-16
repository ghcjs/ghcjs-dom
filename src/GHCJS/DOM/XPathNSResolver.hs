{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.XPathNSResolver
       (webkit_dom_xpath_ns_resolver_lookup_namespace_uri,
        xPathNSResolverLookupNamespaceURI)
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
        webkit_dom_xpath_ns_resolver_lookup_namespace_uri ::
        JSRef XPathNSResolver -> JSString -> IO JSString
#else 
webkit_dom_xpath_ns_resolver_lookup_namespace_uri ::
                                                    JSRef XPathNSResolver -> JSString -> IO JSString
webkit_dom_xpath_ns_resolver_lookup_namespace_uri = undefined
#endif
 
xPathNSResolverLookupNamespaceURI ::
                                  (XPathNSResolverClass self, ToJSString prefix,
                                   FromJSString result) =>
                                    self -> prefix -> IO result
xPathNSResolverLookupNamespaceURI self prefix
  = fromJSString <$>
      (webkit_dom_xpath_ns_resolver_lookup_namespace_uri
         (unXPathNSResolver (toXPathNSResolver self))
         (toJSString prefix))