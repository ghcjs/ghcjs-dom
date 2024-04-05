{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAnchorElement
       (js_setCharset, setCharset, js_getCharset, getCharset,
        js_setCoords, setCoords, js_getCoords, getCoords, js_setDownload,
        setDownload, js_getDownload, getDownload, js_setHreflang,
        setHreflang, js_getHreflang, getHreflang, js_setName, setName,
        js_getName, getName, js_setPing, setPing, js_getPing, getPing,
        js_setRel, setRel, js_getRel, getRel, js_setRev, setRev, js_getRev,
        getRev, js_setShape, setShape, js_getShape, getShape, js_setTarget,
        setTarget, js_getTarget, getTarget, js_setType, setType,
        js_getType, getType, js_setText, setText, js_getText, getText,
        js_getRelList, getRelList, HTMLAnchorElement(..),
        gTypeHTMLAnchorElement)
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
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        js_setCharset :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
setCharset ::
           (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCharset self val = liftIO (js_setCharset self (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]" js_getCharset ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.charset Mozilla HTMLAnchorElement.charset documentation> 
getCharset ::
           (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCharset self = liftIO (fromJSString <$> (js_getCharset self))
 
foreign import javascript unsafe "$1[\"coords\"] = $2;"
        js_setCoords :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
setCoords ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setCoords self val = liftIO (js_setCoords self (toJSString val))
 
foreign import javascript unsafe "$1[\"coords\"]" js_getCoords ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.coords Mozilla HTMLAnchorElement.coords documentation> 
getCoords ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getCoords self = liftIO (fromJSString <$> (js_getCoords self))
 
foreign import javascript unsafe "$1[\"download\"] = $2;"
        js_setDownload :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
setDownload ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setDownload self val
  = liftIO (js_setDownload self (toJSString val))
 
foreign import javascript unsafe "$1[\"download\"]" js_getDownload
        :: HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.download Mozilla HTMLAnchorElement.download documentation> 
getDownload ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getDownload self = liftIO (fromJSString <$> (js_getDownload self))
 
foreign import javascript unsafe "$1[\"hreflang\"] = $2;"
        js_setHreflang :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
setHreflang ::
            (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setHreflang self val
  = liftIO (js_setHreflang self (toJSString val))
 
foreign import javascript unsafe "$1[\"hreflang\"]" js_getHreflang
        :: HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.hreflang Mozilla HTMLAnchorElement.hreflang documentation> 
getHreflang ::
            (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getHreflang self = liftIO (fromJSString <$> (js_getHreflang self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.name Mozilla HTMLAnchorElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"ping\"] = $2;" js_setPing ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
setPing ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setPing self val = liftIO (js_setPing self (toJSString val))
 
foreign import javascript unsafe "$1[\"ping\"]" js_getPing ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.ping Mozilla HTMLAnchorElement.ping documentation> 
getPing ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getPing self = liftIO (fromJSString <$> (js_getPing self))
 
foreign import javascript unsafe "$1[\"rel\"] = $2;" js_setRel ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
setRel ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRel self val = liftIO (js_setRel self (toJSString val))
 
foreign import javascript unsafe "$1[\"rel\"]" js_getRel ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rel Mozilla HTMLAnchorElement.rel documentation> 
getRel ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRel self = liftIO (fromJSString <$> (js_getRel self))
 
foreign import javascript unsafe "$1[\"rev\"] = $2;" js_setRev ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
setRev ::
       (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setRev self val = liftIO (js_setRev self (toJSString val))
 
foreign import javascript unsafe "$1[\"rev\"]" js_getRev ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.rev Mozilla HTMLAnchorElement.rev documentation> 
getRev ::
       (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getRev self = liftIO (fromJSString <$> (js_getRev self))
 
foreign import javascript unsafe "$1[\"shape\"] = $2;" js_setShape
        :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
setShape ::
         (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setShape self val = liftIO (js_setShape self (toJSString val))
 
foreign import javascript unsafe "$1[\"shape\"]" js_getShape ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.shape Mozilla HTMLAnchorElement.shape documentation> 
getShape ::
         (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getShape self = liftIO (fromJSString <$> (js_getShape self))
 
foreign import javascript unsafe "$1[\"target\"] = $2;"
        js_setTarget :: HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
setTarget ::
          (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setTarget self val = liftIO (js_setTarget self (toJSString val))
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.target Mozilla HTMLAnchorElement.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getTarget self = liftIO (fromJSString <$> (js_getTarget self))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setType self val = liftIO (js_setType self (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.type Mozilla HTMLAnchorElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getType self = liftIO (fromJSString <$> (js_getType self))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        HTMLAnchorElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
setText ::
        (MonadIO m, ToJSString val) => HTMLAnchorElement -> val -> m ()
setText self val = liftIO (js_setText self (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        HTMLAnchorElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.text Mozilla HTMLAnchorElement.text documentation> 
getText ::
        (MonadIO m, FromJSString result) => HTMLAnchorElement -> m result
getText self = liftIO (fromJSString <$> (js_getText self))
 
foreign import javascript unsafe "$1[\"relList\"]" js_getRelList ::
        HTMLAnchorElement -> IO DOMTokenList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAnchorElement.relList Mozilla HTMLAnchorElement.relList documentation> 
getRelList :: (MonadIO m) => HTMLAnchorElement -> m DOMTokenList
getRelList self = liftIO (js_getRelList self)