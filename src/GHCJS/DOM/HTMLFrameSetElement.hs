{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFrameSetElement
       (js_setCols, setCols, js_getCols, getCols, js_setRows, setRows,
        js_getRows, getRows, beforeUnload, hashChange, message, offline,
        online, popState, resize, storage, unload, orientationChange, blur,
        error, focus, load, HTMLFrameSetElement, castToHTMLFrameSetElement,
        gTypeHTMLFrameSetElement)
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

 
foreign import javascript unsafe "$1[\"cols\"] = $2;" js_setCols ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
setCols ::
        (MonadIO m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setCols self val
  = liftIO (js_setCols (unHTMLFrameSetElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cols\"]" js_getCols ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.cols Mozilla HTMLFrameSetElement.cols documentation> 
getCols ::
        (MonadIO m, FromJSString result) => HTMLFrameSetElement -> m result
getCols self
  = liftIO
      (fromJSString <$> (js_getCols (unHTMLFrameSetElement self)))
 
foreign import javascript unsafe "$1[\"rows\"] = $2;" js_setRows ::
        JSRef HTMLFrameSetElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
setRows ::
        (MonadIO m, ToJSString val) => HTMLFrameSetElement -> val -> m ()
setRows self val
  = liftIO (js_setRows (unHTMLFrameSetElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rows\"]" js_getRows ::
        JSRef HTMLFrameSetElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.rows Mozilla HTMLFrameSetElement.rows documentation> 
getRows ::
        (MonadIO m, FromJSString result) => HTMLFrameSetElement -> m result
getRows self
  = liftIO
      (fromJSString <$> (js_getRows (unHTMLFrameSetElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onbeforeunload Mozilla HTMLFrameSetElement.onbeforeunload documentation> 
beforeUnload :: EventName HTMLFrameSetElement BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onhashchange Mozilla HTMLFrameSetElement.onhashchange documentation> 
hashChange :: EventName HTMLFrameSetElement HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onmessage Mozilla HTMLFrameSetElement.onmessage documentation> 
message :: EventName HTMLFrameSetElement MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onoffline Mozilla HTMLFrameSetElement.onoffline documentation> 
offline :: EventName HTMLFrameSetElement Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.ononline Mozilla HTMLFrameSetElement.ononline documentation> 
online :: EventName HTMLFrameSetElement Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onpopstate Mozilla HTMLFrameSetElement.onpopstate documentation> 
popState :: EventName HTMLFrameSetElement PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onresize Mozilla HTMLFrameSetElement.onresize documentation> 
resize :: EventName HTMLFrameSetElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onstorage Mozilla HTMLFrameSetElement.onstorage documentation> 
storage :: EventName HTMLFrameSetElement StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onunload Mozilla HTMLFrameSetElement.onunload documentation> 
unload :: EventName HTMLFrameSetElement UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onorientationchange Mozilla HTMLFrameSetElement.onorientationchange documentation> 
orientationChange :: EventName HTMLFrameSetElement Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onblur Mozilla HTMLFrameSetElement.onblur documentation> 
blur :: EventName HTMLFrameSetElement FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onerror Mozilla HTMLFrameSetElement.onerror documentation> 
error :: EventName HTMLFrameSetElement UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onfocus Mozilla HTMLFrameSetElement.onfocus documentation> 
focus :: EventName HTMLFrameSetElement FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFrameSetElement.onload Mozilla HTMLFrameSetElement.onload documentation> 
load :: EventName HTMLFrameSetElement UIEvent
load = unsafeEventName (toJSString "load")
#else
module GHCJS.DOM.HTMLFrameSetElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLFrameSetElement
#endif
