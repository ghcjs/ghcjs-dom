{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Location
       (webkit_dom_location_get_origin, locationGetOrigin,
        webkit_dom_location_get_ancestor_origins,
        locationGetAncestorOrigins)
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
foreign import javascript unsafe "$1[\"origin\"]"
        webkit_dom_location_get_origin :: JSRef Location -> IO JSString
#else 
webkit_dom_location_get_origin :: JSRef Location -> IO JSString
webkit_dom_location_get_origin = undefined
#endif
 
locationGetOrigin ::
                  (LocationClass self, FromJSString result) => self -> IO result
locationGetOrigin self
  = fromJSString <$>
      (webkit_dom_location_get_origin (unLocation (toLocation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ancestorOrigins\"]"
        webkit_dom_location_get_ancestor_origins ::
        JSRef Location -> IO (JSRef DOMStringList)
#else 
webkit_dom_location_get_ancestor_origins ::
                                           JSRef Location -> IO (JSRef DOMStringList)
webkit_dom_location_get_ancestor_origins = undefined
#endif
 
locationGetAncestorOrigins ::
                           (LocationClass self) => self -> IO (Maybe DOMStringList)
locationGetAncestorOrigins self
  = fmap DOMStringList . maybeJSNull <$>
      (webkit_dom_location_get_ancestor_origins
         (unLocation (toLocation self)))