{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Window
       (js_openDatabase, openDatabase, js_getSelection, getSelection,
        js_focus, focus, js_blur, blur, js_close, close, js_print, print,
        js_stop, stop, js_open, open, js_showModalDialog, showModalDialog,
        js_alert, alert, js_confirm, confirm, js_prompt, prompt, js_find,
        find, js_scrollBy, scrollBy, js_scrollTo, scrollTo, js_scroll,
        scroll, js_moveBy, moveBy, js_moveTo, moveTo, js_resizeBy,
        resizeBy, js_resizeTo, resizeTo, js_matchMedia, matchMedia,
        js_getComputedStyle, getComputedStyle,
        js_webkitConvertPointFromPageToNode,
        webkitConvertPointFromPageToNode,
        js_webkitConvertPointFromNodeToPage,
        webkitConvertPointFromNodeToPage, js_postMessage, postMessage,
        js_requestAnimationFrame, requestAnimationFrame,
        js_cancelAnimationFrame, cancelAnimationFrame,
        js_webkitRequestAnimationFrame, webkitRequestAnimationFrame,
        js_webkitCancelAnimationFrame, webkitCancelAnimationFrame,
        js_webkitCancelRequestAnimationFrame,
        webkitCancelRequestAnimationFrame, js_captureEvents, captureEvents,
        js_releaseEvents, releaseEvents, js_getWebkitIndexedDB,
        getWebkitIndexedDB, js_getIndexedDB, getIndexedDB,
        js_getWebkitStorageInfo, getWebkitStorageInfo,
        js_getSpeechSynthesis, getSpeechSynthesis, js_getScreen, getScreen,
        js_getHistory, getHistory, js_getLocationbar, getLocationbar,
        js_getMenubar, getMenubar, js_getPersonalbar, getPersonalbar,
        js_getScrollbars, getScrollbars, js_getStatusbar, getStatusbar,
        js_getToolbar, getToolbar, js_getNavigator, getNavigator,
        js_getClientInformation, getClientInformation, js_getCrypto,
        getCrypto, js_setLocation, setLocation, js_getLocation,
        getLocation, js_getEvent, getEvent, js_getFrameElement,
        getFrameElement, js_getOffscreenBuffering, getOffscreenBuffering,
        js_getOuterHeight, getOuterHeight, js_getOuterWidth, getOuterWidth,
        js_getInnerHeight, getInnerHeight, js_getInnerWidth, getInnerWidth,
        js_getScreenX, getScreenX, js_getScreenY, getScreenY,
        js_getScreenLeft, getScreenLeft, js_getScreenTop, getScreenTop,
        js_getScrollX, getScrollX, js_getScrollY, getScrollY,
        js_getPageXOffset, getPageXOffset, js_getPageYOffset,
        getPageYOffset, js_getClosed, getClosed, js_getLength, getLength,
        js_setName, setName, js_getName, getName, js_setStatus, setStatus,
        js_getStatus, getStatus, js_setDefaultStatus, setDefaultStatus,
        js_getDefaultStatus, getDefaultStatus, js_getSelf, getSelf,
        js_getWindow, getWindow, js_getFrames, getFrames, js_getOpener,
        getOpener, js_getParent, getParent, js_getTop, getTop,
        js_getDocument, getDocument, js_getStyleMedia, getStyleMedia,
        js_getDevicePixelRatio, getDevicePixelRatio,
        js_getApplicationCache, getApplicationCache, js_getSessionStorage,
        getSessionStorage, js_getLocalStorage, getLocalStorage,
        js_getOrientation, getOrientation, js_getPerformance,
        getPerformance, js_getCSS, getCSS, abort, beforeUnload, blurEvent,
        canPlay, canPlayThrough, change, click, contextMenu, dblClick,
        drag, dragEnd, dragEnter, dragLeave, dragOver, dragStart, drop,
        durationChange, emptied, ended, error, focusEvent, hashChange,
        input, invalid, keyDown, keyPress, keyUp, load, loadedData,
        loadedMetadata, loadStart, message, mouseDown, mouseEnter,
        mouseLeave, mouseMove, mouseOut, mouseOver, mouseUp, mouseWheel,
        offline, online, pageHide, pageShow, pause, play, playing,
        popState, progress, rateChange, resize, scrollEvent, seeked,
        seeking, select, stalled, storage, submit, suspend, timeUpdate,
        unload, volumeChange, waiting, wheel, reset, search,
        webKitAnimationEnd, webKitAnimationIteration, webKitAnimationStart,
        animationEnd, animationIteration, animationStart,
        webKitTransitionEnd, transitionEnd, orientationChange, touchStart,
        touchMove, touchEnd, touchCancel, gestureStart, gestureChange,
        gestureEnd, deviceMotion, deviceOrientation, webKitDeviceProximity,
        webKitWillRevealBottom, webKitWillRevealLeft,
        webKitWillRevealRight, webKitWillRevealTop, Window, castToWindow,
        gTypeWindow)
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
 
foreign import javascript unsafe
        "$1[\"openDatabase\"]($2, $3, $4,\n$5, $6)" js_openDatabase ::
        JSRef Window ->
          JSString ->
            JSString ->
              JSString -> Word -> JSRef DatabaseCallback -> IO (JSRef Database)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabase ::
             (MonadIO m, ToJSString name, ToJSString version,
              ToJSString displayName) =>
               Window ->
                 name ->
                   version ->
                     displayName -> Word -> Maybe DatabaseCallback -> m (Maybe Database)
openDatabase self name version displayName estimatedSize
  creationCallback
  = liftIO
      ((js_openDatabase (unWindow self) (toJSString name)
          (toJSString version)
          (toJSString displayName)
          estimatedSize
          (maybe jsNull pToJSRef creationCallback))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        js_getSelection :: JSRef Window -> IO (JSRef Selection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelection :: (MonadIO m) => Window -> m (Maybe Selection)
getSelection self
  = liftIO ((js_getSelection (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"focus\"]()" js_focus ::
        JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focus Mozilla Window.focus documentation> 
focus :: (MonadIO m) => Window -> m ()
focus self = liftIO (js_focus (unWindow self))
 
foreign import javascript unsafe "$1[\"blur\"]()" js_blur ::
        JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blur Mozilla Window.blur documentation> 
blur :: (MonadIO m) => Window -> m ()
blur self = liftIO (js_blur (unWindow self))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.close Mozilla Window.close documentation> 
close :: (MonadIO m) => Window -> m ()
close self = liftIO (js_close (unWindow self))
 
foreign import javascript unsafe "$1[\"print\"]()" js_print ::
        JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.print Mozilla Window.print documentation> 
print :: (MonadIO m) => Window -> m ()
print self = liftIO (js_print (unWindow self))
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stop Mozilla Window.stop documentation> 
stop :: (MonadIO m) => Window -> m ()
stop self = liftIO (js_stop (unWindow self))
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4)" js_open
        ::
        JSRef Window ->
          JSString -> JSString -> JSString -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
open ::
     (MonadIO m, ToJSString url, ToJSString name, ToJSString options) =>
       Window -> url -> name -> options -> m (Maybe Window)
open self url name options
  = liftIO
      ((js_open (unWindow self) (toJSString url) (toJSString name)
          (toJSString options))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"showModalDialog\"]($2, $3,\n$4)" js_showModalDialog ::
        JSRef Window -> JSString -> JSRef a -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
showModalDialog ::
                (MonadIO m, ToJSString url, ToJSString featureArgs) =>
                  Window -> url -> JSRef a -> featureArgs -> m (JSRef a)
showModalDialog self url dialogArgs featureArgs
  = liftIO
      (js_showModalDialog (unWindow self) (toJSString url) dialogArgs
         (toJSString featureArgs))
 
foreign import javascript unsafe "$1[\"alert\"]($2)" js_alert ::
        JSRef Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
alert ::
      (MonadIO m, ToJSString message) => Window -> message -> m ()
alert self message
  = liftIO (js_alert (unWindow self) (toJSString message))
 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        js_confirm :: JSRef Window -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
confirm ::
        (MonadIO m, ToJSString message) => Window -> message -> m Bool
confirm self message
  = liftIO (js_confirm (unWindow self) (toJSString message))
 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)" js_prompt
        :: JSRef Window -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
prompt ::
       (MonadIO m, ToJSString message, ToJSString defaultValue,
        FromJSString result) =>
         Window -> message -> defaultValue -> m result
prompt self message defaultValue
  = liftIO
      (fromJSString <$>
         (js_prompt (unWindow self) (toJSString message)
            (toJSString defaultValue)))
 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)" js_find ::
        JSRef Window ->
          JSString -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
find ::
     (MonadIO m, ToJSString string) =>
       Window ->
         string -> Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m Bool
find self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftIO
      (js_find (unWindow self) (toJSString string) caseSensitive
         backwards
         wrap
         wholeWord
         searchInFrames
         showDialog)
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        js_scrollBy :: JSRef Window -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
scrollBy :: (MonadIO m) => Window -> Int -> Int -> m ()
scrollBy self x y = liftIO (js_scrollBy (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        js_scrollTo :: JSRef Window -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
scrollTo :: (MonadIO m) => Window -> Int -> Int -> m ()
scrollTo self x y = liftIO (js_scrollTo (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)" js_scroll
        :: JSRef Window -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
scroll :: (MonadIO m) => Window -> Int -> Int -> m ()
scroll self x y = liftIO (js_scroll (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)" js_moveBy
        :: JSRef Window -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveBy Mozilla Window.moveBy documentation> 
moveBy :: (MonadIO m) => Window -> Float -> Float -> m ()
moveBy self x y = liftIO (js_moveBy (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: JSRef Window -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveTo Mozilla Window.moveTo documentation> 
moveTo :: (MonadIO m) => Window -> Float -> Float -> m ()
moveTo self x y = liftIO (js_moveTo (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        js_resizeBy :: JSRef Window -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeBy Mozilla Window.resizeBy documentation> 
resizeBy :: (MonadIO m) => Window -> Float -> Float -> m ()
resizeBy self x y = liftIO (js_resizeBy (unWindow self) x y)
 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        js_resizeTo :: JSRef Window -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeTo Mozilla Window.resizeTo documentation> 
resizeTo :: (MonadIO m) => Window -> Float -> Float -> m ()
resizeTo self width height
  = liftIO (js_resizeTo (unWindow self) width height)
 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        js_matchMedia ::
        JSRef Window -> JSString -> IO (JSRef MediaQueryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
matchMedia ::
           (MonadIO m, ToJSString query) =>
             Window -> query -> m (Maybe MediaQueryList)
matchMedia self query
  = liftIO
      ((js_matchMedia (unWindow self) (toJSString query)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        js_getComputedStyle ::
        JSRef Window ->
          JSRef Element -> JSString -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getComputedStyle Mozilla Window.getComputedStyle documentation> 
getComputedStyle ::
                 (MonadIO m, IsElement element, ToJSString pseudoElement) =>
                   Window ->
                     Maybe element -> pseudoElement -> m (Maybe CSSStyleDeclaration)
getComputedStyle self element pseudoElement
  = liftIO
      ((js_getComputedStyle (unWindow self)
          (maybe jsNull (unElement . toElement) element)
          (toJSString pseudoElement))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        js_webkitConvertPointFromPageToNode ::
        JSRef Window ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
webkitConvertPointFromPageToNode ::
                                 (MonadIO m, IsNode node) =>
                                   Window ->
                                     Maybe node -> Maybe WebKitPoint -> m (Maybe WebKitPoint)
webkitConvertPointFromPageToNode self node p
  = liftIO
      ((js_webkitConvertPointFromPageToNode (unWindow self)
          (maybe jsNull (unNode . toNode) node)
          (maybe jsNull pToJSRef p))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        js_webkitConvertPointFromNodeToPage ::
        JSRef Window ->
          JSRef Node -> JSRef WebKitPoint -> IO (JSRef WebKitPoint)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
webkitConvertPointFromNodeToPage ::
                                 (MonadIO m, IsNode node) =>
                                   Window ->
                                     Maybe node -> Maybe WebKitPoint -> m (Maybe WebKitPoint)
webkitConvertPointFromNodeToPage self node p
  = liftIO
      ((js_webkitConvertPointFromNodeToPage (unWindow self)
          (maybe jsNull (unNode . toNode) node)
          (maybe jsNull pToJSRef p))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3, $4)"
        js_postMessage ::
        JSRef Window ->
          JSRef SerializedScriptValue ->
            JSRef MessagePort -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.postMessage Mozilla Window.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message,
             ToJSString targetOrigin) =>
              Window ->
                Maybe message -> Maybe MessagePort -> targetOrigin -> m ()
postMessage self message messagePort targetOrigin
  = liftIO
      (js_postMessage (unWindow self)
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message)
         (maybe jsNull pToJSRef messagePort)
         (toJSString targetOrigin))
 
foreign import javascript unsafe
        "$1[\"requestAnimationFrame\"]($2)" js_requestAnimationFrame ::
        JSRef Window -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
requestAnimationFrame ::
                      (MonadIO m) =>
                        Window -> Maybe RequestAnimationFrameCallback -> m Int
requestAnimationFrame self callback
  = liftIO
      (js_requestAnimationFrame (unWindow self)
         (maybe jsNull pToJSRef callback))
 
foreign import javascript unsafe "$1[\"cancelAnimationFrame\"]($2)"
        js_cancelAnimationFrame :: JSRef Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.cancelAnimationFrame Mozilla Window.cancelAnimationFrame documentation> 
cancelAnimationFrame :: (MonadIO m) => Window -> Int -> m ()
cancelAnimationFrame self id
  = liftIO (js_cancelAnimationFrame (unWindow self) id)
 
foreign import javascript unsafe
        "$1[\"webkitRequestAnimationFrame\"]($2)"
        js_webkitRequestAnimationFrame ::
        JSRef Window -> JSRef RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
webkitRequestAnimationFrame ::
                            (MonadIO m) =>
                              Window -> Maybe RequestAnimationFrameCallback -> m Int
webkitRequestAnimationFrame self callback
  = liftIO
      (js_webkitRequestAnimationFrame (unWindow self)
         (maybe jsNull pToJSRef callback))
 
foreign import javascript unsafe
        "$1[\"webkitCancelAnimationFrame\"]($2)"
        js_webkitCancelAnimationFrame :: JSRef Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelAnimationFrame Mozilla Window.webkitCancelAnimationFrame documentation> 
webkitCancelAnimationFrame :: (MonadIO m) => Window -> Int -> m ()
webkitCancelAnimationFrame self id
  = liftIO (js_webkitCancelAnimationFrame (unWindow self) id)
 
foreign import javascript unsafe
        "$1[\"webkitCancelRequestAnimationFrame\"]($2)"
        js_webkitCancelRequestAnimationFrame ::
        JSRef Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelRequestAnimationFrame Mozilla Window.webkitCancelRequestAnimationFrame documentation> 
webkitCancelRequestAnimationFrame ::
                                  (MonadIO m) => Window -> Int -> m ()
webkitCancelRequestAnimationFrame self id
  = liftIO (js_webkitCancelRequestAnimationFrame (unWindow self) id)
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        js_captureEvents :: JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.captureEvents Mozilla Window.captureEvents documentation> 
captureEvents :: (MonadIO m) => Window -> m ()
captureEvents self = liftIO (js_captureEvents (unWindow self))
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        js_releaseEvents :: JSRef Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.releaseEvents Mozilla Window.releaseEvents documentation> 
releaseEvents :: (MonadIO m) => Window -> m ()
releaseEvents self = liftIO (js_releaseEvents (unWindow self))
 
foreign import javascript unsafe "$1[\"webkitIndexedDB\"]"
        js_getWebkitIndexedDB :: JSRef Window -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitIndexedDB Mozilla Window.webkitIndexedDB documentation> 
getWebkitIndexedDB :: (MonadIO m) => Window -> m (Maybe IDBFactory)
getWebkitIndexedDB self
  = liftIO ((js_getWebkitIndexedDB (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"indexedDB\"]"
        js_getIndexedDB :: JSRef Window -> IO (JSRef IDBFactory)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.indexedDB Mozilla Window.indexedDB documentation> 
getIndexedDB :: (MonadIO m) => Window -> m (Maybe IDBFactory)
getIndexedDB self
  = liftIO ((js_getIndexedDB (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitStorageInfo\"]"
        js_getWebkitStorageInfo :: JSRef Window -> IO (JSRef StorageInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitStorageInfo Mozilla Window.webkitStorageInfo documentation> 
getWebkitStorageInfo ::
                     (MonadIO m) => Window -> m (Maybe StorageInfo)
getWebkitStorageInfo self
  = liftIO ((js_getWebkitStorageInfo (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"speechSynthesis\"]"
        js_getSpeechSynthesis :: JSRef Window -> IO (JSRef SpeechSynthesis)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.speechSynthesis Mozilla Window.speechSynthesis documentation> 
getSpeechSynthesis ::
                   (MonadIO m) => Window -> m (Maybe SpeechSynthesis)
getSpeechSynthesis self
  = liftIO ((js_getSpeechSynthesis (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"screen\"]" js_getScreen ::
        JSRef Window -> IO (JSRef Screen)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screen Mozilla Window.screen documentation> 
getScreen :: (MonadIO m) => Window -> m (Maybe Screen)
getScreen self
  = liftIO ((js_getScreen (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"history\"]" js_getHistory ::
        JSRef Window -> IO (JSRef History)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.history Mozilla Window.history documentation> 
getHistory :: (MonadIO m) => Window -> m (Maybe History)
getHistory self
  = liftIO ((js_getHistory (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"locationbar\"]"
        js_getLocationbar :: JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.locationbar Mozilla Window.locationbar documentation> 
getLocationbar :: (MonadIO m) => Window -> m (Maybe BarProp)
getLocationbar self
  = liftIO ((js_getLocationbar (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"menubar\"]" js_getMenubar ::
        JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.menubar Mozilla Window.menubar documentation> 
getMenubar :: (MonadIO m) => Window -> m (Maybe BarProp)
getMenubar self
  = liftIO ((js_getMenubar (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"personalbar\"]"
        js_getPersonalbar :: JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.personalbar Mozilla Window.personalbar documentation> 
getPersonalbar :: (MonadIO m) => Window -> m (Maybe BarProp)
getPersonalbar self
  = liftIO ((js_getPersonalbar (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        js_getScrollbars :: JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollbars Mozilla Window.scrollbars documentation> 
getScrollbars :: (MonadIO m) => Window -> m (Maybe BarProp)
getScrollbars self
  = liftIO ((js_getScrollbars (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"statusbar\"]"
        js_getStatusbar :: JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.statusbar Mozilla Window.statusbar documentation> 
getStatusbar :: (MonadIO m) => Window -> m (Maybe BarProp)
getStatusbar self
  = liftIO ((js_getStatusbar (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"toolbar\"]" js_getToolbar ::
        JSRef Window -> IO (JSRef BarProp)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.toolbar Mozilla Window.toolbar documentation> 
getToolbar :: (MonadIO m) => Window -> m (Maybe BarProp)
getToolbar self
  = liftIO ((js_getToolbar (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"navigator\"]"
        js_getNavigator :: JSRef Window -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.navigator Mozilla Window.navigator documentation> 
getNavigator :: (MonadIO m) => Window -> m (Maybe Navigator)
getNavigator self
  = liftIO ((js_getNavigator (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        js_getClientInformation :: JSRef Window -> IO (JSRef Navigator)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.clientInformation Mozilla Window.clientInformation documentation> 
getClientInformation ::
                     (MonadIO m) => Window -> m (Maybe Navigator)
getClientInformation self
  = liftIO ((js_getClientInformation (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"crypto\"]" js_getCrypto ::
        JSRef Window -> IO (JSRef Crypto)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.crypto Mozilla Window.crypto documentation> 
getCrypto :: (MonadIO m) => Window -> m (Maybe Crypto)
getCrypto self
  = liftIO ((js_getCrypto (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"location\"] = $2;"
        js_setLocation :: JSRef Window -> JSRef Location -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
setLocation :: (MonadIO m) => Window -> Maybe Location -> m ()
setLocation self val
  = liftIO
      (js_setLocation (unWindow self) (maybe jsNull pToJSRef val))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: JSRef Window -> IO (JSRef Location)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
getLocation :: (MonadIO m) => Window -> m (Maybe Location)
getLocation self
  = liftIO ((js_getLocation (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"event\"]" js_getEvent ::
        JSRef Window -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.event Mozilla Window.event documentation> 
getEvent :: (MonadIO m) => Window -> m (Maybe Event)
getEvent self
  = liftIO ((js_getEvent (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frameElement\"]"
        js_getFrameElement :: JSRef Window -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElement :: (MonadIO m) => Window -> m (Maybe Element)
getFrameElement self
  = liftIO ((js_getFrameElement (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)" js_getOffscreenBuffering ::
        JSRef Window -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offscreenBuffering Mozilla Window.offscreenBuffering documentation> 
getOffscreenBuffering :: (MonadIO m) => Window -> m Bool
getOffscreenBuffering self
  = liftIO (js_getOffscreenBuffering (unWindow self))
 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        js_getOuterHeight :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerHeight Mozilla Window.outerHeight documentation> 
getOuterHeight :: (MonadIO m) => Window -> m Int
getOuterHeight self = liftIO (js_getOuterHeight (unWindow self))
 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        js_getOuterWidth :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerWidth Mozilla Window.outerWidth documentation> 
getOuterWidth :: (MonadIO m) => Window -> m Int
getOuterWidth self = liftIO (js_getOuterWidth (unWindow self))
 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        js_getInnerHeight :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerHeight Mozilla Window.innerHeight documentation> 
getInnerHeight :: (MonadIO m) => Window -> m Int
getInnerHeight self = liftIO (js_getInnerHeight (unWindow self))
 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        js_getInnerWidth :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerWidth Mozilla Window.innerWidth documentation> 
getInnerWidth :: (MonadIO m) => Window -> m Int
getInnerWidth self = liftIO (js_getInnerWidth (unWindow self))
 
foreign import javascript unsafe "$1[\"screenX\"]" js_getScreenX ::
        JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenX Mozilla Window.screenX documentation> 
getScreenX :: (MonadIO m) => Window -> m Int
getScreenX self = liftIO (js_getScreenX (unWindow self))
 
foreign import javascript unsafe "$1[\"screenY\"]" js_getScreenY ::
        JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenY Mozilla Window.screenY documentation> 
getScreenY :: (MonadIO m) => Window -> m Int
getScreenY self = liftIO (js_getScreenY (unWindow self))
 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        js_getScreenLeft :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenLeft Mozilla Window.screenLeft documentation> 
getScreenLeft :: (MonadIO m) => Window -> m Int
getScreenLeft self = liftIO (js_getScreenLeft (unWindow self))
 
foreign import javascript unsafe "$1[\"screenTop\"]"
        js_getScreenTop :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenTop Mozilla Window.screenTop documentation> 
getScreenTop :: (MonadIO m) => Window -> m Int
getScreenTop self = liftIO (js_getScreenTop (unWindow self))
 
foreign import javascript unsafe "$1[\"scrollX\"]" js_getScrollX ::
        JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollX Mozilla Window.scrollX documentation> 
getScrollX :: (MonadIO m) => Window -> m Int
getScrollX self = liftIO (js_getScrollX (unWindow self))
 
foreign import javascript unsafe "$1[\"scrollY\"]" js_getScrollY ::
        JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollY Mozilla Window.scrollY documentation> 
getScrollY :: (MonadIO m) => Window -> m Int
getScrollY self = liftIO (js_getScrollY (unWindow self))
 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        js_getPageXOffset :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageXOffset Mozilla Window.pageXOffset documentation> 
getPageXOffset :: (MonadIO m) => Window -> m Int
getPageXOffset self = liftIO (js_getPageXOffset (unWindow self))
 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        js_getPageYOffset :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageYOffset Mozilla Window.pageYOffset documentation> 
getPageYOffset :: (MonadIO m) => Window -> m Int
getPageYOffset self = liftIO (js_getPageYOffset (unWindow self))
 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        js_getClosed :: JSRef Window -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.closed Mozilla Window.closed documentation> 
getClosed :: (MonadIO m) => Window -> m Bool
getClosed self = liftIO (js_getClosed (unWindow self))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef Window -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.length Mozilla Window.length documentation> 
getLength :: (MonadIO m) => Window -> m Word
getLength self = liftIO (js_getLength (unWindow self))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
setName :: (MonadIO m, ToJSString val) => Window -> val -> m ()
setName self val
  = liftIO (js_setName (unWindow self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
getName :: (MonadIO m, FromJSString result) => Window -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unWindow self)))
 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        js_setStatus :: JSRef Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
setStatus :: (MonadIO m, ToJSString val) => Window -> val -> m ()
setStatus self val
  = liftIO (js_setStatus (unWindow self) (toJSString val))
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        JSRef Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
getStatus :: (MonadIO m, FromJSString result) => Window -> m result
getStatus self
  = liftIO (fromJSString <$> (js_getStatus (unWindow self)))
 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        js_setDefaultStatus :: JSRef Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
setDefaultStatus ::
                 (MonadIO m, ToJSString val) => Window -> val -> m ()
setDefaultStatus self val
  = liftIO (js_setDefaultStatus (unWindow self) (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        js_getDefaultStatus :: JSRef Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
getDefaultStatus ::
                 (MonadIO m, FromJSString result) => Window -> m result
getDefaultStatus self
  = liftIO (fromJSString <$> (js_getDefaultStatus (unWindow self)))
 
foreign import javascript unsafe "$1[\"self\"]" js_getSelf ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.self Mozilla Window.self documentation> 
getSelf :: (MonadIO m) => Window -> m (Maybe Window)
getSelf self = liftIO ((js_getSelf (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"window\"]" js_getWindow ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.window Mozilla Window.window documentation> 
getWindow :: (MonadIO m) => Window -> m (Maybe Window)
getWindow self
  = liftIO ((js_getWindow (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"frames\"]" js_getFrames ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frames Mozilla Window.frames documentation> 
getFrames :: (MonadIO m) => Window -> m (Maybe Window)
getFrames self
  = liftIO ((js_getFrames (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"opener\"]" js_getOpener ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpener :: (MonadIO m) => Window -> m (Maybe Window)
getOpener self
  = liftIO ((js_getOpener (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"parent\"]" js_getParent ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParent :: (MonadIO m) => Window -> m (Maybe Window)
getParent self
  = liftIO ((js_getParent (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        JSRef Window -> IO (JSRef Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTop :: (MonadIO m) => Window -> m (Maybe Window)
getTop self = liftIO ((js_getTop (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"document\"]" js_getDocument
        :: JSRef Window -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.document Mozilla Window.document documentation> 
getDocument :: (MonadIO m) => Window -> m (Maybe Document)
getDocument self
  = liftIO ((js_getDocument (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        js_getStyleMedia :: JSRef Window -> IO (JSRef StyleMedia)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.styleMedia Mozilla Window.styleMedia documentation> 
getStyleMedia :: (MonadIO m) => Window -> m (Maybe StyleMedia)
getStyleMedia self
  = liftIO ((js_getStyleMedia (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        js_getDevicePixelRatio :: JSRef Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.devicePixelRatio Mozilla Window.devicePixelRatio documentation> 
getDevicePixelRatio :: (MonadIO m) => Window -> m Double
getDevicePixelRatio self
  = liftIO (js_getDevicePixelRatio (unWindow self))
 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        js_getApplicationCache ::
        JSRef Window -> IO (JSRef ApplicationCache)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.applicationCache Mozilla Window.applicationCache documentation> 
getApplicationCache ::
                    (MonadIO m) => Window -> m (Maybe ApplicationCache)
getApplicationCache self
  = liftIO ((js_getApplicationCache (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"sessionStorage\"]"
        js_getSessionStorage :: JSRef Window -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.sessionStorage Mozilla Window.sessionStorage documentation> 
getSessionStorage :: (MonadIO m) => Window -> m (Maybe Storage)
getSessionStorage self
  = liftIO ((js_getSessionStorage (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"localStorage\"]"
        js_getLocalStorage :: JSRef Window -> IO (JSRef Storage)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.localStorage Mozilla Window.localStorage documentation> 
getLocalStorage :: (MonadIO m) => Window -> m (Maybe Storage)
getLocalStorage self
  = liftIO ((js_getLocalStorage (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"orientation\"]"
        js_getOrientation :: JSRef Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientation Mozilla Window.orientation documentation> 
getOrientation :: (MonadIO m) => Window -> m Int
getOrientation self = liftIO (js_getOrientation (unWindow self))
 
foreign import javascript unsafe "$1[\"performance\"]"
        js_getPerformance :: JSRef Window -> IO (JSRef Performance)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.performance Mozilla Window.performance documentation> 
getPerformance :: (MonadIO m) => Window -> m (Maybe Performance)
getPerformance self
  = liftIO ((js_getPerformance (unWindow self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"CSS\"]" js_getCSS ::
        JSRef Window -> IO (JSRef CSS)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.CSS Mozilla Window.CSS documentation> 
getCSS :: (MonadIO m) => Window -> m (Maybe CSS)
getCSS self = liftIO ((js_getCSS (unWindow self)) >>= fromJSRef)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onabort Mozilla Window.onabort documentation> 
abort :: EventName Window UIEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onbeforeunload Mozilla Window.onbeforeunload documentation> 
beforeUnload :: EventName Window BeforeUnloadEvent
beforeUnload = unsafeEventName (toJSString "beforeunload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onblur Mozilla Window.onblur documentation> 
blurEvent :: EventName Window FocusEvent
blurEvent = unsafeEventName (toJSString "blur")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncanplay Mozilla Window.oncanplay documentation> 
canPlay :: EventName Window Event
canPlay = unsafeEventName (toJSString "canplay")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncanplaythrough Mozilla Window.oncanplaythrough documentation> 
canPlayThrough :: EventName Window Event
canPlayThrough = unsafeEventName (toJSString "canplaythrough")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onchange Mozilla Window.onchange documentation> 
change :: EventName Window Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onclick Mozilla Window.onclick documentation> 
click :: EventName Window MouseEvent
click = unsafeEventName (toJSString "click")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oncontextmenu Mozilla Window.oncontextmenu documentation> 
contextMenu :: EventName Window MouseEvent
contextMenu = unsafeEventName (toJSString "contextmenu")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondblclick Mozilla Window.ondblclick documentation> 
dblClick :: EventName Window MouseEvent
dblClick = unsafeEventName (toJSString "dblclick")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondrag Mozilla Window.ondrag documentation> 
drag :: EventName Window MouseEvent
drag = unsafeEventName (toJSString "drag")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragend Mozilla Window.ondragend documentation> 
dragEnd :: EventName Window MouseEvent
dragEnd = unsafeEventName (toJSString "dragend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragenter Mozilla Window.ondragenter documentation> 
dragEnter :: EventName Window MouseEvent
dragEnter = unsafeEventName (toJSString "dragenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragleave Mozilla Window.ondragleave documentation> 
dragLeave :: EventName Window MouseEvent
dragLeave = unsafeEventName (toJSString "dragleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragover Mozilla Window.ondragover documentation> 
dragOver :: EventName Window MouseEvent
dragOver = unsafeEventName (toJSString "dragover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondragstart Mozilla Window.ondragstart documentation> 
dragStart :: EventName Window MouseEvent
dragStart = unsafeEventName (toJSString "dragstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondrop Mozilla Window.ondrop documentation> 
drop :: EventName Window MouseEvent
drop = unsafeEventName (toJSString "drop")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondurationchange Mozilla Window.ondurationchange documentation> 
durationChange :: EventName Window Event
durationChange = unsafeEventName (toJSString "durationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onemptied Mozilla Window.onemptied documentation> 
emptied :: EventName Window Event
emptied = unsafeEventName (toJSString "emptied")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onended Mozilla Window.onended documentation> 
ended :: EventName Window Event
ended = unsafeEventName (toJSString "ended")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onerror Mozilla Window.onerror documentation> 
error :: EventName Window UIEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onfocus Mozilla Window.onfocus documentation> 
focusEvent :: EventName Window FocusEvent
focusEvent = unsafeEventName (toJSString "focus")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onhashchange Mozilla Window.onhashchange documentation> 
hashChange :: EventName Window HashChangeEvent
hashChange = unsafeEventName (toJSString "hashchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oninput Mozilla Window.oninput documentation> 
input :: EventName Window Event
input = unsafeEventName (toJSString "input")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.oninvalid Mozilla Window.oninvalid documentation> 
invalid :: EventName Window Event
invalid = unsafeEventName (toJSString "invalid")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeydown Mozilla Window.onkeydown documentation> 
keyDown :: EventName Window KeyboardEvent
keyDown = unsafeEventName (toJSString "keydown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeypress Mozilla Window.onkeypress documentation> 
keyPress :: EventName Window KeyboardEvent
keyPress = unsafeEventName (toJSString "keypress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onkeyup Mozilla Window.onkeyup documentation> 
keyUp :: EventName Window KeyboardEvent
keyUp = unsafeEventName (toJSString "keyup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onload Mozilla Window.onload documentation> 
load :: EventName Window UIEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadeddata Mozilla Window.onloadeddata documentation> 
loadedData :: EventName Window Event
loadedData = unsafeEventName (toJSString "loadeddata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadedmetadata Mozilla Window.onloadedmetadata documentation> 
loadedMetadata :: EventName Window Event
loadedMetadata = unsafeEventName (toJSString "loadedmetadata")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onloadstart Mozilla Window.onloadstart documentation> 
loadStart :: EventName Window ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmessage Mozilla Window.onmessage documentation> 
message :: EventName Window MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousedown Mozilla Window.onmousedown documentation> 
mouseDown :: EventName Window MouseEvent
mouseDown = unsafeEventName (toJSString "mousedown")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseenter Mozilla Window.onmouseenter documentation> 
mouseEnter :: EventName Window MouseEvent
mouseEnter = unsafeEventName (toJSString "mouseenter")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseleave Mozilla Window.onmouseleave documentation> 
mouseLeave :: EventName Window MouseEvent
mouseLeave = unsafeEventName (toJSString "mouseleave")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousemove Mozilla Window.onmousemove documentation> 
mouseMove :: EventName Window MouseEvent
mouseMove = unsafeEventName (toJSString "mousemove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseout Mozilla Window.onmouseout documentation> 
mouseOut :: EventName Window MouseEvent
mouseOut = unsafeEventName (toJSString "mouseout")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseover Mozilla Window.onmouseover documentation> 
mouseOver :: EventName Window MouseEvent
mouseOver = unsafeEventName (toJSString "mouseover")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmouseup Mozilla Window.onmouseup documentation> 
mouseUp :: EventName Window MouseEvent
mouseUp = unsafeEventName (toJSString "mouseup")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onmousewheel Mozilla Window.onmousewheel documentation> 
mouseWheel :: EventName Window MouseEvent
mouseWheel = unsafeEventName (toJSString "mousewheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onoffline Mozilla Window.onoffline documentation> 
offline :: EventName Window Event
offline = unsafeEventName (toJSString "offline")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ononline Mozilla Window.ononline documentation> 
online :: EventName Window Event
online = unsafeEventName (toJSString "online")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpagehide Mozilla Window.onpagehide documentation> 
pageHide :: EventName Window PageTransitionEvent
pageHide = unsafeEventName (toJSString "pagehide")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpageshow Mozilla Window.onpageshow documentation> 
pageShow :: EventName Window PageTransitionEvent
pageShow = unsafeEventName (toJSString "pageshow")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpause Mozilla Window.onpause documentation> 
pause :: EventName Window Event
pause = unsafeEventName (toJSString "pause")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onplay Mozilla Window.onplay documentation> 
play :: EventName Window Event
play = unsafeEventName (toJSString "play")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onplaying Mozilla Window.onplaying documentation> 
playing :: EventName Window Event
playing = unsafeEventName (toJSString "playing")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onpopstate Mozilla Window.onpopstate documentation> 
popState :: EventName Window PopStateEvent
popState = unsafeEventName (toJSString "popstate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onprogress Mozilla Window.onprogress documentation> 
progress :: EventName Window ProgressEvent
progress = unsafeEventName (toJSString "progress")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onratechange Mozilla Window.onratechange documentation> 
rateChange :: EventName Window Event
rateChange = unsafeEventName (toJSString "ratechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onresize Mozilla Window.onresize documentation> 
resize :: EventName Window UIEvent
resize = unsafeEventName (toJSString "resize")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onscroll Mozilla Window.onscroll documentation> 
scrollEvent :: EventName Window UIEvent
scrollEvent = unsafeEventName (toJSString "scroll")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onseeked Mozilla Window.onseeked documentation> 
seeked :: EventName Window Event
seeked = unsafeEventName (toJSString "seeked")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onseeking Mozilla Window.onseeking documentation> 
seeking :: EventName Window Event
seeking = unsafeEventName (toJSString "seeking")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onselect Mozilla Window.onselect documentation> 
select :: EventName Window UIEvent
select = unsafeEventName (toJSString "select")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onstalled Mozilla Window.onstalled documentation> 
stalled :: EventName Window Event
stalled = unsafeEventName (toJSString "stalled")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onstorage Mozilla Window.onstorage documentation> 
storage :: EventName Window StorageEvent
storage = unsafeEventName (toJSString "storage")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsubmit Mozilla Window.onsubmit documentation> 
submit :: EventName Window Event
submit = unsafeEventName (toJSString "submit")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsuspend Mozilla Window.onsuspend documentation> 
suspend :: EventName Window Event
suspend = unsafeEventName (toJSString "suspend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontimeupdate Mozilla Window.ontimeupdate documentation> 
timeUpdate :: EventName Window Event
timeUpdate = unsafeEventName (toJSString "timeupdate")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onunload Mozilla Window.onunload documentation> 
unload :: EventName Window UIEvent
unload = unsafeEventName (toJSString "unload")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onvolumechange Mozilla Window.onvolumechange documentation> 
volumeChange :: EventName Window Event
volumeChange = unsafeEventName (toJSString "volumechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwaiting Mozilla Window.onwaiting documentation> 
waiting :: EventName Window Event
waiting = unsafeEventName (toJSString "waiting")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwheel Mozilla Window.onwheel documentation> 
wheel :: EventName Window WheelEvent
wheel = unsafeEventName (toJSString "wheel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onreset Mozilla Window.onreset documentation> 
reset :: EventName Window Event
reset = unsafeEventName (toJSString "reset")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onsearch Mozilla Window.onsearch documentation> 
search :: EventName Window Event
search = unsafeEventName (toJSString "search")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationend Mozilla Window.onwebkitanimationend documentation> 
webKitAnimationEnd :: EventName Window AnimationEvent
webKitAnimationEnd
  = unsafeEventName (toJSString "webkitanimationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationiteration Mozilla Window.onwebkitanimationiteration documentation> 
webKitAnimationIteration :: EventName Window AnimationEvent
webKitAnimationIteration
  = unsafeEventName (toJSString "webkitanimationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitanimationstart Mozilla Window.onwebkitanimationstart documentation> 
webKitAnimationStart :: EventName Window AnimationEvent
webKitAnimationStart
  = unsafeEventName (toJSString "webkitanimationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationend Mozilla Window.onanimationend documentation> 
animationEnd :: EventName Window AnimationEvent
animationEnd = unsafeEventName (toJSString "animationend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationiteration Mozilla Window.onanimationiteration documentation> 
animationIteration :: EventName Window AnimationEvent
animationIteration
  = unsafeEventName (toJSString "animationiteration")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onanimationstart Mozilla Window.onanimationstart documentation> 
animationStart :: EventName Window AnimationEvent
animationStart = unsafeEventName (toJSString "animationstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkittransitionend Mozilla Window.onwebkittransitionend documentation> 
webKitTransitionEnd :: EventName Window TransitionEvent
webKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontransitionend Mozilla Window.ontransitionend documentation> 
transitionEnd :: EventName Window TransitionEvent
transitionEnd = unsafeEventName (toJSString "transitionend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onorientationchange Mozilla Window.onorientationchange documentation> 
orientationChange :: EventName Window Event
orientationChange
  = unsafeEventName (toJSString "orientationchange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchstart Mozilla Window.ontouchstart documentation> 
touchStart :: EventName Window TouchEvent
touchStart = unsafeEventName (toJSString "touchstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchmove Mozilla Window.ontouchmove documentation> 
touchMove :: EventName Window TouchEvent
touchMove = unsafeEventName (toJSString "touchmove")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchend Mozilla Window.ontouchend documentation> 
touchEnd :: EventName Window TouchEvent
touchEnd = unsafeEventName (toJSString "touchend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ontouchcancel Mozilla Window.ontouchcancel documentation> 
touchCancel :: EventName Window TouchEvent
touchCancel = unsafeEventName (toJSString "touchcancel")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturestart Mozilla Window.ongesturestart documentation> 
gestureStart :: EventName Window UIEvent
gestureStart = unsafeEventName (toJSString "gesturestart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturechange Mozilla Window.ongesturechange documentation> 
gestureChange :: EventName Window UIEvent
gestureChange = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongestureend Mozilla Window.ongestureend documentation> 
gestureEnd :: EventName Window UIEvent
gestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondevicemotion Mozilla Window.ondevicemotion documentation> 
deviceMotion :: EventName Window DeviceMotionEvent
deviceMotion = unsafeEventName (toJSString "devicemotion")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ondeviceorientation Mozilla Window.ondeviceorientation documentation> 
deviceOrientation :: EventName Window DeviceOrientationEvent
deviceOrientation
  = unsafeEventName (toJSString "deviceorientation")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitdeviceproximity Mozilla Window.onwebkitdeviceproximity documentation> 
webKitDeviceProximity :: EventName Window DeviceProximityEvent
webKitDeviceProximity
  = unsafeEventName (toJSString "webkitdeviceproximity")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealbottom Mozilla Window.onwebkitwillrevealbottom documentation> 
webKitWillRevealBottom :: EventName Window Event
webKitWillRevealBottom
  = unsafeEventName (toJSString "webkitwillrevealbottom")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealleft Mozilla Window.onwebkitwillrevealleft documentation> 
webKitWillRevealLeft :: EventName Window Event
webKitWillRevealLeft
  = unsafeEventName (toJSString "webkitwillrevealleft")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealright Mozilla Window.onwebkitwillrevealright documentation> 
webKitWillRevealRight :: EventName Window Event
webKitWillRevealRight
  = unsafeEventName (toJSString "webkitwillrevealright")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkitwillrevealtop Mozilla Window.onwebkitwillrevealtop documentation> 
webKitWillRevealTop :: EventName Window Event
webKitWillRevealTop
  = unsafeEventName (toJSString "webkitwillrevealtop")