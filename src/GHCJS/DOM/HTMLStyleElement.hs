{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLStyleElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setMedia, setMedia, js_getMedia, getMedia, js_getSheet,
        getSheet, HTMLStyleElement, castToHTMLStyleElement,
        gTypeHTMLStyleElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLStyleElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLStyleElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.disabled Mozilla HTMLStyleElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLStyleElement -> m Bool
getDisabled self
  = liftIO (js_getDisabled (unHTMLStyleElement self))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: JSRef HTMLStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLStyleElement -> val -> m ()
setMedia self val
  = liftIO (js_setMedia (unHTMLStyleElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef HTMLStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.media Mozilla HTMLStyleElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLStyleElement -> m result
getMedia self
  = liftIO (fromJSString <$> (js_getMedia (unHTMLStyleElement self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        JSRef HTMLStyleElement -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLStyleElement.sheet Mozilla HTMLStyleElement.sheet documentation> 
getSheet :: (MonadIO m) => HTMLStyleElement -> m (Maybe StyleSheet)
getSheet self
  = liftIO ((js_getSheet (unHTMLStyleElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLStyleElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLStyleElement
#endif
