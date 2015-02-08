{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMWindowCSS
       (ghcjs_dom_dom_window_css_supports2, domWindowCSSSupports2,
        ghcjs_dom_dom_window_css_supports, domWindowCSSSupports,
        DOMWindowCSS, IsDOMWindowCSS, castToDOMWindowCSS,
        gTypeDOMWindowCSS, toDOMWindowCSS)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "($1[\"supports\"]($2, $3) ? 1 : 0)"
        ghcjs_dom_dom_window_css_supports2 ::
        JSRef DOMWindowCSS -> JSString -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports2 Mozilla CSS.supports2 documentation> 
domWindowCSSSupports2 ::
                      (MonadIO m, IsDOMWindowCSS self, ToJSString property,
                       ToJSString value) =>
                        self -> property -> value -> m Bool
domWindowCSSSupports2 self property value
  = liftIO
      (ghcjs_dom_dom_window_css_supports2
         (unDOMWindowCSS (toDOMWindowCSS self))
         (toJSString property)
         (toJSString value))
 
foreign import javascript unsafe "($1[\"supports\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_window_css_supports ::
        JSRef DOMWindowCSS -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSS.supports Mozilla CSS.supports documentation> 
domWindowCSSSupports ::
                     (MonadIO m, IsDOMWindowCSS self, ToJSString conditionText) =>
                       self -> conditionText -> m Bool
domWindowCSSSupports self conditionText
  = liftIO
      (ghcjs_dom_dom_window_css_supports
         (unDOMWindowCSS (toDOMWindowCSS self))
         (toJSString conditionText))
#else
module GHCJS.DOM.DOMWindowCSS (
  module Graphics.UI.Gtk.WebKit.DOM.DOMWindowCSS
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMWindowCSS
#endif
