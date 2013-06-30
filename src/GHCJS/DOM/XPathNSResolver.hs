{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.XPathNSResolver
       (ghcjs_dom_xpath_ns_resolver_lookup_namespace_uri,
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