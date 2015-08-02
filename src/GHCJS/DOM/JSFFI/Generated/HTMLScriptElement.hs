{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLScriptElement
       (js_setText, setText, js_getText, getText, js_setHtmlFor,
        setHtmlFor, js_getHtmlFor, getHtmlFor, js_setEvent, setEvent,
        js_getEvent, getEvent, js_setCharset, setCharset, js_getCharset,
        getCharset, js_setAsync, setAsync, js_getAsync, getAsync,
        js_setDefer, setDefer, js_getDefer, getDefer, js_setSrc, setSrc,
        js_getSrc, getSrc, js_setType, setType, js_getType, getType,
        js_setCrossOrigin, setCrossOrigin, js_getCrossOrigin,
        getCrossOrigin, js_setNonce, setNonce, js_getNonce, getNonce,
        HTMLScriptElement, castToHTMLScriptElement, gTypeHTMLScriptElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef HTMLScriptElement -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) =>
          HTMLScriptElement -> Maybe val -> m ()
setText self val
  = liftIO
      (js_setText (unHTMLScriptElement self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef HTMLScriptElement -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) =>
          HTMLScriptElement -> m (Maybe result)
getText self
  = liftIO
      (fromMaybeJSString <$> (js_getText (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        js_setHtmlFor :: JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
setHtmlFor ::
           (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setHtmlFor self val
  = liftIO
      (js_setHtmlFor (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getHtmlFor self
  = liftIO
      (fromJSString <$> (js_getHtmlFor (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"event\"] = $2;" js_setEvent
        :: JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
setEvent ::
         (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setEvent self val
  = liftIO (js_setEvent (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"event\"]" js_getEvent ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
getEvent ::
         (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getEvent self
  = liftIO
      (fromJSString <$> (js_getEvent (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setCharset self val
  = liftIO
      (js_setCharset (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getCharset self
  = liftIO
      (fromJSString <$> (js_getCharset (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"async\"] = $2;" js_setAsync
        :: JSRef HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
setAsync :: (MonadIO m) => HTMLScriptElement -> Bool -> m ()
setAsync self val
  = liftIO (js_setAsync (unHTMLScriptElement self) val)
 
foreign import javascript unsafe "($1[\"async\"] ? 1 : 0)"
        js_getAsync :: JSRef HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
getAsync :: (MonadIO m) => HTMLScriptElement -> m Bool
getAsync self = liftIO (js_getAsync (unHTMLScriptElement self))
 
foreign import javascript unsafe "$1[\"defer\"] = $2;" js_setDefer
        :: JSRef HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
setDefer :: (MonadIO m) => HTMLScriptElement -> Bool -> m ()
setDefer self val
  = liftIO (js_setDefer (unHTMLScriptElement self) val)
 
foreign import javascript unsafe "($1[\"defer\"] ? 1 : 0)"
        js_getDefer :: JSRef HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
getDefer :: (MonadIO m) => HTMLScriptElement -> m Bool
getDefer self = liftIO (js_getDefer (unHTMLScriptElement self))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setType self val
  = liftIO (js_setType (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        js_setCrossOrigin :: JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setCrossOrigin self val
  = liftIO
      (js_setCrossOrigin (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        js_getCrossOrigin :: JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getCrossOrigin self
  = liftIO
      (fromJSString <$> (js_getCrossOrigin (unHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;" js_setNonce
        :: JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
setNonce ::
         (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setNonce self val
  = liftIO (js_setNonce (unHTMLScriptElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"nonce\"]" js_getNonce ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
getNonce ::
         (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getNonce self
  = liftIO
      (fromJSString <$> (js_getNonce (unHTMLScriptElement self)))