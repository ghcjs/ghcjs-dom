{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLBodyElement
       (js_setALink, setALink, js_getALink, getALink, js_setBackground,
        setBackground, js_getBackground, getBackground, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setLink, setLink,
        js_getLink, getLink, js_setText, setText, js_getText, getText,
        js_setVLink, setVLink, js_getVLink, getVLink, beforeUnload,
        hashChange, message, offline, online, popState, resize, storage,
        unload, orientationChange, blur, error, focus, load,
        HTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement)
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

 
foreign import javascript unsafe "$1[\"aLink\"] = $2;" js_setALink
        :: JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
setALink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setALink self val
  = liftIO (js_setALink (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"aLink\"]" js_getALink ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
getALink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getALink self
  = liftIO (fromJSString <$> (js_getALink (unHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        js_setBackground :: JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
setBackground ::
              (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBackground self val
  = liftIO
      (js_setBackground (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"background\"]"
        js_getBackground :: JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
getBackground ::
              (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBackground self
  = liftIO
      (fromJSString <$> (js_getBackground (unHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBgColor self
  = liftIO
      (fromJSString <$> (js_getBgColor (unHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"link\"] = $2;" js_setLink ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
setLink ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setLink self val
  = liftIO (js_setLink (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"link\"]" js_getLink ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
getLink ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getLink self
  = liftIO (fromJSString <$> (js_getLink (unHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setText self val
  = liftIO (js_setText (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unHTMLBodyElement self)))
 
foreign import javascript unsafe "$1[\"vLink\"] = $2;" js_setVLink
        :: JSRef HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
setVLink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setVLink self val
  = liftIO (js_setVLink (unHTMLBodyElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vLink\"]" js_getVLink ::
        JSRef HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
getVLink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getVLink self
  = liftIO (fromJSString <$> (js_getVLink (unHTMLBodyElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onbeforeunload Mozilla HTMLBodyElement.onbeforeunload documentation> 
beforeUnload :: EventName HTMLBodyElement BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onhashchange Mozilla HTMLBodyElement.onhashchange documentation> 
hashChange :: EventName HTMLBodyElement HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onmessage Mozilla HTMLBodyElement.onmessage documentation> 
message :: EventName HTMLBodyElement MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onoffline Mozilla HTMLBodyElement.onoffline documentation> 
offline :: EventName HTMLBodyElement Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.ononline Mozilla HTMLBodyElement.ononline documentation> 
online :: EventName HTMLBodyElement Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onpopstate Mozilla HTMLBodyElement.onpopstate documentation> 
popState :: EventName HTMLBodyElement PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onresize Mozilla HTMLBodyElement.onresize documentation> 
resize :: EventName HTMLBodyElement UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onstorage Mozilla HTMLBodyElement.onstorage documentation> 
storage :: EventName HTMLBodyElement StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onunload Mozilla HTMLBodyElement.onunload documentation> 
unload :: EventName HTMLBodyElement UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onorientationchange Mozilla HTMLBodyElement.onorientationchange documentation> 
orientationChange :: EventName HTMLBodyElement Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onblur Mozilla HTMLBodyElement.onblur documentation> 
blur :: EventName HTMLBodyElement FocusEvent
blur = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onerror Mozilla HTMLBodyElement.onerror documentation> 
error :: EventName HTMLBodyElement UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onfocus Mozilla HTMLBodyElement.onfocus documentation> 
focus :: EventName HTMLBodyElement FocusEvent
focus = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.onload Mozilla HTMLBodyElement.onload documentation> 
load :: EventName HTMLBodyElement UIEvent
load = unsafeEventName (toJSString "load")
#else
module GHCJS.DOM.HTMLBodyElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLBodyElement
#endif
