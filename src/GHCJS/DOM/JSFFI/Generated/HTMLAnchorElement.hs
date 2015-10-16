{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAnchorElement
       (js_toString, toString, js_setCharset, setCharset, js_getCharset,
        getCharset, js_setCoords, setCoords, js_getCoords, getCoords,
        js_setDownload, setDownload, js_getDownload, getDownload,
        js_setHref, setHref, js_getHref, getHref, js_setHreflang,
        setHreflang, js_getHreflang, getHreflang, js_setName, setName,
        js_getName, getName, js_setPing, setPing, js_getPing, getPing,
        js_setRel, setRel, js_getRel, getRel, js_setRev, setRev, js_getRev,
        getRev, js_setShape, setShape, js_getShape, getShape, js_setTarget,
        setTarget, js_getTarget, getTarget, js_setType, setType,
        js_getType, getType, js_setHash, setHash, js_getHash, getHash,
        js_setHost, setHost, js_getHost, getHost, js_setHostname,
        setHostname, js_getHostname, getHostname, js_setPathname,
        setPathname, js_getPathname, getPathname, js_setPort, setPort,
        js_getPort, getPort, js_setProtocol, setProtocol, js_getProtocol,
        getProtocol, js_setSearch, setSearch, js_getSearch, getSearch,
        js_getOrigin, getOrigin, js_setText, setText, js_getText, getText,
        js_getRelList, getRelList, HTMLAnchorElement,
        castToHTMLAnchorElement, gTypeHTMLAnchorElement)
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
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.toString Mozilla HTMLAnchorElement.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
toString self = liftIO (fromJSString <$> (js_toString (self)))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCharset self val
  = liftIO (js_setCharset (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCharset self = liftIO (fromJSString <$> (js_getCharset (self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCoords self val = liftIO (js_setCoords (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCoords self = liftIO (fromJSString <$> (js_getCoords (self)))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        js_setDownload :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
setDownload ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setDownload self val
  = liftIO (js_setDownload (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"download\"]" js_getDownload
        :: HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
getDownload ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getDownload self
  = liftIO (fromJSString <$> (js_getDownload (self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHref self val = liftIO (js_setHref (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.href Mozilla HTMLAnchorElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHref self = liftIO (fromJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        js_setHreflang :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
setHreflang ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHreflang self val
  = liftIO (js_setHreflang (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]" js_getHreflang
        :: HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
getHreflang ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHreflang self
  = liftIO (fromJSString <$> (js_getHreflang (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPing self val = liftIO (js_setPing (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getPing self = liftIO (fromJSString <$> (js_getPing (self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRel self val = liftIO (js_setRel (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRel self = liftIO (fromJSString <$> (js_getRel (self)))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;" js_setRev ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
setRev ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRev self val = liftIO (js_setRev (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]" js_getRev ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
getRev ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRev self = liftIO (fromJSString <$> (js_getRev (self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setShape self val = liftIO (js_setShape (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getShape self = liftIO (fromJSString <$> (js_getShape (self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setTarget self val = liftIO (js_setTarget (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setType self val = liftIO (js_setType (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
setHash ::
        (MonadIO m, ToJSString val) =>
          HTMLAnchorElement -> Maybe val -> m ()
setHash self val = liftIO (js_setHash (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hash Mozilla HTMLAnchorElement.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) =>
          HTMLAnchorElement -> m (Maybe result)
getHash self = liftIO (fromMaybeJSString <$> (js_getHash (self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
setHost ::
        (MonadIO m, ToJSString val) =>
          HTMLAnchorElement -> Maybe val -> m ()
setHost self val = liftIO (js_setHost (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.host Mozilla HTMLAnchorElement.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) =>
          HTMLAnchorElement -> m (Maybe result)
getHost self = liftIO (fromMaybeJSString <$> (js_getHost (self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
setHostname ::
            (MonadIO m, ToJSString val) =>
              HTMLAnchorElement -> Maybe val -> m ()
setHostname self val
  = liftIO (js_setHostname (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hostname Mozilla HTMLAnchorElement.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) =>
              HTMLAnchorElement -> m (Maybe result)
getHostname self
  = liftIO (fromMaybeJSString <$> (js_getHostname (self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
setPathname ::
            (MonadIO m, ToJSString val) =>
              HTMLAnchorElement -> Maybe val -> m ()
setPathname self val
  = liftIO (js_setPathname (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.pathname Mozilla HTMLAnchorElement.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) =>
              HTMLAnchorElement -> m (Maybe result)
getPathname self
  = liftIO (fromMaybeJSString <$> (js_getPathname (self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
setPort ::
        (MonadIO m, ToJSString val) =>
          HTMLAnchorElement -> Maybe val -> m ()
setPort self val = liftIO (js_setPort (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.port Mozilla HTMLAnchorElement.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) =>
          HTMLAnchorElement -> m (Maybe result)
getPort self = liftIO (fromMaybeJSString <$> (js_getPort (self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
setProtocol ::
            (MonadIO m, ToJSString val) =>
              HTMLAnchorElement -> Maybe val -> m ()
setProtocol self val
  = liftIO (js_setProtocol (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.protocol Mozilla HTMLAnchorElement.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) =>
              HTMLAnchorElement -> m (Maybe result)
getProtocol self
  = liftIO (fromMaybeJSString <$> (js_getProtocol (self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: HTMLAnchorElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
setSearch ::
          (MonadIO m, ToJSString val) =>
            HTMLAnchorElement -> Maybe val -> m ()
setSearch self val
  = liftIO (js_setSearch (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.search Mozilla HTMLAnchorElement.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) =>
            HTMLAnchorElement -> m (Maybe result)
getSearch self
  = liftIO (fromMaybeJSString <$> (js_getSearch (self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        HTMLAnchorElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.origin Mozilla HTMLAnchorElement.origin documentation> 
getOrigin ::
          (MonadIO m, FromJSString result) =>
            HTMLAnchorElement -> m (Maybe result)
getOrigin self
  = liftIO (fromMaybeJSString <$> (js_getOrigin (self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setText self val = liftIO (js_setText (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getText self = liftIO (fromJSString <$> (js_getText (self)))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        HTMLAnchorElement -> IO (Nullable DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
getRelList ::
           (MonadIO m) => HTMLAnchorElement -> m (Maybe DOMTokenList)
getRelList self
  = liftIO (nullableToMaybe <$> (js_getRelList (self)))