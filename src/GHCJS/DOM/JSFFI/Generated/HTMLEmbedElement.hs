{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLEmbedElement
       (js_getSVGDocument, getSVGDocument, js_setAlign, setAlign,
        js_getAlign, getAlign, js_setHeight, setHeight, js_getHeight,
        getHeight, js_setName, setName, js_getName, getName, js_setSrc,
        setSrc, js_getSrc, getSrc, js_setType, setType, js_getType,
        getType, js_setWidth, setWidth, js_getWidth, getWidth,
        HTMLEmbedElement, castToHTMLEmbedElement, gTypeHTMLEmbedElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument ::
        JSRef HTMLEmbedElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.getSVGDocument Mozilla HTMLEmbedElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLEmbedElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO
      ((js_getSVGDocument (unHTMLEmbedElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.align Mozilla HTMLEmbedElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.height Mozilla HTMLEmbedElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.name Mozilla HTMLEmbedElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.src Mozilla HTMLEmbedElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"type\"] = $2;" js_setType ::
        JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.type Mozilla HTMLEmbedElement.type documentation> 
setType ::
        (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setType self val
  = liftIO (js_setType (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.type Mozilla HTMLEmbedElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unHTMLEmbedElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLEmbedElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLEmbedElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLEmbedElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLEmbedElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLEmbedElement.width Mozilla HTMLEmbedElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLEmbedElement -> m result
getWidth self
  = liftIO (fromJSString <$> (js_getWidth (unHTMLEmbedElement self)))