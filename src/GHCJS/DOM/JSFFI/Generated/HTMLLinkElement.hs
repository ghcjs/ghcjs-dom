{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLinkElement
       (js_setDisabled, setDisabled, js_getDisabled, getDisabled,
        js_setCharset, setCharset, js_getCharset, getCharset, js_setHref,
        setHref, js_getHref, getHref, js_setHreflang, setHreflang,
        js_getHreflang, getHreflang, js_setMedia, setMedia, js_getMedia,
        getMedia, js_setRel, setRel, js_getRel, getRel, js_setRev, setRev,
        js_getRev, getRev, js_setTarget, setTarget, js_getTarget,
        getTarget, js_getSheet, getSheet, js_getRelList, getRelList,
        HTMLLinkElement, castToHTMLLinkElement, gTypeHTMLLinkElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        js_setDisabled :: JSRef HTMLLinkElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
setDisabled :: (MonadIO m) => HTMLLinkElement -> Bool -> m ()
setDisabled self val
  = liftIO (js_setDisabled (unHTMLLinkElement self) val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        js_getDisabled :: JSRef HTMLLinkElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.disabled Mozilla HTMLLinkElement.disabled documentation> 
getDisabled :: (MonadIO m) => HTMLLinkElement -> m Bool
getDisabled self = liftIO (js_getDisabled (unHTMLLinkElement self))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setCharset self val
  = liftIO (js_setCharset (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.charset Mozilla HTMLLinkElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getCharset self
  = liftIO
      (fromJSString <$> (js_getCharset (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHref self val
  = liftIO (js_setHref (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.href Mozilla HTMLLinkElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        js_setHreflang :: JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
setHreflang ::
            (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setHreflang self val
  = liftIO (js_setHreflang (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]" js_getHreflang
        :: JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.hreflang Mozilla HTMLLinkElement.hreflang documentation> 
getHreflang ::
            (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getHreflang self
  = liftIO
      (fromJSString <$> (js_getHreflang (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;" js_setMedia
        :: JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
setMedia ::
         (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setMedia self val
  = liftIO (js_setMedia (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.media Mozilla HTMLLinkElement.media documentation> 
getMedia ::
         (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getMedia self
  = liftIO (fromJSString <$> (js_getMedia (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRel self val
  = liftIO (js_setRel (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rel Mozilla HTMLLinkElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getRel self
  = liftIO (fromJSString <$> (js_getRel (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;" js_setRev ::
        JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
setRev ::
       (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setRev self val
  = liftIO (js_setRev (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]" js_getRev ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.rev Mozilla HTMLLinkElement.rev documentation> 
getRev ::
       (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getRev self
  = liftIO (fromJSString <$> (js_getRev (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: JSRef HTMLLinkElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLLinkElement -> val -> m ()
setTarget self val
  = liftIO (js_setTarget (unHTMLLinkElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef HTMLLinkElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.target Mozilla HTMLLinkElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLLinkElement -> m result
getTarget self
  = liftIO (fromJSString <$> (js_getTarget (unHTMLLinkElement self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        JSRef HTMLLinkElement -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.sheet Mozilla HTMLLinkElement.sheet documentation> 
getSheet :: (MonadIO m) => HTMLLinkElement -> m (Maybe StyleSheet)
getSheet self
  = liftIO ((js_getSheet (unHTMLLinkElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        JSRef HTMLLinkElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLinkElement.relList Mozilla HTMLLinkElement.relList documentation> 
getRelList ::
           (MonadIO m) => HTMLLinkElement -> m (Maybe DOMTokenList)
getRelList self
  = liftIO ((js_getRelList (unHTMLLinkElement self)) >>= fromJSRef)