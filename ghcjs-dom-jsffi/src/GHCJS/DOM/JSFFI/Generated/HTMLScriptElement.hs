{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLScriptElement
       (js_setText, setText, js_getText, getText, js_setHtmlFor,
        setHtmlFor, js_getHtmlFor, getHtmlFor, js_setEvent, setEvent,
        js_getEvent, getEvent, js_setCharset, setCharset, js_getCharset,
        getCharset, js_setAsync, setAsync, js_getAsync, getAsync,
        js_setDefer, setDefer, js_getDefer, getDefer, js_setSrc, setSrc,
        js_getSrc, getSrc, js_setType, setType, js_getType, getType,
        js_setCrossOrigin, setCrossOrigin, js_getCrossOrigin,
        getCrossOrigin, getCrossOriginUnsafe, getCrossOriginUnchecked,
        js_setNonce, setNonce, js_getNonce, getNonce, js_setNoModule,
        setNoModule, js_getNoModule, getNoModule, js_setIntegrity,
        setIntegrity, js_getIntegrity, getIntegrity, HTMLScriptElement(..),
        gTypeHTMLScriptElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setText self val = liftIO (js_setText self (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getText self = liftIO (fromJSString <$> (js_getText self))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        js_setHtmlFor :: HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
setHtmlFor ::
           (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setHtmlFor self val = liftIO (js_setHtmlFor self (toJSString val))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getHtmlFor self = liftIO (fromJSString <$> (js_getHtmlFor self))
 
foreign import javascript unsafe "$1[\"event\"] = $2;" js_setEvent
        :: HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
setEvent ::
         (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setEvent self val = liftIO (js_setEvent self (toJSString val))
 
foreign import javascript unsafe "$1[\"event\"]" js_getEvent ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
getEvent ::
         (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getEvent self = liftIO (fromJSString <$> (js_getEvent self))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setCharset self val = liftIO (js_setCharset self (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getCharset self = liftIO (fromJSString <$> (js_getCharset self))
 
foreign import javascript unsafe "$1[\"async\"] = $2;" js_setAsync
        :: HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
setAsync :: (MonadIO m) => HTMLScriptElement -> Bool -> m ()
setAsync self val = liftIO (js_setAsync self val)
 
foreign import javascript unsafe "($1[\"async\"] ? 1 : 0)"
        js_getAsync :: HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
getAsync :: (MonadIO m) => HTMLScriptElement -> m Bool
getAsync self = liftIO (js_getAsync self)
 
foreign import javascript unsafe "$1[\"defer\"] = $2;" js_setDefer
        :: HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
setDefer :: (MonadIO m) => HTMLScriptElement -> Bool -> m ()
setDefer self val = liftIO (js_setDefer self val)
 
foreign import javascript unsafe "($1[\"defer\"] ? 1 : 0)"
        js_getDefer :: HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
getDefer :: (MonadIO m) => HTMLScriptElement -> m Bool
getDefer self = liftIO (js_getDefer self)
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setSrc self val = liftIO (js_setSrc self (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getSrc self = liftIO (fromJSString <$> (js_getSrc self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.type Mozilla HTMLScriptElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        js_setCrossOrigin ::
        HTMLScriptElement -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
setCrossOrigin ::
               (MonadIO m, ToJSString val) =>
                 HTMLScriptElement -> Maybe val -> m ()
setCrossOrigin self val
  = liftIO (js_setCrossOrigin self (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        js_getCrossOrigin :: HTMLScriptElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOrigin ::
               (MonadIO m, FromJSString result) =>
                 HTMLScriptElement -> m (Maybe result)
getCrossOrigin self
  = liftIO (fromMaybeJSString <$> (js_getCrossOrigin self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOriginUnsafe ::
                     (MonadIO m, HasCallStack, FromJSString result) =>
                       HTMLScriptElement -> m result
getCrossOriginUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getCrossOrigin self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
getCrossOriginUnchecked ::
                        (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getCrossOriginUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getCrossOrigin self))
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;" js_setNonce
        :: HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
setNonce ::
         (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setNonce self val = liftIO (js_setNonce self (toJSString val))
 
foreign import javascript unsafe "$1[\"nonce\"]" js_getNonce ::
        HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
getNonce ::
         (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getNonce self = liftIO (fromJSString <$> (js_getNonce self))
 
foreign import javascript unsafe "$1[\"noModule\"] = $2;"
        js_setNoModule :: HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.noModule Mozilla HTMLScriptElement.noModule documentation> 
setNoModule :: (MonadIO m) => HTMLScriptElement -> Bool -> m ()
setNoModule self val = liftIO (js_setNoModule self val)
 
foreign import javascript unsafe "($1[\"noModule\"] ? 1 : 0)"
        js_getNoModule :: HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.noModule Mozilla HTMLScriptElement.noModule documentation> 
getNoModule :: (MonadIO m) => HTMLScriptElement -> m Bool
getNoModule self = liftIO (js_getNoModule self)
 
foreign import javascript unsafe "$1[\"integrity\"] = $2;"
        js_setIntegrity :: HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.integrity Mozilla HTMLScriptElement.integrity documentation> 
setIntegrity ::
             (MonadIO m, ToJSString val) => HTMLScriptElement -> val -> m ()
setIntegrity self val
  = liftIO (js_setIntegrity self (toJSString val))
 
foreign import javascript unsafe "$1[\"integrity\"]"
        js_getIntegrity :: HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.integrity Mozilla HTMLScriptElement.integrity documentation> 
getIntegrity ::
             (MonadIO m, FromJSString result) => HTMLScriptElement -> m result
getIntegrity self
  = liftIO (fromJSString <$> (js_getIntegrity self))