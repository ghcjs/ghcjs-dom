{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.MediaQueryList
       (ghcjs_dom_media_query_list_get_media, mediaQueryListGetMedia,
        ghcjs_dom_media_query_list_get_matches, mediaQueryListGetMatches,
        MediaQueryList, IsMediaQueryList, castToMediaQueryList,
        gTypeMediaQueryList, toMediaQueryList)
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

 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_media_query_list_get_media ::
        JSRef MediaQueryList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.media Mozilla MediaQueryList.media documentation> 
mediaQueryListGetMedia ::
                       (IsMediaQueryList self, FromJSString result) => self -> IO result
mediaQueryListGetMedia self
  = fromJSString <$>
      (ghcjs_dom_media_query_list_get_media
         (unMediaQueryList (toMediaQueryList self)))
 
foreign import javascript unsafe "($1[\"matches\"] ? 1 : 0)"
        ghcjs_dom_media_query_list_get_matches ::
        JSRef MediaQueryList -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaQueryList.matches Mozilla MediaQueryList.matches documentation> 
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
