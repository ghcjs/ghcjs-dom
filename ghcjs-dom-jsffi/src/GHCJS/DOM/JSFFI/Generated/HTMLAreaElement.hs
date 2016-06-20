{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAreaElement
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
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setAlt self val = liftIO (js_setAlt (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.alt Mozilla HTMLAreaElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getAlt self = liftIO (fromJSString <$> (js_getAlt (self)))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setCoords self val = liftIO (js_setCoords (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.coords Mozilla HTMLAreaElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getCoords self = liftIO (fromJSString <$> (js_getCoords (self)))
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
setHref ::
        (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setHref self val = liftIO (js_setHref (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.href Mozilla HTMLAreaElement.href documentation> 
getHref ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHref self = liftIO (fromJSString <$> (js_getHref (self)))
 
foreign import javascript unsafe "$1[\"noHref\"] = $2;"
        js_setNoHref :: HTMLAreaElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
setNoHref :: (MonadIO m) => HTMLAreaElement -> Bool -> m ()
setNoHref self val = liftIO (js_setNoHref (self) val)
 
foreign import javascript unsafe "($1[\"noHref\"] ? 1 : 0)"
        js_getNoHref :: HTMLAreaElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.noHref Mozilla HTMLAreaElement.noHref documentation> 
getNoHref :: (MonadIO m) => HTMLAreaElement -> m Bool
getNoHref self = liftIO (js_getNoHref (self))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setPing self val = liftIO (js_setPing (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.ping Mozilla HTMLAreaElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPing self = liftIO (fromJSString <$> (js_getPing (self)))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setRel self val = liftIO (js_setRel (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.rel Mozilla HTMLAreaElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getRel self = liftIO (fromJSString <$> (js_getRel (self)))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setShape self val = liftIO (js_setShape (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.shape Mozilla HTMLAreaElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getShape self = liftIO (fromJSString <$> (js_getShape (self)))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLAreaElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAreaElement -> val -> m ()
setTarget self val = liftIO (js_setTarget (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.target Mozilla HTMLAreaElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hash Mozilla HTMLAreaElement.hash documentation> 
getHash ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHash self = liftIO (fromJSString <$> (js_getHash (self)))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.host Mozilla HTMLAreaElement.host documentation> 
getHost ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHost self = liftIO (fromJSString <$> (js_getHost (self)))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.hostname Mozilla HTMLAreaElement.hostname documentation> 
getHostname ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getHostname self
  = liftIO (fromJSString <$> (js_getHostname (self)))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.pathname Mozilla HTMLAreaElement.pathname documentation> 
getPathname ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPathname self
  = liftIO (fromJSString <$> (js_getPathname (self)))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.port Mozilla HTMLAreaElement.port documentation> 
getPort ::
        (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getPort self = liftIO (fromJSString <$> (js_getPort (self)))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.protocol Mozilla HTMLAreaElement.protocol documentation> 
getProtocol ::
            (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getProtocol self
  = liftIO (fromJSString <$> (js_getProtocol (self)))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        HTMLAreaElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.search Mozilla HTMLAreaElement.search documentation> 
getSearch ::
          (MonadIO m, FromJSString result) => HTMLAreaElement -> m result
getSearch self = liftIO (fromJSString <$> (js_getSearch (self)))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        HTMLAreaElement -> IO (Nullable DOMTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAreaElement.relList Mozilla HTMLAreaElement.relList documentation> 
getRelList ::
           (MonadIO m) => HTMLAreaElement -> m (Maybe DOMTokenList)
getRelList self
  = liftIO (nullableToMaybe <$> (js_getRelList (self)))