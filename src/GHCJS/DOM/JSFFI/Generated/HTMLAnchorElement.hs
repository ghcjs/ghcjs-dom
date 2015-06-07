{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAnchorElement
       (js_setCharset, setCharset, js_getCharset, getCharset,
        js_setCoords, setCoords, js_getCoords, getCoords, js_setDownload,
        setDownload, js_getDownload, getDownload, js_setHref, setHref,
        js_getHref, getHref, js_setHreflang, setHreflang, js_getHreflang,
        getHreflang, js_setName, setName, js_getName, getName, js_setPing,
        setPing, js_getPing, getPing, js_setRel, setRel, js_getRel, getRel,
        js_setRev, setRev, js_getRev, getRev, js_setShape, setShape,
        js_getShape, getShape, js_setTarget, setTarget, js_getTarget,
        getTarget, js_setHash, setHash, js_getHash, getHash, js_setHost,
        setHost, js_getHost, getHost, js_setHostname, setHostname,
        js_getHostname, getHostname, js_setPathname, setPathname,
        js_getPathname, getPathname, js_setPort, setPort, js_getPort,
        getPort, js_setProtocol, setProtocol, js_getProtocol, getProtocol,
        js_setSearch, setSearch, js_getSearch, getSearch, js_getOrigin,
        getOrigin, js_setText, setText, js_getText, getText, js_getRelList,
        getRelList, HTMLAnchorElement, castToHTMLAnchorElement,
        gTypeHTMLAnchorElement)
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
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCharset self val
  = liftIO
      (js_setCharset (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCharset self
  = liftIO
      (fromJSString <$> (js_getCharset (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCoords self val
  = liftIO (js_setCoords (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCoords self
  = liftIO
      (fromJSString <$> (js_getCoords (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        js_setDownload :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
setDownload ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setDownload self val
  = liftIO
      (js_setDownload (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"download\"]" js_getDownload
        :: JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
getDownload ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getDownload self
  = liftIO
      (fromJSString <$> (js_getDownload (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHref self val
  = liftIO (js_setHref (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        js_setHreflang :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
setHreflang ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHreflang self val
  = liftIO
      (js_setHreflang (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]" js_getHreflang
        :: JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
getHreflang ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHreflang self
  = liftIO
      (fromJSString <$> (js_getHreflang (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPing self val
  = liftIO (js_setPing (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getPing self
  = liftIO (fromJSString <$> (js_getPing (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRel self val
  = liftIO (js_setRel (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRel self
  = liftIO (fromJSString <$> (js_getRel (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;" js_setRev ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
setRev ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRev self val
  = liftIO (js_setRev (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]" js_getRev ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
getRev ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRev self
  = liftIO (fromJSString <$> (js_getRev (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setShape self val
  = liftIO (js_setShape (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getShape self
  = liftIO
      (fromJSString <$> (js_getShape (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setTarget self val
  = liftIO (js_setTarget (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getTarget self
  = liftIO
      (fromJSString <$> (js_getTarget (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
setHash ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHash self val
  = liftIO (js_setHash (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHash self
  = liftIO (fromJSString <$> (js_getHash (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
setHost ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHost self val
  = liftIO (js_setHost (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHost self
  = liftIO (fromJSString <$> (js_getHost (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
setHostname ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHostname self val
  = liftIO
      (js_setHostname (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHostname self
  = liftIO
      (fromJSString <$> (js_getHostname (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
setPathname ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPathname self val
  = liftIO
      (js_setPathname (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getPathname self
  = liftIO
      (fromJSString <$> (js_getPathname (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
setPort ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPort self val
  = liftIO (js_setPort (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getPort self
  = liftIO (fromJSString <$> (js_getPort (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
setProtocol ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setProtocol self val
  = liftIO
      (js_setProtocol (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getProtocol self
  = liftIO
      (fromJSString <$> (js_getProtocol (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
setSearch ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setSearch self val
  = liftIO (js_setSearch (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getSearch self
  = liftIO
      (fromJSString <$> (js_getSearch (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.origin Mozilla HTMLAnchorElement.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getOrigin self
  = liftIO
      (fromJSString <$> (js_getOrigin (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setText self val
  = liftIO (js_setText (unHTMLAnchorElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unHTMLAnchorElement self)))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        JSRef HTMLAnchorElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
getRelList ::
           (MonadIO m) => HTMLAnchorElement -> m (Maybe DOMTokenList)
getRelList self
  = liftIO ((js_getRelList (unHTMLAnchorElement self)) >>= fromJSRef)