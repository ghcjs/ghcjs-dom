{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBaseFontElement
       (js_setColor, setColor, js_getColor, getColor, js_setFace, setFace,
        js_getFace, getFace, js_setSize, setSize, js_getSize, getSize,
        HTMLBaseFontElement, castToHTMLBaseFontElement,
        gTypeHTMLBaseFontElement)
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
        :: JSRef HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
setColor ::
         (MonadIO m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setColor self val
  = liftIO
      (js_setColor (unHTMLBaseFontElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"color\"]" js_getColor ::
        JSRef HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.color Mozilla HTMLBaseFontElement.color documentation> 
getColor ::
         (MonadIO m, FromJSString result) => HTMLBaseFontElement -> m result
getColor self
  = liftIO
      (fromJSString <$> (js_getColor (unHTMLBaseFontElement self)))
 
foreign import javascript unsafe "$1[\"face\"] = $2;" js_setFace ::
        JSRef HTMLBaseFontElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
setFace ::
        (MonadIO m, ToJSString val) => HTMLBaseFontElement -> val -> m ()
setFace self val
  = liftIO (js_setFace (unHTMLBaseFontElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"face\"]" js_getFace ::
        JSRef HTMLBaseFontElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.face Mozilla HTMLBaseFontElement.face documentation> 
getFace ::
        (MonadIO m, FromJSString result) => HTMLBaseFontElement -> m result
getFace self
  = liftIO
      (fromJSString <$> (js_getFace (unHTMLBaseFontElement self)))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        JSRef HTMLBaseFontElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
setSize :: (MonadIO m) => HTMLBaseFontElement -> Int -> m ()
setSize self val
  = liftIO (js_setSize (unHTMLBaseFontElement self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef HTMLBaseFontElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBaseFontElement.size Mozilla HTMLBaseFontElement.size documentation> 
getSize :: (MonadIO m) => HTMLBaseFontElement -> m Int
getSize self = liftIO (js_getSize (unHTMLBaseFontElement self))
#else
module GHCJS.DOM.HTMLBaseFontElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBaseFontElement
#endif
