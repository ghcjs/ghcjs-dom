{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.StyleMedia
       (ghcjs_dom_style_media_match_medium, styleMediaMatchMedium,
        StyleMedia, IsStyleMedia, castToStyleMedia, gTypeStyleMedia,
        toStyleMedia)
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

 
foreign import javascript unsafe
        "($1[\"matchMedium\"]($2) ? 1 : 0)"
        ghcjs_dom_style_media_match_medium ::
        JSRef StyleMedia -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleMedia.matchMedium Mozilla StyleMedia.matchMedium documentation> 
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
