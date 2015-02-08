{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Screen
       (ghcjs_dom_screen_get_height, screenGetHeight,
        ghcjs_dom_screen_get_width, screenGetWidth,
        ghcjs_dom_screen_get_color_depth, screenGetColorDepth,
        ghcjs_dom_screen_get_pixel_depth, screenGetPixelDepth,
        ghcjs_dom_screen_get_avail_left, screenGetAvailLeft,
        ghcjs_dom_screen_get_avail_top, screenGetAvailTop,
        ghcjs_dom_screen_get_avail_height, screenGetAvailHeight,
        ghcjs_dom_screen_get_avail_width, screenGetAvailWidth, DOMScreen,
        IsDOMScreen, castToDOMScreen, gTypeDOMScreen, toDOMScreen)
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

 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_screen_get_height :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.height Mozilla Screen.height documentation> 
screenGetHeight :: (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetHeight self
  = liftIO
      (ghcjs_dom_screen_get_height (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_screen_get_width :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.width Mozilla Screen.width documentation> 
screenGetWidth :: (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetWidth self
  = liftIO
      (ghcjs_dom_screen_get_width (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"colorDepth\"]"
        ghcjs_dom_screen_get_color_depth :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.colorDepth Mozilla Screen.colorDepth documentation> 
screenGetColorDepth ::
                    (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetColorDepth self
  = liftIO
      (ghcjs_dom_screen_get_color_depth (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        ghcjs_dom_screen_get_pixel_depth :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.pixelDepth Mozilla Screen.pixelDepth documentation> 
screenGetPixelDepth ::
                    (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetPixelDepth self
  = liftIO
      (ghcjs_dom_screen_get_pixel_depth (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"availLeft\"]"
        ghcjs_dom_screen_get_avail_left :: JSRef DOMScreen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availLeft Mozilla Screen.availLeft documentation> 
screenGetAvailLeft ::
                   (MonadIO m, IsDOMScreen self) => self -> m Int
screenGetAvailLeft self
  = liftIO
      (ghcjs_dom_screen_get_avail_left (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"availTop\"]"
        ghcjs_dom_screen_get_avail_top :: JSRef DOMScreen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availTop Mozilla Screen.availTop documentation> 
screenGetAvailTop :: (MonadIO m, IsDOMScreen self) => self -> m Int
screenGetAvailTop self
  = liftIO
      (ghcjs_dom_screen_get_avail_top (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"availHeight\"]"
        ghcjs_dom_screen_get_avail_height :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availHeight Mozilla Screen.availHeight documentation> 
screenGetAvailHeight ::
                     (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetAvailHeight self
  = liftIO
      (ghcjs_dom_screen_get_avail_height
         (unDOMScreen (toDOMScreen self)))
 
foreign import javascript unsafe "$1[\"availWidth\"]"
        ghcjs_dom_screen_get_avail_width :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availWidth Mozilla Screen.availWidth documentation> 
screenGetAvailWidth ::
                    (MonadIO m, IsDOMScreen self) => self -> m Word
screenGetAvailWidth self
  = liftIO
      (ghcjs_dom_screen_get_avail_width (unDOMScreen (toDOMScreen self)))
#else
module GHCJS.DOM.Screen (
  module Graphics.UI.Gtk.WebKit.DOM.Screen
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
