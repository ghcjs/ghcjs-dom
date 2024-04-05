{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLHyperlinkElementUtils
       (js_setHref, setHref, js_getHref, getHref, js_getOrigin, getOrigin,
        js_setProtocol, setProtocol, js_getProtocol, getProtocol,
        js_setUsername, setUsername, js_getUsername, getUsername,
        js_setPassword, setPassword, js_getPassword, getPassword,
        js_setHost, setHost, js_getHost, getHost, js_setHostname,
        setHostname, js_getHostname, getHostname, js_setPort, setPort,
        js_getPort, getPort, js_setPathname, setPathname, js_getPathname,
        getPathname, js_setSearch, setSearch, js_getSearch, getSearch,
        js_setHash, setHash, js_getHash, getHash,
        HTMLHyperlinkElementUtils(..), gTypeHTMLHyperlinkElementUtils,
        IsHTMLHyperlinkElementUtils, toHTMLHyperlinkElementUtils)
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
 
foreign import javascript unsafe "$1[\"href\"] = $2;" js_setHref ::
        HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.href Mozilla HTMLHyperlinkElementUtils.href documentation> 
setHref ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHref self val
  = liftIO
      (js_setHref (toHTMLHyperlinkElementUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"href\"]" js_getHref ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.href Mozilla HTMLHyperlinkElementUtils.href documentation> 
getHref ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHref self
  = liftIO
      (fromJSString <$> (js_getHref (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.origin Mozilla HTMLHyperlinkElementUtils.origin documentation> 
getOrigin ::
          (MonadIO m, IsHTMLHyperlinkElementUtils self,
           FromJSString result) =>
            self -> m result
getOrigin self
  = liftIO
      (fromJSString <$>
         (js_getOrigin (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"protocol\"] = $2;"
        js_setProtocol :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.protocol Mozilla HTMLHyperlinkElementUtils.protocol documentation> 
setProtocol ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setProtocol self val
  = liftIO
      (js_setProtocol (toHTMLHyperlinkElementUtils self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"protocol\"]" js_getProtocol
        :: HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.protocol Mozilla HTMLHyperlinkElementUtils.protocol documentation> 
getProtocol ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getProtocol self
  = liftIO
      (fromJSString <$>
         (js_getProtocol (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"username\"] = $2;"
        js_setUsername :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.username Mozilla HTMLHyperlinkElementUtils.username documentation> 
setUsername ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setUsername self val
  = liftIO
      (js_setUsername (toHTMLHyperlinkElementUtils self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"username\"]" js_getUsername
        :: HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.username Mozilla HTMLHyperlinkElementUtils.username documentation> 
getUsername ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getUsername self
  = liftIO
      (fromJSString <$>
         (js_getUsername (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"password\"] = $2;"
        js_setPassword :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.password Mozilla HTMLHyperlinkElementUtils.password documentation> 
setPassword ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setPassword self val
  = liftIO
      (js_setPassword (toHTMLHyperlinkElementUtils self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"password\"]" js_getPassword
        :: HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.password Mozilla HTMLHyperlinkElementUtils.password documentation> 
getPassword ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getPassword self
  = liftIO
      (fromJSString <$>
         (js_getPassword (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"host\"] = $2;" js_setHost ::
        HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.host Mozilla HTMLHyperlinkElementUtils.host documentation> 
setHost ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHost self val
  = liftIO
      (js_setHost (toHTMLHyperlinkElementUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"host\"]" js_getHost ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.host Mozilla HTMLHyperlinkElementUtils.host documentation> 
getHost ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHost self
  = liftIO
      (fromJSString <$> (js_getHost (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"hostname\"] = $2;"
        js_setHostname :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hostname Mozilla HTMLHyperlinkElementUtils.hostname documentation> 
setHostname ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setHostname self val
  = liftIO
      (js_setHostname (toHTMLHyperlinkElementUtils self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"hostname\"]" js_getHostname
        :: HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hostname Mozilla HTMLHyperlinkElementUtils.hostname documentation> 
getHostname ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getHostname self
  = liftIO
      (fromJSString <$>
         (js_getHostname (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"port\"] = $2;" js_setPort ::
        HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.port Mozilla HTMLHyperlinkElementUtils.port documentation> 
setPort ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setPort self val
  = liftIO
      (js_setPort (toHTMLHyperlinkElementUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"port\"]" js_getPort ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.port Mozilla HTMLHyperlinkElementUtils.port documentation> 
getPort ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getPort self
  = liftIO
      (fromJSString <$> (js_getPort (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"pathname\"] = $2;"
        js_setPathname :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.pathname Mozilla HTMLHyperlinkElementUtils.pathname documentation> 
setPathname ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
              self -> val -> m ()
setPathname self val
  = liftIO
      (js_setPathname (toHTMLHyperlinkElementUtils self)
         (toJSString val))
 
foreign import javascript unsafe "$1[\"pathname\"]" js_getPathname
        :: HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.pathname Mozilla HTMLHyperlinkElementUtils.pathname documentation> 
getPathname ::
            (MonadIO m, IsHTMLHyperlinkElementUtils self,
             FromJSString result) =>
              self -> m result
getPathname self
  = liftIO
      (fromJSString <$>
         (js_getPathname (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"search\"] = $2;"
        js_setSearch :: HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.search Mozilla HTMLHyperlinkElementUtils.search documentation> 
setSearch ::
          (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
            self -> val -> m ()
setSearch self val
  = liftIO
      (js_setSearch (toHTMLHyperlinkElementUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"search\"]" js_getSearch ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.search Mozilla HTMLHyperlinkElementUtils.search documentation> 
getSearch ::
          (MonadIO m, IsHTMLHyperlinkElementUtils self,
           FromJSString result) =>
            self -> m result
getSearch self
  = liftIO
      (fromJSString <$>
         (js_getSearch (toHTMLHyperlinkElementUtils self)))
 
foreign import javascript unsafe "$1[\"hash\"] = $2;" js_setHash ::
        HTMLHyperlinkElementUtils -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hash Mozilla HTMLHyperlinkElementUtils.hash documentation> 
setHash ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self, ToJSString val) =>
          self -> val -> m ()
setHash self val
  = liftIO
      (js_setHash (toHTMLHyperlinkElementUtils self) (toJSString val))
 
foreign import javascript unsafe "$1[\"hash\"]" js_getHash ::
        HTMLHyperlinkElementUtils -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHyperlinkElementUtils.hash Mozilla HTMLHyperlinkElementUtils.hash documentation> 
getHash ::
        (MonadIO m, IsHTMLHyperlinkElementUtils self,
         FromJSString result) =>
          self -> m result
getHash self
  = liftIO
      (fromJSString <$> (js_getHash (toHTMLHyperlinkElementUtils self)))