{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDocument
       (js_open, open, js_close, close, js_write, write, js_writeln,
        writeln, js_clear, clear, js_captureEvents, captureEvents,
        js_releaseEvents, releaseEvents, js_getEmbeds, getEmbeds,
        js_getPlugins, getPlugins, js_getScripts, getScripts, js_getWidth,
        getWidth, js_getHeight, getHeight, js_setDir, setDir, js_getDir,
        getDir, js_setDesignMode, setDesignMode, js_getDesignMode,
        getDesignMode, js_getCompatMode, getCompatMode, js_setBgColor,
        setBgColor, js_getBgColor, getBgColor, js_setFgColor, setFgColor,
        js_getFgColor, getFgColor, js_setAlinkColor, setAlinkColor,
        js_getAlinkColor, getAlinkColor, js_setLinkColor, setLinkColor,
        js_getLinkColor, getLinkColor, js_setVlinkColor, setVlinkColor,
        js_getVlinkColor, getVlinkColor, HTMLDocument, castToHTMLDocument,
        gTypeHTMLDocument)
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
 
foreign import javascript unsafe "$1[\"open\"]()" js_open ::
        JSRef HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.open Mozilla HTMLDocument.open documentation> 
open :: (MonadIO m) => HTMLDocument -> m ()
open self = liftIO (js_open (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        JSRef HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.close Mozilla HTMLDocument.close documentation> 
close :: (MonadIO m) => HTMLDocument -> m ()
close self = liftIO (js_close (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"write\"]($2)" js_write ::
        JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.write Mozilla HTMLDocument.write documentation> 
write ::
      (MonadIO m, ToJSString text) => HTMLDocument -> text -> m ()
write self text
  = liftIO (js_write (unHTMLDocument self) (toJSString text))
 
foreign import javascript unsafe "$1[\"writeln\"]($2)" js_writeln
        :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.writeln Mozilla HTMLDocument.writeln documentation> 
writeln ::
        (MonadIO m, ToJSString text) => HTMLDocument -> text -> m ()
writeln self text
  = liftIO (js_writeln (unHTMLDocument self) (toJSString text))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        JSRef HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.clear Mozilla HTMLDocument.clear documentation> 
clear :: (MonadIO m) => HTMLDocument -> m ()
clear self = liftIO (js_clear (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        js_captureEvents :: JSRef HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.captureEvents Mozilla HTMLDocument.captureEvents documentation> 
captureEvents :: (MonadIO m) => HTMLDocument -> m ()
captureEvents self
  = liftIO (js_captureEvents (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        js_releaseEvents :: JSRef HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.releaseEvents Mozilla HTMLDocument.releaseEvents documentation> 
releaseEvents :: (MonadIO m) => HTMLDocument -> m ()
releaseEvents self
  = liftIO (js_releaseEvents (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"embeds\"]" js_getEmbeds ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbeds ::
          (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getEmbeds self
  = liftIO ((js_getEmbeds (unHTMLDocument self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"plugins\"]" js_getPlugins ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPlugins ::
           (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getPlugins self
  = liftIO ((js_getPlugins (unHTMLDocument self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scripts\"]" js_getScripts ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScripts ::
           (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getScripts self
  = liftIO ((js_getScripts (unHTMLDocument self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLDocument -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.width Mozilla HTMLDocument.width documentation> 
getWidth :: (MonadIO m) => HTMLDocument -> m Int
getWidth self = liftIO (js_getWidth (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLDocument -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.height Mozilla HTMLDocument.height documentation> 
getHeight :: (MonadIO m) => HTMLDocument -> m Int
getHeight self = liftIO (js_getHeight (unHTMLDocument self))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
setDir ::
       (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setDir self val
  = liftIO (js_setDir (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDir ::
       (MonadIO m, FromJSString result) => HTMLDocument -> m result
getDir self
  = liftIO (fromJSString <$> (js_getDir (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"designMode\"] = $2;"
        js_setDesignMode :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
setDesignMode ::
              (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setDesignMode self val
  = liftIO (js_setDesignMode (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"designMode\"]"
        js_getDesignMode :: JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignMode ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getDesignMode self
  = liftIO
      (fromJSString <$> (js_getDesignMode (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        js_getCompatMode :: JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.compatMode Mozilla HTMLDocument.compatMode documentation> 
getCompatMode ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getCompatMode self
  = liftIO
      (fromJSString <$> (js_getCompatMode (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLDocument -> m result
getBgColor self
  = liftIO (fromJSString <$> (js_getBgColor (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"fgColor\"] = $2;"
        js_setFgColor :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
setFgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setFgColor self val
  = liftIO (js_setFgColor (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"fgColor\"]" js_getFgColor ::
        JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColor ::
           (MonadIO m, FromJSString result) => HTMLDocument -> m result
getFgColor self
  = liftIO (fromJSString <$> (js_getFgColor (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"alinkColor\"] = $2;"
        js_setAlinkColor :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
setAlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setAlinkColor self val
  = liftIO (js_setAlinkColor (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"alinkColor\"]"
        js_getAlinkColor :: JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColor ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getAlinkColor self
  = liftIO
      (fromJSString <$> (js_getAlinkColor (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"linkColor\"] = $2;"
        js_setLinkColor :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
setLinkColor ::
             (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setLinkColor self val
  = liftIO (js_setLinkColor (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"linkColor\"]"
        js_getLinkColor :: JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColor ::
             (MonadIO m, FromJSString result) => HTMLDocument -> m result
getLinkColor self
  = liftIO (fromJSString <$> (js_getLinkColor (unHTMLDocument self)))
 
foreign import javascript unsafe "$1[\"vlinkColor\"] = $2;"
        js_setVlinkColor :: JSRef HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
setVlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> val -> m ()
setVlinkColor self val
  = liftIO (js_setVlinkColor (unHTMLDocument self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vlinkColor\"]"
        js_getVlinkColor :: JSRef HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColor ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getVlinkColor self
  = liftIO
      (fromJSString <$> (js_getVlinkColor (unHTMLDocument self)))