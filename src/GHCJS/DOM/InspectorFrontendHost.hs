{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.InspectorFrontendHost
       (js_loaded, loaded, js_closeWindow, closeWindow, js_bringToFront,
        bringToFront, js_setZoomFactor, setZoomFactor,
        js_inspectedURLChanged, inspectedURLChanged, js_requestSetDockSide,
        requestSetDockSide, js_setAttachedWindowHeight,
        setAttachedWindowHeight, js_setAttachedWindowWidth,
        setAttachedWindowWidth, js_setToolbarHeight, setToolbarHeight,
        js_moveWindowBy, moveWindowBy, js_localizedStringsURL,
        localizedStringsURL, js_debuggableType, debuggableType,
        js_copyText, copyText, js_openInNewTab, openInNewTab, js_canSave,
        canSave, js_save, save, js_append, append, js_close, close,
        js_platform, platform, js_port, port, js_showContextMenu,
        showContextMenu, js_dispatchEventAsContextMenuEvent,
        dispatchEventAsContextMenuEvent, js_sendMessageToBackend,
        sendMessageToBackend, js_unbufferedLog, unbufferedLog,
        js_isUnderTest, isUnderTest, js_beep, beep, js_canInspectWorkers,
        canInspectWorkers, js_canSaveAs, canSaveAs, InspectorFrontendHost,
        castToInspectorFrontendHost, gTypeInspectorFrontendHost)
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

 
foreign import javascript unsafe "$1[\"loaded\"]()" js_loaded ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.loaded Mozilla InspectorFrontendHost.loaded documentation> 
loaded :: (MonadIO m) => InspectorFrontendHost -> m ()
loaded self = liftIO (js_loaded (unInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"closeWindow\"]()"
        js_closeWindow :: JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.closeWindow Mozilla InspectorFrontendHost.closeWindow documentation> 
closeWindow :: (MonadIO m) => InspectorFrontendHost -> m ()
closeWindow self
  = liftIO (js_closeWindow (unInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"bringToFront\"]()"
        js_bringToFront :: JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.bringToFront Mozilla InspectorFrontendHost.bringToFront documentation> 
bringToFront :: (MonadIO m) => InspectorFrontendHost -> m ()
bringToFront self
  = liftIO (js_bringToFront (unInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"setZoomFactor\"]($2)"
        js_setZoomFactor :: JSRef InspectorFrontendHost -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setZoomFactor Mozilla InspectorFrontendHost.setZoomFactor documentation> 
setZoomFactor ::
              (MonadIO m) => InspectorFrontendHost -> Float -> m ()
setZoomFactor self zoom
  = liftIO (js_setZoomFactor (unInspectorFrontendHost self) zoom)
 
foreign import javascript unsafe "$1[\"inspectedURLChanged\"]($2)"
        js_inspectedURLChanged ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectedURLChanged Mozilla InspectorFrontendHost.inspectedURLChanged documentation> 
inspectedURLChanged ::
                    (MonadIO m, ToJSString newURL) =>
                      InspectorFrontendHost -> newURL -> m ()
inspectedURLChanged self newURL
  = liftIO
      (js_inspectedURLChanged (unInspectorFrontendHost self)
         (toJSString newURL))
 
foreign import javascript unsafe "$1[\"requestSetDockSide\"]($2)"
        js_requestSetDockSide ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.requestSetDockSide Mozilla InspectorFrontendHost.requestSetDockSide documentation> 
requestSetDockSide ::
                   (MonadIO m, ToJSString side) =>
                     InspectorFrontendHost -> side -> m ()
requestSetDockSide self side
  = liftIO
      (js_requestSetDockSide (unInspectorFrontendHost self)
         (toJSString side))
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowHeight\"]($2)" js_setAttachedWindowHeight ::
        JSRef InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowHeight Mozilla InspectorFrontendHost.setAttachedWindowHeight documentation> 
setAttachedWindowHeight ::
                        (MonadIO m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowHeight self height
  = liftIO
      (js_setAttachedWindowHeight (unInspectorFrontendHost self) height)
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowWidth\"]($2)" js_setAttachedWindowWidth ::
        JSRef InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowWidth Mozilla InspectorFrontendHost.setAttachedWindowWidth documentation> 
setAttachedWindowWidth ::
                       (MonadIO m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowWidth self width
  = liftIO
      (js_setAttachedWindowWidth (unInspectorFrontendHost self) width)
 
foreign import javascript unsafe "$1[\"setToolbarHeight\"]($2)"
        js_setToolbarHeight ::
        JSRef InspectorFrontendHost -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setToolbarHeight Mozilla InspectorFrontendHost.setToolbarHeight documentation> 
setToolbarHeight ::
                 (MonadIO m) => InspectorFrontendHost -> Float -> m ()
setToolbarHeight self height
  = liftIO
      (js_setToolbarHeight (unInspectorFrontendHost self) height)
 
foreign import javascript unsafe "$1[\"moveWindowBy\"]($2, $3)"
        js_moveWindowBy ::
        JSRef InspectorFrontendHost -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.moveWindowBy Mozilla InspectorFrontendHost.moveWindowBy documentation> 
moveWindowBy ::
             (MonadIO m) => InspectorFrontendHost -> Float -> Float -> m ()
moveWindowBy self x y
  = liftIO (js_moveWindowBy (unInspectorFrontendHost self) x y)
 
foreign import javascript unsafe "$1[\"localizedStringsURL\"]()"
        js_localizedStringsURL ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
localizedStringsURL ::
                    (MonadIO m, FromJSString result) =>
                      InspectorFrontendHost -> m result
localizedStringsURL self
  = liftIO
      (fromJSString <$>
         (js_localizedStringsURL (unInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"debuggableType\"]()"
        js_debuggableType :: JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
debuggableType ::
               (MonadIO m, FromJSString result) =>
                 InspectorFrontendHost -> m result
debuggableType self
  = liftIO
      (fromJSString <$>
         (js_debuggableType (unInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"copyText\"]($2)" js_copyText
        :: JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.copyText Mozilla InspectorFrontendHost.copyText documentation> 
copyText ::
         (MonadIO m, ToJSString text) =>
           InspectorFrontendHost -> text -> m ()
copyText self text
  = liftIO
      (js_copyText (unInspectorFrontendHost self) (toJSString text))
 
foreign import javascript unsafe "$1[\"openInNewTab\"]($2)"
        js_openInNewTab :: JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.openInNewTab Mozilla InspectorFrontendHost.openInNewTab documentation> 
openInNewTab ::
             (MonadIO m, ToJSString url) => InspectorFrontendHost -> url -> m ()
openInNewTab self url
  = liftIO
      (js_openInNewTab (unInspectorFrontendHost self) (toJSString url))
 
foreign import javascript unsafe "($1[\"canSave\"]() ? 1 : 0)"
        js_canSave :: JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
canSave :: (MonadIO m) => InspectorFrontendHost -> m Bool
canSave self = liftIO (js_canSave (unInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"save\"]($2, $3, $4, $5)"
        js_save ::
        JSRef InspectorFrontendHost ->
          JSString -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.save Mozilla InspectorFrontendHost.save documentation> 
save ::
     (MonadIO m, ToJSString url, ToJSString content) =>
       InspectorFrontendHost -> url -> content -> Bool -> Bool -> m ()
save self url content base64Encoded forceSaveAs
  = liftIO
      (js_save (unInspectorFrontendHost self) (toJSString url)
         (toJSString content)
         base64Encoded
         forceSaveAs)
 
foreign import javascript unsafe "$1[\"append\"]($2, $3)" js_append
        :: JSRef InspectorFrontendHost -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.append Mozilla InspectorFrontendHost.append documentation> 
append ::
       (MonadIO m, ToJSString url, ToJSString content) =>
         InspectorFrontendHost -> url -> content -> m ()
append self url content
  = liftIO
      (js_append (unInspectorFrontendHost self) (toJSString url)
         (toJSString content))
 
foreign import javascript unsafe "$1[\"close\"]($2)" js_close ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.close Mozilla InspectorFrontendHost.close documentation> 
close ::
      (MonadIO m, ToJSString url) => InspectorFrontendHost -> url -> m ()
close self url
  = liftIO (js_close (unInspectorFrontendHost self) (toJSString url))
 
foreign import javascript unsafe "$1[\"platform\"]()" js_platform
        :: JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
platform ::
         (MonadIO m, FromJSString result) =>
           InspectorFrontendHost -> m result
platform self
  = liftIO
      (fromJSString <$> (js_platform (unInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"port\"]()" js_port ::
        JSRef InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
port ::
     (MonadIO m, FromJSString result) =>
       InspectorFrontendHost -> m result
port self
  = liftIO
      (fromJSString <$> (js_port (unInspectorFrontendHost self)))
 
foreign import javascript unsafe "$1[\"showContextMenu\"]($2, $3)"
        js_showContextMenu ::
        JSRef InspectorFrontendHost -> JSRef MouseEvent -> JSRef a -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.showContextMenu Mozilla InspectorFrontendHost.showContextMenu documentation> 
showContextMenu ::
                (MonadIO m, IsMouseEvent event) =>
                  InspectorFrontendHost -> Maybe event -> JSRef a -> m ()
showContextMenu self event items
  = liftIO
      (js_showContextMenu (unInspectorFrontendHost self)
         (maybe jsNull (unMouseEvent . toMouseEvent) event)
         items)
 
foreign import javascript unsafe
        "$1[\"dispatchEventAsContextMenuEvent\"]($2)"
        js_dispatchEventAsContextMenuEvent ::
        JSRef InspectorFrontendHost -> JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.dispatchEventAsContextMenuEvent Mozilla InspectorFrontendHost.dispatchEventAsContextMenuEvent documentation> 
dispatchEventAsContextMenuEvent ::
                                (MonadIO m, IsEvent event) =>
                                  InspectorFrontendHost -> Maybe event -> m ()
dispatchEventAsContextMenuEvent self event
  = liftIO
      (js_dispatchEventAsContextMenuEvent (unInspectorFrontendHost self)
         (maybe jsNull (unEvent . toEvent) event))
 
foreign import javascript unsafe "$1[\"sendMessageToBackend\"]($2)"
        js_sendMessageToBackend ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.sendMessageToBackend Mozilla InspectorFrontendHost.sendMessageToBackend documentation> 
sendMessageToBackend ::
                     (MonadIO m, ToJSString message) =>
                       InspectorFrontendHost -> message -> m ()
sendMessageToBackend self message
  = liftIO
      (js_sendMessageToBackend (unInspectorFrontendHost self)
         (toJSString message))
 
foreign import javascript unsafe "$1[\"unbufferedLog\"]($2)"
        js_unbufferedLog ::
        JSRef InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.unbufferedLog Mozilla InspectorFrontendHost.unbufferedLog documentation> 
unbufferedLog ::
              (MonadIO m, ToJSString message) =>
                InspectorFrontendHost -> message -> m ()
unbufferedLog self message
  = liftIO
      (js_unbufferedLog (unInspectorFrontendHost self)
         (toJSString message))
 
foreign import javascript unsafe "($1[\"isUnderTest\"]() ? 1 : 0)"
        js_isUnderTest :: JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
isUnderTest :: (MonadIO m) => InspectorFrontendHost -> m Bool
isUnderTest self
  = liftIO (js_isUnderTest (unInspectorFrontendHost self))
 
foreign import javascript unsafe "$1[\"beep\"]()" js_beep ::
        JSRef InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.beep Mozilla InspectorFrontendHost.beep documentation> 
beep :: (MonadIO m) => InspectorFrontendHost -> m ()
beep self = liftIO (js_beep (unInspectorFrontendHost self))
 
foreign import javascript unsafe
        "($1[\"canInspectWorkers\"]() ? 1 : 0)" js_canInspectWorkers ::
        JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canInspectWorkers Mozilla InspectorFrontendHost.canInspectWorkers documentation> 
canInspectWorkers :: (MonadIO m) => InspectorFrontendHost -> m Bool
canInspectWorkers self
  = liftIO (js_canInspectWorkers (unInspectorFrontendHost self))
 
foreign import javascript unsafe "($1[\"canSaveAs\"]() ? 1 : 0)"
        js_canSaveAs :: JSRef InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSaveAs Mozilla InspectorFrontendHost.canSaveAs documentation> 
canSaveAs :: (MonadIO m) => InspectorFrontendHost -> m Bool
canSaveAs self
  = liftIO (js_canSaveAs (unInspectorFrontendHost self))
#else
module GHCJS.DOM.InspectorFrontendHost (
  ) where
#endif
