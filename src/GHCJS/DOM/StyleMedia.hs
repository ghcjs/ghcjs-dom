{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleMedia
       (ghcjs_dom_style_media_match_medium, styleMediaMatchMedium,
        StyleMedia, IsStyleMedia, castToStyleMedia, gTypeStyleMedia,
        toStyleMedia)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"matchMedium\"]($2) ? 1 : 0)"
        ghcjs_dom_style_media_match_medium ::
        JSRef StyleMedia -> JSString -> IO Bool
 
styleMediaMatchMedium ::
                      (IsStyleMedia self, ToJSString mediaquery) =>
                        self -> mediaquery -> IO Bool
styleMediaMatchMedium self mediaquery
  = ghcjs_dom_style_media_match_medium
      (unStyleMedia (toStyleMedia self))
      (toJSString mediaquery)
#else
module GHCJS.DOM.StyleMedia (
  module Graphics.UI.Gtk.WebKit.DOM.StyleMedia
  ) where
import Graphics.UI.Gtk.WebKit.DOM.StyleMedia
#endif
