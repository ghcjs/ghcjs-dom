{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLBodyElement
       (js_setALink, setALink, js_getALink, getALink, js_setBackground,
        setBackground, js_getBackground, getBackground, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setLink, setLink,
        js_getLink, getLink, js_setText, setText, js_getText, getText,
        js_setVLink, setVLink, js_getVLink, getVLink, beforeUnload,
        hashChange, message, offline, online, popState, resize, storage,
        unload, orientationChange, blur, error, focus, load,
        HTMLBodyElement, castToHTMLBodyElement, gTypeHTMLBodyElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"aLink\"] = $2;" js_setALink
        :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
setALink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setALink self val = liftIO (js_setALink (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"aLink\"]" js_getALink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.aLink Mozilla HTMLBodyElement.aLink documentation> 
getALink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getALink self = liftIO (fromJSString <$> (js_getALink (self)))
 
foreign import javascript unsafe "$1[\"background\"] = $2;"
        js_setBackground :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
setBackground ::
              (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBackground self val
  = liftIO (js_setBackground (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"background\"]"
        js_getBackground :: HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.background Mozilla HTMLBodyElement.background documentation> 
getBackground ::
              (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBackground self
  = liftIO (fromJSString <$> (js_getBackground (self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.bgColor Mozilla HTMLBodyElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getBgColor self = liftIO (fromJSString <$> (js_getBgColor (self)))
 
foreign import javascript unsafe "$1[\"link\"] = $2;" js_setLink ::
        HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
setLink ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setLink self val = liftIO (js_setLink (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"link\"]" js_getLink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.link Mozilla HTMLBodyElement.link documentation> 
getLink ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getLink self = liftIO (fromJSString <$> (js_getLink (self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setText self val = liftIO (js_setText (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.text Mozilla HTMLBodyElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getText self = liftIO (fromJSString <$> (js_getText (self)))
 
foreign import javascript unsafe "$1[\"vLink\"] = $2;" js_setVLink
        :: HTMLBodyElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
setVLink ::
         (MonadIO m, ToJSString val) => HTMLBodyElement -> val -> m ()
setVLink self val = liftIO (js_setVLink (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vLink\"]" js_getVLink ::
        HTMLBodyElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLBodyElement.vLink Mozilla HTMLBodyElement.vLink documentation> 
getVLink ::
         (MonadIO m, FromJSString result) => HTMLBodyElement -> m result
getVLink self = liftIO (fromJSString <$> (js_getVLink (self)))

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