{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Screen
       (js_getHeight, getHeight, js_getWidth, getWidth, js_getColorDepth,
        getColorDepth, js_getPixelDepth, getPixelDepth, js_getAvailLeft,
        getAvailLeft, js_getAvailTop, getAvailTop, js_getAvailHeight,
        getAvailHeight, js_getAvailWidth, getAvailWidth, DOMScreen,
        castToDOMScreen, gTypeDOMScreen)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.height Mozilla Screen.height documentation> 
getHeight :: (MonadIO m) => DOMScreen -> m Word
getHeight self = liftIO (js_getHeight (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.width Mozilla Screen.width documentation> 
getWidth :: (MonadIO m) => DOMScreen -> m Word
getWidth self = liftIO (js_getWidth (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"colorDepth\"]"
        js_getColorDepth :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.colorDepth Mozilla Screen.colorDepth documentation> 
getColorDepth :: (MonadIO m) => DOMScreen -> m Word
getColorDepth self = liftIO (js_getColorDepth (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"pixelDepth\"]"
        js_getPixelDepth :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.pixelDepth Mozilla Screen.pixelDepth documentation> 
getPixelDepth :: (MonadIO m) => DOMScreen -> m Word
getPixelDepth self = liftIO (js_getPixelDepth (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"availLeft\"]"
        js_getAvailLeft :: JSRef DOMScreen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availLeft Mozilla Screen.availLeft documentation> 
getAvailLeft :: (MonadIO m) => DOMScreen -> m Int
getAvailLeft self = liftIO (js_getAvailLeft (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"availTop\"]" js_getAvailTop
        :: JSRef DOMScreen -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availTop Mozilla Screen.availTop documentation> 
getAvailTop :: (MonadIO m) => DOMScreen -> m Int
getAvailTop self = liftIO (js_getAvailTop (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"availHeight\"]"
        js_getAvailHeight :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availHeight Mozilla Screen.availHeight documentation> 
getAvailHeight :: (MonadIO m) => DOMScreen -> m Word
getAvailHeight self = liftIO (js_getAvailHeight (unDOMScreen self))
 
foreign import javascript unsafe "$1[\"availWidth\"]"
        js_getAvailWidth :: JSRef DOMScreen -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Screen.availWidth Mozilla Screen.availWidth documentation> 
getAvailWidth :: (MonadIO m) => DOMScreen -> m Word
getAvailWidth self = liftIO (js_getAvailWidth (unDOMScreen self))
#else
module GHCJS.DOM.Screen (
  module Graphics.UI.Gtk.WebKit.DOM.Screen
  ) where
import Graphics.UI.Gtk.WebKit.DOM.Screen
#endif
