{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLSourceElement
       (js_setSrc, setSrc, js_getSrc, getSrc, js_setMedia, setMedia,
        js_getMedia, getMedia, HTMLSourceElement, castToHTMLSourceElement,
        gTypeHTMLSourceElement)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLSourceElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.src Mozilla HTMLSourceElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLSourceElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: JSRef HTMLSourceElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLSourceElement -> val -> m ()
setMedia self val
  = liftIO (js_setMedia (unHTMLSourceElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef HTMLSourceElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLSourceElement.media Mozilla HTMLSourceElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLSourceElement -> m result
getMedia self
  = liftIO
      (fromJSString <$> (js_getMedia (unHTMLSourceElement self)))
#else
module GHCJS.DOM.HTMLSourceElement (
  ) where
#endif
