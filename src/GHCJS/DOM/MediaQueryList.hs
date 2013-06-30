{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.MediaQueryList
       (webkit_dom_media_query_list_get_media, mediaQueryListGetMedia,
        webkit_dom_media_query_list_get_matches, mediaQueryListGetMatches)
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
foreign import javascript unsafe "$1[\"media\"]"
        webkit_dom_media_query_list_get_media ::
        JSRef MediaQueryList -> IO JSString
#else 
webkit_dom_media_query_list_get_media ::
                                        JSRef MediaQueryList -> IO JSString
webkit_dom_media_query_list_get_media = undefined
#endif
 
mediaQueryListGetMedia ::
                       (MediaQueryListClass self, FromJSString result) =>
                         self -> IO result
mediaQueryListGetMedia self
  = fromJSString <$>
      (webkit_dom_media_query_list_get_media
         (unMediaQueryList (toMediaQueryList self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"matches\"] ? 1 : 0)"
        webkit_dom_media_query_list_get_matches ::
        JSRef MediaQueryList -> IO JSBool
#else 
webkit_dom_media_query_list_get_matches ::
                                          JSRef MediaQueryList -> IO JSBool
webkit_dom_media_query_list_get_matches = undefined
#endif
 
mediaQueryListGetMatches ::
                         (MediaQueryListClass self) => self -> IO Bool
mediaQueryListGetMatches self
  = fromJSBool <$>
      (webkit_dom_media_query_list_get_matches
         (unMediaQueryList (toMediaQueryList self)))