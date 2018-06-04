{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLAppletElement
       (js_setAlign, setAlign, js_getAlign, getAlign, js_setAlt, setAlt,
        js_getAlt, getAlt, js_setArchive, setArchive, js_getArchive,
        getArchive, js_setCode, setCode, js_getCode, getCode,
        js_setCodeBase, setCodeBase, js_getCodeBase, getCodeBase,
        js_setHeight, setHeight, js_getHeight, getHeight, js_setHspace,
        setHspace, js_getHspace, getHspace, js_setName, setName,
        js_getName, getName, js_setObject, setObject, js_getObject,
        getObject, js_setVspace, setVspace, js_getVspace, getVspace,
        js_setWidth, setWidth, js_getWidth, getWidth,
        HTMLAppletElement(..), gTypeHTMLAppletElement)
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
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlign self val = liftIO (js_setAlign self (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getAlign self = liftIO (fromJSString <$> (js_getAlign self))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlt self val = liftIO (js_setAlt self (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getAlt self = liftIO (fromJSString <$> (js_getAlt self))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        js_setArchive :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
setArchive ::
           (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setArchive self val = liftIO (js_setArchive self (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]" js_getArchive ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
getArchive ::
           (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getArchive self = liftIO (fromJSString <$> (js_getArchive self))
 
foreign import javascript unsafe "$1[\"code\"] = $2;" js_setCode ::
        HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
setCode ::
        (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCode self val = liftIO (js_setCode self (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
getCode ::
        (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getCode self = liftIO (fromJSString <$> (js_getCode self))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        js_setCodeBase :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
setCodeBase ::
            (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCodeBase self val
  = liftIO (js_setCodeBase self (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]" js_getCodeBase
        :: HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
getCodeBase ::
            (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getCodeBase self = liftIO (fromJSString <$> (js_getCodeBase self))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setHeight self val = liftIO (js_setHeight self (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getHeight self = liftIO (fromJSString <$> (js_getHeight self))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: HTMLAppletElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLAppletElement -> Word -> m ()
setHspace self val = liftIO (js_setHspace self val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        HTMLAppletElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLAppletElement -> m Word
getHspace self = liftIO (js_getHspace self)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"object\"] = $2;"
        js_setObject :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
setObject ::
          (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setObject self val = liftIO (js_setObject self (toJSString val))
 
foreign import javascript unsafe "$1[\"object\"]" js_getObject ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
getObject ::
          (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getObject self = liftIO (fromJSString <$> (js_getObject self))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: HTMLAppletElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLAppletElement -> Word -> m ()
setVspace self val = liftIO (js_setVspace self val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        HTMLAppletElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLAppletElement -> m Word
getVspace self = liftIO (js_getVspace self)
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setWidth self val = liftIO (js_setWidth self (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getWidth self = liftIO (fromJSString <$> (js_getWidth self))