{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAreaElement
       (js_setAlt, setAlt, js_getAlt, getAlt, js_setCoords, setCoords,
        js_getCoords, getCoords, js_setHref, setHref, js_getHref, getHref,
        js_setNoHref, setNoHref, js_getNoHref, getNoHref, js_setPing,
        setPing, js_getPing, getPing, js_setRel, setRel, js_getRel, getRel,
        js_setShape, setShape, js_getShape, getShape, js_setTarget,
        setTarget, js_getTarget, getTarget, js_getHash, getHash,
        js_getHost, getHost, js_getHostname, getHostname, js_getPathname,
        getPathname, js_getPort, getPort, js_getProtocol, getProtocol,
        js_getSearch, getSearch, js_getRelList, getRelList,
        HTMLAreaElement, castToHTMLAreaElement, gTypeHTMLAreaElement)
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

 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setAlt self val
  = liftIO (js_setAlt (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getAlt self
  = liftIO (fromJSString <$> (js_getAlt (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setCoords self val
  = liftIO (js_setCoords (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getCoords self
  = liftIO (fromJSString <$> (js_getCoords (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setHref self val
  = liftIO (js_setHref (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHref self
  = liftIO (fromJSString <$> (js_getHref (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        js_setNoHref :: JSRef HTMLAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
setNoHref :: (MonadIO m) => HTMLAreaElement -> Bool -> m ()
setNoHref self val
  = liftIO (js_setNoHref (unHTMLAreaElement self) val)
 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        js_getNoHref :: JSRef HTMLAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
getNoHref :: (MonadIO m) => HTMLAreaElement -> m Bool
getNoHref self = liftIO (js_getNoHref (unHTMLAreaElement self))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setPing self val
  = liftIO (js_setPing (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPing self
  = liftIO (fromJSString <$> (js_getPing (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setRel self val
  = liftIO (js_setRel (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getRel self
  = liftIO (fromJSString <$> (js_getRel (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setShape self val
  = liftIO (js_setShape (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getShape self
  = liftIO (fromJSString <$> (js_getShape (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: JSRef HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setTarget self val
  = liftIO (js_setTarget (unHTMLAreaElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getTarget self
  = liftIO (fromJSString <$> (js_getTarget (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hash Mozilla HTMLAreaElement.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHash self
  = liftIO (fromJSString <$> (js_getHash (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.host Mozilla HTMLAreaElement.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHost self
  = liftIO (fromJSString <$> (js_getHost (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hostname Mozilla HTMLAreaElement.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHostname self
  = liftIO
      (fromJSString <$> (js_getHostname (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.pathname Mozilla HTMLAreaElement.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPathname self
  = liftIO
      (fromJSString <$> (js_getPathname (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.port Mozilla HTMLAreaElement.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPort self
  = liftIO (fromJSString <$> (js_getPort (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.protocol Mozilla HTMLAreaElement.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getProtocol self
  = liftIO
      (fromJSString <$> (js_getProtocol (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        JSRef HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.search Mozilla HTMLAreaElement.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getSearch self
  = liftIO (fromJSString <$> (js_getSearch (unHTMLAreaElement self)))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        JSRef HTMLAreaElement -> IO (JSRef DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelList ::
           (MonadIO m) => HTMLAreaElement -> m (Maybe DOMTokenList)
getRelList self
  = liftIO ((js_getRelList (unHTMLAreaElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLAreaElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAreaElement
#endif
