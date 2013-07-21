{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleMedia
       (ghcjs_dom_style_media_match_medium, styleMediaMatchMedium) where
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
foreign import javascript unsafe
        "($1[\"matchMedium\"]($2) ? 1 : 0)"
        ghcjs_dom_style_media_match_medium ::
        JSRef StyleMedia -> JSString -> IO Bool
#else 
ghcjs_dom_style_media_match_medium ::
                                     JSRef StyleMedia -> JSString -> IO Bool
ghcjs_dom_style_media_match_medium = undefined
#endif
 
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
