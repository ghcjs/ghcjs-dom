{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.InspectorFrontendHost
       (js_loaded, loaded, js_closeWindow, closeWindow, js_bringToFront,
        bringToFront, js_inspectedURLChanged, inspectedURLChanged,
        js_setZoomFactor, setZoomFactor, js_zoomFactor, zoomFactor,
        zoomFactor_, js_userInterfaceLayoutDirection,
        userInterfaceLayoutDirection, userInterfaceLayoutDirection_,
        js_requestSetDockSide, requestSetDockSide,
        js_setAttachedWindowHeight, setAttachedWindowHeight,
        js_setAttachedWindowWidth, setAttachedWindowWidth,
        js_startWindowDrag, startWindowDrag, js_moveWindowBy, moveWindowBy,
        js_localizedStringsURL, localizedStringsURL, localizedStringsURL_,
        js_backendCommandsURL, backendCommandsURL, backendCommandsURL_,
        js_debuggableType, debuggableType, debuggableType_,
        js_inspectionLevel, inspectionLevel, inspectionLevel_, js_copyText,
        copyText, js_killText, killText, js_openInNewTab, openInNewTab,
        js_canSave, canSave, canSave_, js_save, save, js_append, append,
        js_close, close, js_platform, platform, platform_, js_port, port,
        port_, js_showContextMenu, showContextMenu,
        js_dispatchEventAsContextMenuEvent,
        dispatchEventAsContextMenuEvent, js_sendMessageToBackend,
        sendMessageToBackend, js_unbufferedLog, unbufferedLog,
        js_isUnderTest, isUnderTest, isUnderTest_, js_beep, beep,
        InspectorFrontendHost(..), gTypeInspectorFrontendHost)
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
 
foreign import javascript unsafe "$1[\"loaded\"]()" js_loaded ::
        InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.loaded Mozilla InspectorFrontendHost.loaded documentation> 
loaded :: (MonadIO m) => InspectorFrontendHost -> m ()
loaded self = liftIO (js_loaded self)
 
foreign import javascript unsafe "$1[\"closeWindow\"]()"
        js_closeWindow :: InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.closeWindow Mozilla InspectorFrontendHost.closeWindow documentation> 
closeWindow :: (MonadIO m) => InspectorFrontendHost -> m ()
closeWindow self = liftIO (js_closeWindow self)
 
foreign import javascript unsafe "$1[\"bringToFront\"]()"
        js_bringToFront :: InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.bringToFront Mozilla InspectorFrontendHost.bringToFront documentation> 
bringToFront :: (MonadIO m) => InspectorFrontendHost -> m ()
bringToFront self = liftIO (js_bringToFront self)
 
foreign import javascript unsafe "$1[\"inspectedURLChanged\"]($2)"
        js_inspectedURLChanged ::
        InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectedURLChanged Mozilla InspectorFrontendHost.inspectedURLChanged documentation> 
inspectedURLChanged ::
                    (MonadIO m, ToJSString newURL) =>
                      InspectorFrontendHost -> newURL -> m ()
inspectedURLChanged self newURL
  = liftIO (js_inspectedURLChanged self (toJSString newURL))
 
foreign import javascript unsafe "$1[\"setZoomFactor\"]($2)"
        js_setZoomFactor :: InspectorFrontendHost -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setZoomFactor Mozilla InspectorFrontendHost.setZoomFactor documentation> 
setZoomFactor ::
              (MonadIO m) => InspectorFrontendHost -> Float -> m ()
setZoomFactor self zoom = liftIO (js_setZoomFactor self zoom)
 
foreign import javascript unsafe "$1[\"zoomFactor\"]()"
        js_zoomFactor :: InspectorFrontendHost -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.zoomFactor Mozilla InspectorFrontendHost.zoomFactor documentation> 
zoomFactor :: (MonadIO m) => InspectorFrontendHost -> m Float
zoomFactor self = liftIO (js_zoomFactor self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.zoomFactor Mozilla InspectorFrontendHost.zoomFactor documentation> 
zoomFactor_ :: (MonadIO m) => InspectorFrontendHost -> m ()
zoomFactor_ self = liftIO (void (js_zoomFactor self))
 
foreign import javascript unsafe
        "$1[\"userInterfaceLayoutDirection\"]()"
        js_userInterfaceLayoutDirection ::
        InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.userInterfaceLayoutDirection Mozilla InspectorFrontendHost.userInterfaceLayoutDirection documentation> 
userInterfaceLayoutDirection ::
                             (MonadIO m, FromJSString result) =>
                               InspectorFrontendHost -> m result
userInterfaceLayoutDirection self
  = liftIO (fromJSString <$> (js_userInterfaceLayoutDirection self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.userInterfaceLayoutDirection Mozilla InspectorFrontendHost.userInterfaceLayoutDirection documentation> 
userInterfaceLayoutDirection_ ::
                              (MonadIO m) => InspectorFrontendHost -> m ()
userInterfaceLayoutDirection_ self
  = liftIO (void (js_userInterfaceLayoutDirection self))
 
foreign import javascript unsafe "$1[\"requestSetDockSide\"]($2)"
        js_requestSetDockSide :: InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.requestSetDockSide Mozilla InspectorFrontendHost.requestSetDockSide documentation> 
requestSetDockSide ::
                   (MonadIO m, ToJSString side) =>
                     InspectorFrontendHost -> side -> m ()
requestSetDockSide self side
  = liftIO (js_requestSetDockSide self (toJSString side))
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowHeight\"]($2)" js_setAttachedWindowHeight ::
        InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowHeight Mozilla InspectorFrontendHost.setAttachedWindowHeight documentation> 
setAttachedWindowHeight ::
                        (MonadIO m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowHeight self height
  = liftIO (js_setAttachedWindowHeight self height)
 
foreign import javascript unsafe
        "$1[\"setAttachedWindowWidth\"]($2)" js_setAttachedWindowWidth ::
        InspectorFrontendHost -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.setAttachedWindowWidth Mozilla InspectorFrontendHost.setAttachedWindowWidth documentation> 
setAttachedWindowWidth ::
                       (MonadIO m) => InspectorFrontendHost -> Word -> m ()
setAttachedWindowWidth self width
  = liftIO (js_setAttachedWindowWidth self width)
 
foreign import javascript unsafe "$1[\"startWindowDrag\"]()"
        js_startWindowDrag :: InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.startWindowDrag Mozilla InspectorFrontendHost.startWindowDrag documentation> 
startWindowDrag :: (MonadIO m) => InspectorFrontendHost -> m ()
startWindowDrag self = liftIO (js_startWindowDrag self)
 
foreign import javascript unsafe "$1[\"moveWindowBy\"]($2, $3)"
        js_moveWindowBy :: InspectorFrontendHost -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.moveWindowBy Mozilla InspectorFrontendHost.moveWindowBy documentation> 
moveWindowBy ::
             (MonadIO m) => InspectorFrontendHost -> Float -> Float -> m ()
moveWindowBy self x y = liftIO (js_moveWindowBy self x y)
 
foreign import javascript unsafe "$1[\"localizedStringsURL\"]()"
        js_localizedStringsURL :: InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
localizedStringsURL ::
                    (MonadIO m, FromJSString result) =>
                      InspectorFrontendHost -> m result
localizedStringsURL self
  = liftIO (fromJSString <$> (js_localizedStringsURL self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.localizedStringsURL Mozilla InspectorFrontendHost.localizedStringsURL documentation> 
localizedStringsURL_ ::
                     (MonadIO m) => InspectorFrontendHost -> m ()
localizedStringsURL_ self
  = liftIO (void (js_localizedStringsURL self))
 
foreign import javascript unsafe "$1[\"backendCommandsURL\"]()"
        js_backendCommandsURL :: InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.backendCommandsURL Mozilla InspectorFrontendHost.backendCommandsURL documentation> 
backendCommandsURL ::
                   (MonadIO m, FromJSString result) =>
                     InspectorFrontendHost -> m result
backendCommandsURL self
  = liftIO (fromJSString <$> (js_backendCommandsURL self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.backendCommandsURL Mozilla InspectorFrontendHost.backendCommandsURL documentation> 
backendCommandsURL_ :: (MonadIO m) => InspectorFrontendHost -> m ()
backendCommandsURL_ self
  = liftIO (void (js_backendCommandsURL self))
 
foreign import javascript unsafe "$1[\"debuggableType\"]()"
        js_debuggableType :: InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
debuggableType ::
               (MonadIO m, FromJSString result) =>
                 InspectorFrontendHost -> m result
debuggableType self
  = liftIO (fromJSString <$> (js_debuggableType self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.debuggableType Mozilla InspectorFrontendHost.debuggableType documentation> 
debuggableType_ :: (MonadIO m) => InspectorFrontendHost -> m ()
debuggableType_ self = liftIO (void (js_debuggableType self))
 
foreign import javascript unsafe "$1[\"inspectionLevel\"]()"
        js_inspectionLevel :: InspectorFrontendHost -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectionLevel Mozilla InspectorFrontendHost.inspectionLevel documentation> 
inspectionLevel :: (MonadIO m) => InspectorFrontendHost -> m Word
inspectionLevel self = liftIO (js_inspectionLevel self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.inspectionLevel Mozilla InspectorFrontendHost.inspectionLevel documentation> 
inspectionLevel_ :: (MonadIO m) => InspectorFrontendHost -> m ()
inspectionLevel_ self = liftIO (void (js_inspectionLevel self))
 
foreign import javascript unsafe "$1[\"copyText\"]($2)" js_copyText
        :: InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.copyText Mozilla InspectorFrontendHost.copyText documentation> 
copyText ::
         (MonadIO m, ToJSString text) =>
           InspectorFrontendHost -> text -> m ()
copyText self text = liftIO (js_copyText self (toJSString text))
 
foreign import javascript unsafe "$1[\"killText\"]($2, $3, $4)"
        js_killText ::
        InspectorFrontendHost -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.killText Mozilla InspectorFrontendHost.killText documentation> 
killText ::
         (MonadIO m, ToJSString text) =>
           InspectorFrontendHost -> text -> Bool -> Bool -> m ()
killText self text shouldPrependToKillRing shouldStartNewSequence
  = liftIO
      (js_killText self (toJSString text) shouldPrependToKillRing
         shouldStartNewSequence)
 
foreign import javascript unsafe "$1[\"openInNewTab\"]($2)"
        js_openInNewTab :: InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.openInNewTab Mozilla InspectorFrontendHost.openInNewTab documentation> 
openInNewTab ::
             (MonadIO m, ToJSString url) => InspectorFrontendHost -> url -> m ()
openInNewTab self url
  = liftIO (js_openInNewTab self (toJSString url))
 
foreign import javascript unsafe "($1[\"canSave\"]() ? 1 : 0)"
        js_canSave :: InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
canSave :: (MonadIO m) => InspectorFrontendHost -> m Bool
canSave self = liftIO (js_canSave self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.canSave Mozilla InspectorFrontendHost.canSave documentation> 
canSave_ :: (MonadIO m) => InspectorFrontendHost -> m ()
canSave_ self = liftIO (void (js_canSave self))
 
foreign import javascript unsafe "$1[\"save\"]($2, $3, $4, $5)"
        js_save ::
        InspectorFrontendHost ->
          JSString -> JSString -> Bool -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.save Mozilla InspectorFrontendHost.save documentation> 
save ::
     (MonadIO m, ToJSString url, ToJSString content) =>
       InspectorFrontendHost -> url -> content -> Bool -> Bool -> m ()
save self url content base64Encoded forceSaveAs
  = liftIO
      (js_save self (toJSString url) (toJSString content) base64Encoded
         forceSaveAs)
 
foreign import javascript unsafe "$1[\"append\"]($2, $3)" js_append
        :: InspectorFrontendHost -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.append Mozilla InspectorFrontendHost.append documentation> 
append ::
       (MonadIO m, ToJSString url, ToJSString content) =>
         InspectorFrontendHost -> url -> content -> m ()
append self url content
  = liftIO (js_append self (toJSString url) (toJSString content))
 
foreign import javascript unsafe "$1[\"close\"]($2)" js_close ::
        InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.close Mozilla InspectorFrontendHost.close documentation> 
close ::
      (MonadIO m, ToJSString url) => InspectorFrontendHost -> url -> m ()
close self url = liftIO (js_close self (toJSString url))
 
foreign import javascript unsafe "$1[\"platform\"]()" js_platform
        :: InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
platform ::
         (MonadIO m, FromJSString result) =>
           InspectorFrontendHost -> m result
platform self = liftIO (fromJSString <$> (js_platform self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.platform Mozilla InspectorFrontendHost.platform documentation> 
platform_ :: (MonadIO m) => InspectorFrontendHost -> m ()
platform_ self = liftIO (void (js_platform self))
 
foreign import javascript unsafe "$1[\"port\"]()" js_port ::
        InspectorFrontendHost -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
port ::
     (MonadIO m, FromJSString result) =>
       InspectorFrontendHost -> m result
port self = liftIO (fromJSString <$> (js_port self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.port Mozilla InspectorFrontendHost.port documentation> 
port_ :: (MonadIO m) => InspectorFrontendHost -> m ()
port_ self = liftIO (void (js_port self))
 
foreign import javascript unsafe "$1[\"showContextMenu\"]($2, $3)"
        js_showContextMenu ::
        InspectorFrontendHost -> MouseEvent -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.showContextMenu Mozilla InspectorFrontendHost.showContextMenu documentation> 
showContextMenu ::
                (MonadIO m, IsMouseEvent event, ToJSVal items) =>
                  InspectorFrontendHost -> event -> items -> m ()
showContextMenu self event items
  = liftIO
      (toJSVal items >>=
         \ items' -> js_showContextMenu self (toMouseEvent event) items')
 
foreign import javascript unsafe
        "$1[\"dispatchEventAsContextMenuEvent\"]($2)"
        js_dispatchEventAsContextMenuEvent ::
        InspectorFrontendHost -> Optional Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.dispatchEventAsContextMenuEvent Mozilla InspectorFrontendHost.dispatchEventAsContextMenuEvent documentation> 
dispatchEventAsContextMenuEvent ::
                                (MonadIO m, IsEvent event) =>
                                  InspectorFrontendHost -> Maybe event -> m ()
dispatchEventAsContextMenuEvent self event
  = liftIO
      (js_dispatchEventAsContextMenuEvent self
         (maybeToOptional (fmap toEvent event)))
 
foreign import javascript unsafe "$1[\"sendMessageToBackend\"]($2)"
        js_sendMessageToBackend ::
        InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.sendMessageToBackend Mozilla InspectorFrontendHost.sendMessageToBackend documentation> 
sendMessageToBackend ::
                     (MonadIO m, ToJSString message) =>
                       InspectorFrontendHost -> message -> m ()
sendMessageToBackend self message
  = liftIO (js_sendMessageToBackend self (toJSString message))
 
foreign import javascript unsafe "$1[\"unbufferedLog\"]($2)"
        js_unbufferedLog :: InspectorFrontendHost -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.unbufferedLog Mozilla InspectorFrontendHost.unbufferedLog documentation> 
unbufferedLog ::
              (MonadIO m, ToJSString message) =>
                InspectorFrontendHost -> message -> m ()
unbufferedLog self message
  = liftIO (js_unbufferedLog self (toJSString message))
 
foreign import javascript unsafe "($1[\"isUnderTest\"]() ? 1 : 0)"
        js_isUnderTest :: InspectorFrontendHost -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
isUnderTest :: (MonadIO m) => InspectorFrontendHost -> m Bool
isUnderTest self = liftIO (js_isUnderTest self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.isUnderTest Mozilla InspectorFrontendHost.isUnderTest documentation> 
isUnderTest_ :: (MonadIO m) => InspectorFrontendHost -> m ()
isUnderTest_ self = liftIO (void (js_isUnderTest self))
 
foreign import javascript unsafe "$1[\"beep\"]()" js_beep ::
        InspectorFrontendHost -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/InspectorFrontendHost.beep Mozilla InspectorFrontendHost.beep documentation> 
beep :: (MonadIO m) => InspectorFrontendHost -> m ()
beep self = liftIO (js_beep self)