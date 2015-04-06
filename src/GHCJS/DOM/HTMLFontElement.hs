{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFontElement
       (js_setColor, setColor, js_getColor, getColor, js_setFace, setFace,
        js_getFace, getFace, js_setSize, setSize, js_getSize, getSize,
        HTMLFontElement, castToHTMLFontElement, gTypeHTMLFontElement)
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

 
foreign import javascript unsafe "$1[\"color\"] = $2;" js_setColor
        :: JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
setColor ::
         (MonadIO m, ToJSString val) => HTMLFontElement -> val -> m ()
setColor self val
  = liftIO (js_setColor (unHTMLFontElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"color\"]" js_getColor ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.color Mozilla HTMLFontElement.color documentation> 
getColor ::
         (MonadIO m, FromJSString result) => HTMLFontElement -> m result
getColor self
  = liftIO (fromJSString <$> (js_getColor (unHTMLFontElement self)))
 
foreign import javascript unsafe "$1[\"face\"] = $2;" js_setFace ::
        JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
setFace ::
        (MonadIO m, ToJSString val) => HTMLFontElement -> val -> m ()
setFace self val
  = liftIO (js_setFace (unHTMLFontElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"face\"]" js_getFace ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.face Mozilla HTMLFontElement.face documentation> 
getFace ::
        (MonadIO m, FromJSString result) => HTMLFontElement -> m result
getFace self
  = liftIO (fromJSString <$> (js_getFace (unHTMLFontElement self)))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        JSRef HTMLFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
setSize ::
        (MonadIO m, ToJSString val) => HTMLFontElement -> val -> m ()
setSize self val
  = liftIO (js_setSize (unHTMLFontElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef HTMLFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFontElement.size Mozilla HTMLFontElement.size documentation> 
getSize ::
        (MonadIO m, FromJSString result) => HTMLFontElement -> m result
getSize self
  = liftIO (fromJSString <$> (js_getSize (unHTMLFontElement self)))
#else
module GHCJS.DOM.HTMLFontElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFontElement
#endif
