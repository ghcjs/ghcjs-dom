{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAppletElement
       (js_setAlign, setAlign, js_getAlign, getAlign, js_setAlt, setAlt,
        js_getAlt, getAlt, js_setArchive, setArchive, js_getArchive,
        getArchive, js_setCode, setCode, js_getCode, getCode,
        js_setCodeBase, setCodeBase, js_getCodeBase, getCodeBase,
        js_setHeight, setHeight, js_getHeight, getHeight, js_setHspace,
        setHspace, js_getHspace, getHspace, js_setName, setName,
        js_getName, getName, js_setObject, setObject, js_getObject,
        getObject, js_setVspace, setVspace, js_getVspace, getVspace,
        js_setWidth, setWidth, js_getWidth, getWidth, HTMLAppletElement,
        castToHTMLAppletElement, gTypeHTMLAppletElement)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;" js_setAlt ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
setAlt ::
       (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setAlt self val
  = liftIO (js_setAlt (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]" js_getAlt ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
getAlt ::
       (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getAlt self
  = liftIO (fromJSString <$> (js_getAlt (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        js_setArchive :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
setArchive ::
           (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setArchive self val
  = liftIO
      (js_setArchive (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]" js_getArchive ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
getArchive ::
           (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getArchive self
  = liftIO
      (fromJSString <$> (js_getArchive (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"code\"] = $2;" js_setCode ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
setCode ::
        (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCode self val
  = liftIO (js_setCode (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
getCode ::
        (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getCode self
  = liftIO (fromJSString <$> (js_getCode (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        js_setCodeBase :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
setCodeBase ::
            (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setCodeBase self val
  = liftIO
      (js_setCodeBase (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]" js_getCodeBase
        :: JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
getCodeBase ::
            (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getCodeBase self
  = liftIO
      (fromJSString <$> (js_getCodeBase (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: JSRef HTMLAppletElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLAppletElement -> Int -> m ()
setHspace self val
  = liftIO (js_setHspace (unHTMLAppletElement self) val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        JSRef HTMLAppletElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLAppletElement -> m Int
getHspace self = liftIO (js_getHspace (unHTMLAppletElement self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"object\"] = $2;"
        js_setObject :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
setObject ::
          (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setObject self val
  = liftIO (js_setObject (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"object\"]" js_getObject ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
getObject ::
          (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getObject self
  = liftIO
      (fromJSString <$> (js_getObject (unHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: JSRef HTMLAppletElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLAppletElement -> Int -> m ()
setVspace self val
  = liftIO (js_setVspace (unHTMLAppletElement self) val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        JSRef HTMLAppletElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLAppletElement -> m Int
getVspace self = liftIO (js_getVspace (unHTMLAppletElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLAppletElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLAppletElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLAppletElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLAppletElement self)))
#else
module GHCJS.DOM.HTMLAppletElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
#endif
