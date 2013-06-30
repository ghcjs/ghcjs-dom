{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.Location
       (ghcjs_dom_location_get_origin, locationGetOrigin,
        ghcjs_dom_location_get_ancestor_origins,
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
        ghcjs_dom_location_get_origin :: JSRef Location -> IO JSString
#else 
ghcjs_dom_location_get_origin :: JSRef Location -> IO JSString
ghcjs_dom_location_get_origin = undefined
#endif
 
locationGetOrigin ::
                  (IsLocation self, FromJSString result) => self -> IO result
locationGetOrigin self
  = fromJSString <$>
      (ghcjs_dom_location_get_origin (unLocation (toLocation self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ancestorOrigins\"]"
        ghcjs_dom_location_get_ancestor_origins ::
        JSRef Location -> IO (JSRef DOMStringList)
#else 
ghcjs_dom_location_get_ancestor_origins ::
                                          JSRef Location -> IO (JSRef DOMStringList)
ghcjs_dom_location_get_ancestor_origins = undefined
#endif
 
locationGetAncestorOrigins ::
                           (IsLocation self) => self -> IO (Maybe DOMStringList)
locationGetAncestorOrigins self
  = fmap DOMStringList . maybeJSNull <$>
      (ghcjs_dom_location_get_ancestor_origins
         (unLocation (toLocation self)))