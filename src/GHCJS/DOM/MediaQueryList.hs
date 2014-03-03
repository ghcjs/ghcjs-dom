{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaQueryList
       (ghcjs_dom_media_query_list_get_media, mediaQueryListGetMedia,
        ghcjs_dom_media_query_list_get_matches, mediaQueryListGetMatches,
        MediaQueryList, IsMediaQueryList, castToMediaQueryList,
        gTypeMediaQueryList, toMediaQueryList)
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



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_media_query_list_get_media ::
        JSRef MediaQueryList -> IO JSString
#else 
ghcjs_dom_media_query_list_get_media ::
                                       JSRef MediaQueryList -> IO JSString
ghcjs_dom_media_query_list_get_media = undefined
#endif
 
mediaQueryListGetMedia ::
                       (IsMediaQueryList self, FromJSString result) => self -> IO result
mediaQueryListGetMedia self
  = fromJSString <$>
      (ghcjs_dom_media_query_list_get_media
         (unMediaQueryList (toMediaQueryList self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "($1[\"matches\"] ? 1 : 0)"
        ghcjs_dom_media_query_list_get_matches ::
        JSRef MediaQueryList -> IO Bool
#else 
ghcjs_dom_media_query_list_get_matches ::
                                         JSRef MediaQueryList -> IO Bool
ghcjs_dom_media_query_list_get_matches = undefined
#endif
 
mediaQueryListGetMatches ::
                         (IsMediaQueryList self) => self -> IO Bool
mediaQueryListGetMatches self
  = ghcjs_dom_media_query_list_get_matches
      (unMediaQueryList (toMediaQueryList self))
#else
module GHCJS.DOM.MediaQueryList (
  module Graphics.UI.Gtk.WebKit.DOM.MediaQueryList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.MediaQueryList
#endif
