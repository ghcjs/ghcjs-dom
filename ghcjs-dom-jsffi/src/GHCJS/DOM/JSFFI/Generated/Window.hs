{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Window
       (js_decodeURI, decodeURI, decodeURI_, js_decodeURIComponent,
        decodeURIComponent, decodeURIComponent_, js_encodeURI, encodeURI,
        encodeURI_, js_encodeURIComponent, encodeURIComponent,
        encodeURIComponent_, js_fetch, fetch, fetch_, js_openDatabase,
        openDatabase, openDatabase_, openDatabaseUnsafe,
        openDatabaseUnchecked, js_close, close, js_stop, stop, js_focus,
        focus, js_blur, blur, js_open, open, open_, openUnsafe,
        openUnchecked, js_alertNoMessage, alertNoMessage, js_alert, alert,
        js_confirm, confirm, confirm_, js_prompt, prompt, prompt_,
        promptUnsafe, promptUnchecked, js_print, print,
        js_requestAnimationFrame, requestAnimationFrame,
        requestAnimationFrame_, js_cancelAnimationFrame,
        cancelAnimationFrame, js_postMessage, postMessage,
        js_captureEvents, captureEvents, js_releaseEvents, releaseEvents,
        js_getComputedStyle, getComputedStyle, getComputedStyle_,
        js_matchMedia, matchMedia, matchMedia_, js_moveTo, moveTo,
        js_moveBy, moveBy, js_resizeTo, resizeTo, js_resizeBy, resizeBy,
        js_scrollOpt, scrollOpt, js_scroll, scroll, js_scrollToOpt,
        scrollToOpt, js_scrollTo, scrollTo, js_scrollByOpt, scrollByOpt,
        js_scrollBy, scrollBy, js_getSelection, getSelection,
        getSelection_, getSelectionUnsafe, getSelectionUnchecked, js_find,
        find, find_, js_webkitRequestAnimationFrame,
        webkitRequestAnimationFrame, webkitRequestAnimationFrame_,
        js_webkitCancelAnimationFrame, webkitCancelAnimationFrame,
        js_webkitCancelRequestAnimationFrame,
        webkitCancelRequestAnimationFrame, js_getMatchedCSSRules,
        getMatchedCSSRules, getMatchedCSSRules_, js_showModalDialog,
        showModalDialog, showModalDialog_,
        js_webkitConvertPointFromPageToNode,
        webkitConvertPointFromPageToNode,
        webkitConvertPointFromPageToNode_,
        js_webkitConvertPointFromNodeToPage,
        webkitConvertPointFromNodeToPage,
        webkitConvertPointFromNodeToPage_,
        js_collectMatchingElementsInFlatTree,
        collectMatchingElementsInFlatTree,
        collectMatchingElementsInFlatTree_, js_matchingElementInFlatTree,
        matchingElementInFlatTree, matchingElementInFlatTree_,
        matchingElementInFlatTreeUnsafe,
        matchingElementInFlatTreeUnchecked, js_getIndexedDB, getIndexedDB,
        js_getWebkitIndexedDB, getWebkitIndexedDB, js_getWebkitStorageInfo,
        getWebkitStorageInfo, js_getSpeechSynthesis, getSpeechSynthesis,
        js_getWindow, getWindow, js_getSelf, getSelf, js_getDocument,
        getDocument, js_setName, setName, js_getName, getName,
        js_getLocation, getLocation, js_getHistory, getHistory,
        js_getCustomElements, getCustomElements, js_getLocationbar,
        getLocationbar, js_getMenubar, getMenubar, js_getPersonalbar,
        getPersonalbar, js_getScrollbars, getScrollbars, js_getStatusbar,
        getStatusbar, js_getToolbar, getToolbar, js_setStatus, setStatus,
        js_getStatus, getStatus, js_getClosed, getClosed, js_getFrames,
        getFrames, js_getLength, getLength, js_getTop, getTop,
        getTopUnsafe, getTopUnchecked, js_getOpener, getOpener,
        getOpenerUnsafe, getOpenerUnchecked, js_getParent, getParent,
        getParentUnsafe, getParentUnchecked, js_getFrameElement,
        getFrameElement, getFrameElementUnsafe, getFrameElementUnchecked,
        js_getNavigator, getNavigator, js_getApplicationCache,
        getApplicationCache, js_getSessionStorage, getSessionStorage,
        js_getLocalStorage, getLocalStorage, js_getScreen, getScreen,
        js_getInnerHeight, getInnerHeight, js_getInnerWidth, getInnerWidth,
        js_getScrollX, getScrollX, js_getPageXOffset, getPageXOffset,
        js_getScrollY, getScrollY, js_getPageYOffset, getPageYOffset,
        js_getScreenX, getScreenX, js_getScreenY, getScreenY,
        js_getOuterWidth, getOuterWidth, js_getOuterHeight, getOuterHeight,
        js_getDevicePixelRatio, getDevicePixelRatio, js_getOrientation,
        getOrientation, js_getEvent, getEvent, js_setDefaultStatus,
        setDefaultStatus, js_getDefaultStatus, getDefaultStatus,
        js_setDefaultstatus, setDefaultstatus, js_getDefaultstatus,
        getDefaultstatus, js_getOffscreenBuffering, getOffscreenBuffering,
        js_getScreenLeft, getScreenLeft, js_getScreenTop, getScreenTop,
        js_getClientInformation, getClientInformation, js_getStyleMedia,
        getStyleMedia, gestureChange, gestureEnd, gestureStart,
        deviceMotion, deviceOrientation, webKitDeviceProximity,
        webKitAnimationEnd, webKitAnimationIteration, webKitAnimationStart,
        webKitTransitionEnd, Window(..), gTypeWindow)
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
 
foreign import javascript unsafe "$1[\"decodeURI\"]($2)"
        js_decodeURI :: Window -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURI Mozilla Window.decodeURI documentation> 
decodeURI ::
          (MonadIO m, ToJSString uri, FromJSString result) =>
            Window -> uri -> m result
decodeURI self uri
  = liftIO (fromJSString <$> (js_decodeURI self (toJSString uri)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURI Mozilla Window.decodeURI documentation> 
decodeURI_ :: (MonadIO m, ToJSString uri) => Window -> uri -> m ()
decodeURI_ self uri
  = liftIO (void (js_decodeURI self (toJSString uri)))
 
foreign import javascript unsafe "$1[\"decodeURIComponent\"]($2)"
        js_decodeURIComponent :: Window -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURIComponent Mozilla Window.decodeURIComponent documentation> 
decodeURIComponent ::
                   (MonadIO m, ToJSString uri, FromJSString result) =>
                     Window -> uri -> m result
decodeURIComponent self uri
  = liftIO
      (fromJSString <$> (js_decodeURIComponent self (toJSString uri)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.decodeURIComponent Mozilla Window.decodeURIComponent documentation> 
decodeURIComponent_ ::
                    (MonadIO m, ToJSString uri) => Window -> uri -> m ()
decodeURIComponent_ self uri
  = liftIO (void (js_decodeURIComponent self (toJSString uri)))
 
foreign import javascript unsafe "$1[\"encodeURI\"]($2)"
        js_encodeURI :: Window -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURI Mozilla Window.encodeURI documentation> 
encodeURI ::
          (MonadIO m, ToJSString uri, FromJSString result) =>
            Window -> uri -> m result
encodeURI self uri
  = liftIO (fromJSString <$> (js_encodeURI self (toJSString uri)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURI Mozilla Window.encodeURI documentation> 
encodeURI_ :: (MonadIO m, ToJSString uri) => Window -> uri -> m ()
encodeURI_ self uri
  = liftIO (void (js_encodeURI self (toJSString uri)))
 
foreign import javascript unsafe "$1[\"encodeURIComponent\"]($2)"
        js_encodeURIComponent :: Window -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURIComponent Mozilla Window.encodeURIComponent documentation> 
encodeURIComponent ::
                   (MonadIO m, ToJSString uri, FromJSString result) =>
                     Window -> uri -> m result
encodeURIComponent self uri
  = liftIO
      (fromJSString <$> (js_encodeURIComponent self (toJSString uri)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.encodeURIComponent Mozilla Window.encodeURIComponent documentation> 
encodeURIComponent_ ::
                    (MonadIO m, ToJSString uri) => Window -> uri -> m ()
encodeURIComponent_ self uri
  = liftIO (void (js_encodeURIComponent self (toJSString uri)))
 
foreign import javascript interruptible
        "$1[\"fetch\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_fetch ::
        Window -> JSVal -> Optional RequestInit -> IO (JSVal, Response)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.fetch Mozilla Window.fetch documentation> 
fetch ::
      (MonadIO m, ToJSVal input) =>
        Window -> input -> Maybe RequestInit -> m Response
fetch self input init
  = liftIO
      ((toJSVal input >>= \ input' -> js_fetch self input'
          (maybeToOptional init))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.fetch Mozilla Window.fetch documentation> 
fetch_ ::
       (MonadIO m, ToJSVal input) =>
         Window -> input -> Maybe RequestInit -> m ()
fetch_ self input init
  = liftIO
      (void
         (toJSVal input >>= \ input' -> js_fetch self input'
            (maybeToOptional init)))
 
foreign import javascript safe
        "$1[\"openDatabase\"]($2, $3, $4,\n$5, $6)" js_openDatabase ::
        Window ->
          JSString ->
            JSString ->
              JSString ->
                Word -> Optional DatabaseCallback -> IO (Nullable Database)

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
      (nullableToMaybe <$>
         (js_openDatabase self (toJSString name) (toJSString version)
            (toJSString displayName)
            estimatedSize
            (maybeToOptional creationCallback)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabase_ ::
              (MonadIO m, ToJSString name, ToJSString version,
               ToJSString displayName) =>
                Window ->
                  name ->
                    version -> displayName -> Word -> Maybe DatabaseCallback -> m ()
openDatabase_ self name version displayName estimatedSize
  creationCallback
  = liftIO
      (void
         (js_openDatabase self (toJSString name) (toJSString version)
            (toJSString displayName)
            estimatedSize
            (maybeToOptional creationCallback)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabaseUnsafe ::
                   (MonadIO m, ToJSString name, ToJSString version,
                    ToJSString displayName, HasCallStack) =>
                     Window ->
                       name ->
                         version ->
                           displayName -> Word -> Maybe DatabaseCallback -> m Database
openDatabaseUnsafe self name version displayName estimatedSize
  creationCallback
  = liftIO
      ((nullableToMaybe <$>
          (js_openDatabase self (toJSString name) (toJSString version)
             (toJSString displayName)
             estimatedSize
             (maybeToOptional creationCallback)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.openDatabase Mozilla Window.openDatabase documentation> 
openDatabaseUnchecked ::
                      (MonadIO m, ToJSString name, ToJSString version,
                       ToJSString displayName) =>
                        Window ->
                          name ->
                            version ->
                              displayName -> Word -> Maybe DatabaseCallback -> m Database
openDatabaseUnchecked self name version displayName estimatedSize
  creationCallback
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_openDatabase self (toJSString name) (toJSString version)
            (toJSString displayName)
            estimatedSize
            (maybeToOptional creationCallback)))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.close Mozilla Window.close documentation> 
close :: (MonadIO m) => Window -> m ()
close self = liftIO (js_close self)
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.stop Mozilla Window.stop documentation> 
stop :: (MonadIO m) => Window -> m ()
stop self = liftIO (js_stop self)
 
foreign import javascript unsafe "$1[\"focus\"]()" js_focus ::
        Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.focus Mozilla Window.focus documentation> 
focus :: (MonadIO m) => Window -> m ()
focus self = liftIO (js_focus self)
 
foreign import javascript unsafe "$1[\"blur\"]()" js_blur ::
        Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.blur Mozilla Window.blur documentation> 
blur :: (MonadIO m) => Window -> m ()
blur self = liftIO (js_blur self)
 
foreign import javascript unsafe "$1[\"open\"]($2, $3, $4)" js_open
        ::
        Window ->
          Optional JSString ->
            Optional JSString -> Optional JSString -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
open ::
     (MonadIO m, ToJSString url, ToJSString target,
      ToJSString features) =>
       Window ->
         Maybe url -> Maybe target -> Maybe features -> m (Maybe Window)
open self url target features
  = liftIO
      (nullableToMaybe <$>
         (js_open self (toOptionalJSString url) (toOptionalJSString target)
            (toOptionalJSString features)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
open_ ::
      (MonadIO m, ToJSString url, ToJSString target,
       ToJSString features) =>
        Window -> Maybe url -> Maybe target -> Maybe features -> m ()
open_ self url target features
  = liftIO
      (void
         (js_open self (toOptionalJSString url) (toOptionalJSString target)
            (toOptionalJSString features)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
openUnsafe ::
           (MonadIO m, ToJSString url, ToJSString target, ToJSString features,
            HasCallStack) =>
             Window -> Maybe url -> Maybe target -> Maybe features -> m Window
openUnsafe self url target features
  = liftIO
      ((nullableToMaybe <$>
          (js_open self (toOptionalJSString url) (toOptionalJSString target)
             (toOptionalJSString features)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.open Mozilla Window.open documentation> 
openUnchecked ::
              (MonadIO m, ToJSString url, ToJSString target,
               ToJSString features) =>
                Window -> Maybe url -> Maybe target -> Maybe features -> m Window
openUnchecked self url target features
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_open self (toOptionalJSString url) (toOptionalJSString target)
            (toOptionalJSString features)))
 
foreign import javascript unsafe "$1[\"alert\"]()"
        js_alertNoMessage :: Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
alertNoMessage :: (MonadIO m) => Window -> m ()
alertNoMessage self = liftIO (js_alertNoMessage self)
 
foreign import javascript unsafe "$1[\"alert\"]($2)" js_alert ::
        Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.alert Mozilla Window.alert documentation> 
alert ::
      (MonadIO m, ToJSString message) => Window -> message -> m ()
alert self message = liftIO (js_alert self (toJSString message))
 
foreign import javascript unsafe "($1[\"confirm\"]($2) ? 1 : 0)"
        js_confirm :: Window -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
confirm ::
        (MonadIO m, ToJSString message) =>
          Window -> Maybe message -> m Bool
confirm self message
  = liftIO (js_confirm self (toOptionalJSString message))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.confirm Mozilla Window.confirm documentation> 
confirm_ ::
         (MonadIO m, ToJSString message) => Window -> Maybe message -> m ()
confirm_ self message
  = liftIO (void (js_confirm self (toOptionalJSString message)))
 
foreign import javascript unsafe "$1[\"prompt\"]($2, $3)" js_prompt
        ::
        Window ->
          Optional JSString -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
prompt ::
       (MonadIO m, ToJSString message, ToJSString defaultValue,
        FromJSString result) =>
         Window -> Maybe message -> Maybe defaultValue -> m (Maybe result)
prompt self message defaultValue
  = liftIO
      (fromMaybeJSString <$>
         (js_prompt self (toOptionalJSString message)
            (toOptionalJSString defaultValue)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
prompt_ ::
        (MonadIO m, ToJSString message, ToJSString defaultValue) =>
          Window -> Maybe message -> Maybe defaultValue -> m ()
prompt_ self message defaultValue
  = liftIO
      (void
         (js_prompt self (toOptionalJSString message)
            (toOptionalJSString defaultValue)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
promptUnsafe ::
             (MonadIO m, ToJSString message, ToJSString defaultValue,
              HasCallStack, FromJSString result) =>
               Window -> Maybe message -> Maybe defaultValue -> m result
promptUnsafe self message defaultValue
  = liftIO
      ((fromMaybeJSString <$>
          (js_prompt self (toOptionalJSString message)
             (toOptionalJSString defaultValue)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt Mozilla Window.prompt documentation> 
promptUnchecked ::
                (MonadIO m, ToJSString message, ToJSString defaultValue,
                 FromJSString result) =>
                  Window -> Maybe message -> Maybe defaultValue -> m result
promptUnchecked self message defaultValue
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_prompt self (toOptionalJSString message)
            (toOptionalJSString defaultValue)))
 
foreign import javascript unsafe "$1[\"print\"]()" js_print ::
        Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.print Mozilla Window.print documentation> 
print :: (MonadIO m) => Window -> m ()
print self = liftIO (js_print self)
 
foreign import javascript unsafe
        "$1[\"requestAnimationFrame\"]($2)" js_requestAnimationFrame ::
        Window -> RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
requestAnimationFrame ::
                      (MonadIO m) => Window -> RequestAnimationFrameCallback -> m Int
requestAnimationFrame self callback
  = liftIO (js_requestAnimationFrame self callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.requestAnimationFrame Mozilla Window.requestAnimationFrame documentation> 
requestAnimationFrame_ ::
                       (MonadIO m) => Window -> RequestAnimationFrameCallback -> m ()
requestAnimationFrame_ self callback
  = liftIO (void (js_requestAnimationFrame self callback))
 
foreign import javascript unsafe "$1[\"cancelAnimationFrame\"]($2)"
        js_cancelAnimationFrame :: Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.cancelAnimationFrame Mozilla Window.cancelAnimationFrame documentation> 
cancelAnimationFrame :: (MonadIO m) => Window -> Int -> m ()
cancelAnimationFrame self handle
  = liftIO (js_cancelAnimationFrame self handle)
 
foreign import javascript safe "$1[\"postMessage\"]($2, $3, $4)"
        js_postMessage :: Window -> JSVal -> JSString -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.postMessage Mozilla Window.postMessage documentation> 
postMessage ::
            (MonadIO m, ToJSVal message, ToJSString targetOrigin,
             IsGObject transfer) =>
              Window -> message -> targetOrigin -> [transfer] -> m ()
postMessage self message targetOrigin transfer
  = liftIO
      (toJSVal transfer >>=
         \ transfer' ->
           toJSVal message >>= \ message' -> js_postMessage self message'
             (toJSString targetOrigin)
             transfer')
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        js_captureEvents :: Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.captureEvents Mozilla Window.captureEvents documentation> 
captureEvents :: (MonadIO m) => Window -> m ()
captureEvents self = liftIO (js_captureEvents self)
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        js_releaseEvents :: Window -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.releaseEvents Mozilla Window.releaseEvents documentation> 
releaseEvents :: (MonadIO m) => Window -> m ()
releaseEvents self = liftIO (js_releaseEvents self)
 
foreign import javascript unsafe "$1[\"getComputedStyle\"]($2, $3)"
        js_getComputedStyle ::
        Window -> Element -> Optional JSString -> IO CSSStyleDeclaration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getComputedStyle Mozilla Window.getComputedStyle documentation> 
getComputedStyle ::
                 (MonadIO m, IsElement element, ToJSString pseudoElement) =>
                   Window -> element -> Maybe pseudoElement -> m CSSStyleDeclaration
getComputedStyle self element pseudoElement
  = liftIO
      (js_getComputedStyle self (toElement element)
         (toOptionalJSString pseudoElement))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getComputedStyle Mozilla Window.getComputedStyle documentation> 
getComputedStyle_ ::
                  (MonadIO m, IsElement element, ToJSString pseudoElement) =>
                    Window -> element -> Maybe pseudoElement -> m ()
getComputedStyle_ self element pseudoElement
  = liftIO
      (void
         (js_getComputedStyle self (toElement element)
            (toOptionalJSString pseudoElement)))
 
foreign import javascript unsafe "$1[\"matchMedia\"]($2)"
        js_matchMedia :: Window -> JSString -> IO MediaQueryList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
matchMedia ::
           (MonadIO m, ToJSString query) =>
             Window -> query -> m MediaQueryList
matchMedia self query
  = liftIO (js_matchMedia self (toJSString query))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchMedia Mozilla Window.matchMedia documentation> 
matchMedia_ ::
            (MonadIO m, ToJSString query) => Window -> query -> m ()
matchMedia_ self query
  = liftIO (void (js_matchMedia self (toJSString query)))
 
foreign import javascript unsafe "$1[\"moveTo\"]($2, $3)" js_moveTo
        :: Window -> Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveTo Mozilla Window.moveTo documentation> 
moveTo ::
       (MonadIO m) => Window -> Maybe Float -> Maybe Float -> m ()
moveTo self x y
  = liftIO (js_moveTo self (maybeToOptional x) (maybeToOptional y))
 
foreign import javascript unsafe "$1[\"moveBy\"]($2, $3)" js_moveBy
        :: Window -> Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.moveBy Mozilla Window.moveBy documentation> 
moveBy ::
       (MonadIO m) => Window -> Maybe Float -> Maybe Float -> m ()
moveBy self x y
  = liftIO (js_moveBy self (maybeToOptional x) (maybeToOptional y))
 
foreign import javascript unsafe "$1[\"resizeTo\"]($2, $3)"
        js_resizeTo :: Window -> Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeTo Mozilla Window.resizeTo documentation> 
resizeTo ::
         (MonadIO m) => Window -> Maybe Float -> Maybe Float -> m ()
resizeTo self width height
  = liftIO
      (js_resizeTo self (maybeToOptional width) (maybeToOptional height))
 
foreign import javascript unsafe "$1[\"resizeBy\"]($2, $3)"
        js_resizeBy :: Window -> Optional Float -> Optional Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.resizeBy Mozilla Window.resizeBy documentation> 
resizeBy ::
         (MonadIO m) => Window -> Maybe Float -> Maybe Float -> m ()
resizeBy self x y
  = liftIO (js_resizeBy self (maybeToOptional x) (maybeToOptional y))
 
foreign import javascript unsafe "$1[\"scroll\"]($2)" js_scrollOpt
        :: Window -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
scrollOpt :: (MonadIO m) => Window -> Maybe ScrollToOptions -> m ()
scrollOpt self options
  = liftIO (js_scrollOpt self (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"scroll\"]($2, $3)" js_scroll
        :: Window -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scroll Mozilla Window.scroll documentation> 
scroll :: (MonadIO m) => Window -> Double -> Double -> m ()
scroll self x y = liftIO (js_scroll self x y)
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2)"
        js_scrollToOpt :: Window -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
scrollToOpt ::
            (MonadIO m) => Window -> Maybe ScrollToOptions -> m ()
scrollToOpt self options
  = liftIO (js_scrollToOpt self (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"scrollTo\"]($2, $3)"
        js_scrollTo :: Window -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollTo Mozilla Window.scrollTo documentation> 
scrollTo :: (MonadIO m) => Window -> Double -> Double -> m ()
scrollTo self x y = liftIO (js_scrollTo self x y)
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2)"
        js_scrollByOpt :: Window -> Optional ScrollToOptions -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
scrollByOpt ::
            (MonadIO m) => Window -> Maybe ScrollToOptions -> m ()
scrollByOpt self option
  = liftIO (js_scrollByOpt self (maybeToOptional option))
 
foreign import javascript unsafe "$1[\"scrollBy\"]($2, $3)"
        js_scrollBy :: Window -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollBy Mozilla Window.scrollBy documentation> 
scrollBy :: (MonadIO m) => Window -> Double -> Double -> m ()
scrollBy self x y = liftIO (js_scrollBy self x y)
 
foreign import javascript unsafe "$1[\"getSelection\"]()"
        js_getSelection :: Window -> IO (Nullable Selection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelection :: (MonadIO m) => Window -> m (Maybe Selection)
getSelection self
  = liftIO (nullableToMaybe <$> (js_getSelection self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelection_ :: (MonadIO m) => Window -> m ()
getSelection_ self = liftIO (void (js_getSelection self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelectionUnsafe ::
                   (MonadIO m, HasCallStack) => Window -> m Selection
getSelectionUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getSelection self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getSelection Mozilla Window.getSelection documentation> 
getSelectionUnchecked :: (MonadIO m) => Window -> m Selection
getSelectionUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSelection self))
 
foreign import javascript unsafe
        "($1[\"find\"]($2, $3, $4, $5, $6,\n$7, $8) ? 1 : 0)" js_find ::
        Window ->
          Optional JSString ->
            Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
find ::
     (MonadIO m, ToJSString string) =>
       Window ->
         Maybe string ->
           Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m Bool
find self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftIO
      (js_find self (toOptionalJSString string) caseSensitive backwards
         wrap
         wholeWord
         searchInFrames
         showDialog)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.find Mozilla Window.find documentation> 
find_ ::
      (MonadIO m, ToJSString string) =>
        Window ->
          Maybe string ->
            Bool -> Bool -> Bool -> Bool -> Bool -> Bool -> m ()
find_ self string caseSensitive backwards wrap wholeWord
  searchInFrames showDialog
  = liftIO
      (void
         (js_find self (toOptionalJSString string) caseSensitive backwards
            wrap
            wholeWord
            searchInFrames
            showDialog))
 
foreign import javascript unsafe
        "$1[\"webkitRequestAnimationFrame\"]($2)"
        js_webkitRequestAnimationFrame ::
        Window -> RequestAnimationFrameCallback -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
webkitRequestAnimationFrame ::
                            (MonadIO m) => Window -> RequestAnimationFrameCallback -> m Int
webkitRequestAnimationFrame self callback
  = liftIO (js_webkitRequestAnimationFrame self callback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitRequestAnimationFrame Mozilla Window.webkitRequestAnimationFrame documentation> 
webkitRequestAnimationFrame_ ::
                             (MonadIO m) => Window -> RequestAnimationFrameCallback -> m ()
webkitRequestAnimationFrame_ self callback
  = liftIO (void (js_webkitRequestAnimationFrame self callback))
 
foreign import javascript unsafe
        "$1[\"webkitCancelAnimationFrame\"]($2)"
        js_webkitCancelAnimationFrame :: Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelAnimationFrame Mozilla Window.webkitCancelAnimationFrame documentation> 
webkitCancelAnimationFrame :: (MonadIO m) => Window -> Int -> m ()
webkitCancelAnimationFrame self id
  = liftIO (js_webkitCancelAnimationFrame self id)
 
foreign import javascript unsafe
        "$1[\"webkitCancelRequestAnimationFrame\"]($2)"
        js_webkitCancelRequestAnimationFrame :: Window -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitCancelRequestAnimationFrame Mozilla Window.webkitCancelRequestAnimationFrame documentation> 
webkitCancelRequestAnimationFrame ::
                                  (MonadIO m) => Window -> Int -> m ()
webkitCancelRequestAnimationFrame self id
  = liftIO (js_webkitCancelRequestAnimationFrame self id)
 
foreign import javascript unsafe
        "$1[\"getMatchedCSSRules\"]($2, $3)" js_getMatchedCSSRules ::
        Window -> Optional Element -> Optional JSString -> IO CSSRuleList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getMatchedCSSRules Mozilla Window.getMatchedCSSRules documentation> 
getMatchedCSSRules ::
                   (MonadIO m, IsElement element, ToJSString pseudoElement) =>
                     Window -> Maybe element -> Maybe pseudoElement -> m CSSRuleList
getMatchedCSSRules self element pseudoElement
  = liftIO
      (js_getMatchedCSSRules self
         (maybeToOptional (fmap toElement element))
         (toOptionalJSString pseudoElement))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.getMatchedCSSRules Mozilla Window.getMatchedCSSRules documentation> 
getMatchedCSSRules_ ::
                    (MonadIO m, IsElement element, ToJSString pseudoElement) =>
                      Window -> Maybe element -> Maybe pseudoElement -> m ()
getMatchedCSSRules_ self element pseudoElement
  = liftIO
      (void
         (js_getMatchedCSSRules self
            (maybeToOptional (fmap toElement element))
            (toOptionalJSString pseudoElement)))
 
foreign import javascript unsafe
        "$1[\"showModalDialog\"]($2, $3,\n$4)" js_showModalDialog ::
        Window ->
          JSString -> Optional JSVal -> Optional JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
showModalDialog ::
                (MonadIO m, ToJSString url, ToJSVal dialogArgs,
                 ToJSString featureArgs) =>
                  Window -> url -> Maybe dialogArgs -> Maybe featureArgs -> m JSVal
showModalDialog self url dialogArgs featureArgs
  = liftIO
      (mapM toJSVal dialogArgs >>=
         \ dialogArgs' ->
           js_showModalDialog self (toJSString url)
             (maybeToOptional dialogArgs')
         (toOptionalJSString featureArgs))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.showModalDialog Mozilla Window.showModalDialog documentation> 
showModalDialog_ ::
                 (MonadIO m, ToJSString url, ToJSVal dialogArgs,
                  ToJSString featureArgs) =>
                   Window -> url -> Maybe dialogArgs -> Maybe featureArgs -> m ()
showModalDialog_ self url dialogArgs featureArgs
  = liftIO
      (void
         (mapM toJSVal dialogArgs >>=
            \ dialogArgs' ->
              js_showModalDialog self (toJSString url)
                (maybeToOptional dialogArgs')
            (toOptionalJSString featureArgs)))
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromPageToNode\"]($2,\n$3)"
        js_webkitConvertPointFromPageToNode ::
        Window -> Optional Node -> Optional WebKitPoint -> IO WebKitPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
webkitConvertPointFromPageToNode ::
                                 (MonadIO m, IsNode node) =>
                                   Window -> Maybe node -> Maybe WebKitPoint -> m WebKitPoint
webkitConvertPointFromPageToNode self node p
  = liftIO
      (js_webkitConvertPointFromPageToNode self
         (maybeToOptional (fmap toNode node))
         (maybeToOptional p))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromPageToNode Mozilla Window.webkitConvertPointFromPageToNode documentation> 
webkitConvertPointFromPageToNode_ ::
                                  (MonadIO m, IsNode node) =>
                                    Window -> Maybe node -> Maybe WebKitPoint -> m ()
webkitConvertPointFromPageToNode_ self node p
  = liftIO
      (void
         (js_webkitConvertPointFromPageToNode self
            (maybeToOptional (fmap toNode node))
            (maybeToOptional p)))
 
foreign import javascript unsafe
        "$1[\"webkitConvertPointFromNodeToPage\"]($2,\n$3)"
        js_webkitConvertPointFromNodeToPage ::
        Window -> Optional Node -> Optional WebKitPoint -> IO WebKitPoint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
webkitConvertPointFromNodeToPage ::
                                 (MonadIO m, IsNode node) =>
                                   Window -> Maybe node -> Maybe WebKitPoint -> m WebKitPoint
webkitConvertPointFromNodeToPage self node p
  = liftIO
      (js_webkitConvertPointFromNodeToPage self
         (maybeToOptional (fmap toNode node))
         (maybeToOptional p))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitConvertPointFromNodeToPage Mozilla Window.webkitConvertPointFromNodeToPage documentation> 
webkitConvertPointFromNodeToPage_ ::
                                  (MonadIO m, IsNode node) =>
                                    Window -> Maybe node -> Maybe WebKitPoint -> m ()
webkitConvertPointFromNodeToPage_ self node p
  = liftIO
      (void
         (js_webkitConvertPointFromNodeToPage self
            (maybeToOptional (fmap toNode node))
            (maybeToOptional p)))
 
foreign import javascript safe
        "$1[\"collectMatchingElementsInFlatTree\"]($2,\n$3)"
        js_collectMatchingElementsInFlatTree ::
        Window -> Node -> JSString -> IO NodeList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.collectMatchingElementsInFlatTree Mozilla Window.collectMatchingElementsInFlatTree documentation> 
collectMatchingElementsInFlatTree ::
                                  (MonadIO m, IsNode scope, ToJSString selectors) =>
                                    Window -> scope -> selectors -> m NodeList
collectMatchingElementsInFlatTree self scope selectors
  = liftIO
      (js_collectMatchingElementsInFlatTree self (toNode scope)
         (toJSString selectors))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.collectMatchingElementsInFlatTree Mozilla Window.collectMatchingElementsInFlatTree documentation> 
collectMatchingElementsInFlatTree_ ::
                                   (MonadIO m, IsNode scope, ToJSString selectors) =>
                                     Window -> scope -> selectors -> m ()
collectMatchingElementsInFlatTree_ self scope selectors
  = liftIO
      (void
         (js_collectMatchingElementsInFlatTree self (toNode scope)
            (toJSString selectors)))
 
foreign import javascript safe
        "$1[\"matchingElementInFlatTree\"]($2,\n$3)"
        js_matchingElementInFlatTree ::
        Window -> Node -> JSString -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTree ::
                          (MonadIO m, IsNode scope, ToJSString selectors) =>
                            Window -> scope -> selectors -> m (Maybe Element)
matchingElementInFlatTree self scope selectors
  = liftIO
      (nullableToMaybe <$>
         (js_matchingElementInFlatTree self (toNode scope)
            (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTree_ ::
                           (MonadIO m, IsNode scope, ToJSString selectors) =>
                             Window -> scope -> selectors -> m ()
matchingElementInFlatTree_ self scope selectors
  = liftIO
      (void
         (js_matchingElementInFlatTree self (toNode scope)
            (toJSString selectors)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTreeUnsafe ::
                                (MonadIO m, IsNode scope, ToJSString selectors, HasCallStack) =>
                                  Window -> scope -> selectors -> m Element
matchingElementInFlatTreeUnsafe self scope selectors
  = liftIO
      ((nullableToMaybe <$>
          (js_matchingElementInFlatTree self (toNode scope)
             (toJSString selectors)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.matchingElementInFlatTree Mozilla Window.matchingElementInFlatTree documentation> 
matchingElementInFlatTreeUnchecked ::
                                   (MonadIO m, IsNode scope, ToJSString selectors) =>
                                     Window -> scope -> selectors -> m Element
matchingElementInFlatTreeUnchecked self scope selectors
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_matchingElementInFlatTree self (toNode scope)
            (toJSString selectors)))
 
foreign import javascript unsafe "$1[\"indexedDB\"]"
        js_getIndexedDB :: Window -> IO IDBFactory

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.indexedDB Mozilla Window.indexedDB documentation> 
getIndexedDB :: (MonadIO m) => Window -> m IDBFactory
getIndexedDB self = liftIO (js_getIndexedDB self)
 
foreign import javascript unsafe "$1[\"webkitIndexedDB\"]"
        js_getWebkitIndexedDB :: Window -> IO IDBFactory

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitIndexedDB Mozilla Window.webkitIndexedDB documentation> 
getWebkitIndexedDB :: (MonadIO m) => Window -> m IDBFactory
getWebkitIndexedDB self = liftIO (js_getWebkitIndexedDB self)
 
foreign import javascript unsafe "$1[\"webkitStorageInfo\"]"
        js_getWebkitStorageInfo :: Window -> IO StorageInfo

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.webkitStorageInfo Mozilla Window.webkitStorageInfo documentation> 
getWebkitStorageInfo :: (MonadIO m) => Window -> m StorageInfo
getWebkitStorageInfo self = liftIO (js_getWebkitStorageInfo self)
 
foreign import javascript unsafe "$1[\"speechSynthesis\"]"
        js_getSpeechSynthesis :: Window -> IO SpeechSynthesis

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.speechSynthesis Mozilla Window.speechSynthesis documentation> 
getSpeechSynthesis :: (MonadIO m) => Window -> m SpeechSynthesis
getSpeechSynthesis self = liftIO (js_getSpeechSynthesis self)
 
foreign import javascript unsafe "$1[\"window\"]" js_getWindow ::
        Window -> IO Window

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.window Mozilla Window.window documentation> 
getWindow :: (MonadIO m) => Window -> m Window
getWindow self = liftIO (js_getWindow self)
 
foreign import javascript unsafe "$1[\"self\"]" js_getSelf ::
        Window -> IO Window

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.self Mozilla Window.self documentation> 
getSelf :: (MonadIO m) => Window -> m Window
getSelf self = liftIO (js_getSelf self)
 
foreign import javascript unsafe "$1[\"document\"]" js_getDocument
        :: Window -> IO Document

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.document Mozilla Window.document documentation> 
getDocument :: (MonadIO m) => Window -> m Document
getDocument self = liftIO (js_getDocument self)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
setName :: (MonadIO m, ToJSString val) => Window -> val -> m ()
setName self val = liftIO (js_setName self (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.name Mozilla Window.name documentation> 
getName :: (MonadIO m, FromJSString result) => Window -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"location\"]" js_getLocation
        :: Window -> IO Location

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.location Mozilla Window.location documentation> 
getLocation :: (MonadIO m) => Window -> m Location
getLocation self = liftIO (js_getLocation self)
 
foreign import javascript unsafe "$1[\"history\"]" js_getHistory ::
        Window -> IO History

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.history Mozilla Window.history documentation> 
getHistory :: (MonadIO m) => Window -> m History
getHistory self = liftIO (js_getHistory self)
 
foreign import javascript unsafe "$1[\"customElements\"]"
        js_getCustomElements :: Window -> IO CustomElementRegistry

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.customElements Mozilla Window.customElements documentation> 
getCustomElements ::
                  (MonadIO m) => Window -> m CustomElementRegistry
getCustomElements self = liftIO (js_getCustomElements self)
 
foreign import javascript unsafe "$1[\"locationbar\"]"
        js_getLocationbar :: Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.locationbar Mozilla Window.locationbar documentation> 
getLocationbar :: (MonadIO m) => Window -> m BarProp
getLocationbar self = liftIO (js_getLocationbar self)
 
foreign import javascript unsafe "$1[\"menubar\"]" js_getMenubar ::
        Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.menubar Mozilla Window.menubar documentation> 
getMenubar :: (MonadIO m) => Window -> m BarProp
getMenubar self = liftIO (js_getMenubar self)
 
foreign import javascript unsafe "$1[\"personalbar\"]"
        js_getPersonalbar :: Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.personalbar Mozilla Window.personalbar documentation> 
getPersonalbar :: (MonadIO m) => Window -> m BarProp
getPersonalbar self = liftIO (js_getPersonalbar self)
 
foreign import javascript unsafe "$1[\"scrollbars\"]"
        js_getScrollbars :: Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollbars Mozilla Window.scrollbars documentation> 
getScrollbars :: (MonadIO m) => Window -> m BarProp
getScrollbars self = liftIO (js_getScrollbars self)
 
foreign import javascript unsafe "$1[\"statusbar\"]"
        js_getStatusbar :: Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.statusbar Mozilla Window.statusbar documentation> 
getStatusbar :: (MonadIO m) => Window -> m BarProp
getStatusbar self = liftIO (js_getStatusbar self)
 
foreign import javascript unsafe "$1[\"toolbar\"]" js_getToolbar ::
        Window -> IO BarProp

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.toolbar Mozilla Window.toolbar documentation> 
getToolbar :: (MonadIO m) => Window -> m BarProp
getToolbar self = liftIO (js_getToolbar self)
 
foreign import javascript unsafe "$1[\"status\"] = $2;"
        js_setStatus :: Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
setStatus :: (MonadIO m, ToJSString val) => Window -> val -> m ()
setStatus self val = liftIO (js_setStatus self (toJSString val))
 
foreign import javascript unsafe "$1[\"status\"]" js_getStatus ::
        Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.status Mozilla Window.status documentation> 
getStatus :: (MonadIO m, FromJSString result) => Window -> m result
getStatus self = liftIO (fromJSString <$> (js_getStatus self))
 
foreign import javascript unsafe "($1[\"closed\"] ? 1 : 0)"
        js_getClosed :: Window -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.closed Mozilla Window.closed documentation> 
getClosed :: (MonadIO m) => Window -> m Bool
getClosed self = liftIO (js_getClosed self)
 
foreign import javascript unsafe "$1[\"frames\"]" js_getFrames ::
        Window -> IO Window

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frames Mozilla Window.frames documentation> 
getFrames :: (MonadIO m) => Window -> m Window
getFrames self = liftIO (js_getFrames self)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        Window -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.length Mozilla Window.length documentation> 
getLength :: (MonadIO m) => Window -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"top\"]" js_getTop ::
        Window -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTop :: (MonadIO m) => Window -> m (Maybe Window)
getTop self = liftIO (nullableToMaybe <$> (js_getTop self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTopUnsafe :: (MonadIO m, HasCallStack) => Window -> m Window
getTopUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getTop self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.top Mozilla Window.top documentation> 
getTopUnchecked :: (MonadIO m) => Window -> m Window
getTopUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getTop self))
 
foreign import javascript unsafe "$1[\"opener\"]" js_getOpener ::
        Window -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpener :: (MonadIO m) => Window -> m (Maybe Window)
getOpener self = liftIO (nullableToMaybe <$> (js_getOpener self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpenerUnsafe :: (MonadIO m, HasCallStack) => Window -> m Window
getOpenerUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOpener self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.opener Mozilla Window.opener documentation> 
getOpenerUnchecked :: (MonadIO m) => Window -> m Window
getOpenerUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOpener self))
 
foreign import javascript unsafe "$1[\"parent\"]" js_getParent ::
        Window -> IO (Nullable Window)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParent :: (MonadIO m) => Window -> m (Maybe Window)
getParent self = liftIO (nullableToMaybe <$> (js_getParent self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParentUnsafe :: (MonadIO m, HasCallStack) => Window -> m Window
getParentUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParent self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.parent Mozilla Window.parent documentation> 
getParentUnchecked :: (MonadIO m) => Window -> m Window
getParentUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getParent self))
 
foreign import javascript unsafe "$1[\"frameElement\"]"
        js_getFrameElement :: Window -> IO (Nullable Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElement :: (MonadIO m) => Window -> m (Maybe Element)
getFrameElement self
  = liftIO (nullableToMaybe <$> (js_getFrameElement self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElementUnsafe ::
                      (MonadIO m, HasCallStack) => Window -> m Element
getFrameElementUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getFrameElement self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.frameElement Mozilla Window.frameElement documentation> 
getFrameElementUnchecked :: (MonadIO m) => Window -> m Element
getFrameElementUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getFrameElement self))
 
foreign import javascript unsafe "$1[\"navigator\"]"
        js_getNavigator :: Window -> IO Navigator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.navigator Mozilla Window.navigator documentation> 
getNavigator :: (MonadIO m) => Window -> m Navigator
getNavigator self = liftIO (js_getNavigator self)
 
foreign import javascript unsafe "$1[\"applicationCache\"]"
        js_getApplicationCache :: Window -> IO ApplicationCache

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.applicationCache Mozilla Window.applicationCache documentation> 
getApplicationCache :: (MonadIO m) => Window -> m ApplicationCache
getApplicationCache self = liftIO (js_getApplicationCache self)
 
foreign import javascript safe "$1[\"sessionStorage\"]"
        js_getSessionStorage :: Window -> IO Storage

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.sessionStorage Mozilla Window.sessionStorage documentation> 
getSessionStorage :: (MonadIO m) => Window -> m Storage
getSessionStorage self = liftIO (js_getSessionStorage self)
 
foreign import javascript safe "$1[\"localStorage\"]"
        js_getLocalStorage :: Window -> IO Storage

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.localStorage Mozilla Window.localStorage documentation> 
getLocalStorage :: (MonadIO m) => Window -> m Storage
getLocalStorage self = liftIO (js_getLocalStorage self)
 
foreign import javascript unsafe "$1[\"screen\"]" js_getScreen ::
        Window -> IO Screen

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screen Mozilla Window.screen documentation> 
getScreen :: (MonadIO m) => Window -> m Screen
getScreen self = liftIO (js_getScreen self)
 
foreign import javascript unsafe "$1[\"innerHeight\"]"
        js_getInnerHeight :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerHeight Mozilla Window.innerHeight documentation> 
getInnerHeight :: (MonadIO m) => Window -> m Int
getInnerHeight self = liftIO (js_getInnerHeight self)
 
foreign import javascript unsafe "$1[\"innerWidth\"]"
        js_getInnerWidth :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.innerWidth Mozilla Window.innerWidth documentation> 
getInnerWidth :: (MonadIO m) => Window -> m Int
getInnerWidth self = liftIO (js_getInnerWidth self)
 
foreign import javascript unsafe "$1[\"scrollX\"]" js_getScrollX ::
        Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollX Mozilla Window.scrollX documentation> 
getScrollX :: (MonadIO m) => Window -> m Double
getScrollX self = liftIO (js_getScrollX self)
 
foreign import javascript unsafe "$1[\"pageXOffset\"]"
        js_getPageXOffset :: Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageXOffset Mozilla Window.pageXOffset documentation> 
getPageXOffset :: (MonadIO m) => Window -> m Double
getPageXOffset self = liftIO (js_getPageXOffset self)
 
foreign import javascript unsafe "$1[\"scrollY\"]" js_getScrollY ::
        Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.scrollY Mozilla Window.scrollY documentation> 
getScrollY :: (MonadIO m) => Window -> m Double
getScrollY self = liftIO (js_getScrollY self)
 
foreign import javascript unsafe "$1[\"pageYOffset\"]"
        js_getPageYOffset :: Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.pageYOffset Mozilla Window.pageYOffset documentation> 
getPageYOffset :: (MonadIO m) => Window -> m Double
getPageYOffset self = liftIO (js_getPageYOffset self)
 
foreign import javascript unsafe "$1[\"screenX\"]" js_getScreenX ::
        Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenX Mozilla Window.screenX documentation> 
getScreenX :: (MonadIO m) => Window -> m Int
getScreenX self = liftIO (js_getScreenX self)
 
foreign import javascript unsafe "$1[\"screenY\"]" js_getScreenY ::
        Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenY Mozilla Window.screenY documentation> 
getScreenY :: (MonadIO m) => Window -> m Int
getScreenY self = liftIO (js_getScreenY self)
 
foreign import javascript unsafe "$1[\"outerWidth\"]"
        js_getOuterWidth :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerWidth Mozilla Window.outerWidth documentation> 
getOuterWidth :: (MonadIO m) => Window -> m Int
getOuterWidth self = liftIO (js_getOuterWidth self)
 
foreign import javascript unsafe "$1[\"outerHeight\"]"
        js_getOuterHeight :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.outerHeight Mozilla Window.outerHeight documentation> 
getOuterHeight :: (MonadIO m) => Window -> m Int
getOuterHeight self = liftIO (js_getOuterHeight self)
 
foreign import javascript unsafe "$1[\"devicePixelRatio\"]"
        js_getDevicePixelRatio :: Window -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.devicePixelRatio Mozilla Window.devicePixelRatio documentation> 
getDevicePixelRatio :: (MonadIO m) => Window -> m Double
getDevicePixelRatio self = liftIO (js_getDevicePixelRatio self)
 
foreign import javascript unsafe "$1[\"orientation\"]"
        js_getOrientation :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.orientation Mozilla Window.orientation documentation> 
getOrientation :: (MonadIO m) => Window -> m Int
getOrientation self = liftIO (js_getOrientation self)
 
foreign import javascript unsafe "$1[\"event\"]" js_getEvent ::
        Window -> IO Event

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.event Mozilla Window.event documentation> 
getEvent :: (MonadIO m) => Window -> m Event
getEvent self = liftIO (js_getEvent self)
 
foreign import javascript unsafe "$1[\"defaultStatus\"] = $2;"
        js_setDefaultStatus :: Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
setDefaultStatus ::
                 (MonadIO m, ToJSString val) => Window -> val -> m ()
setDefaultStatus self val
  = liftIO (js_setDefaultStatus self (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultStatus\"]"
        js_getDefaultStatus :: Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultStatus Mozilla Window.defaultStatus documentation> 
getDefaultStatus ::
                 (MonadIO m, FromJSString result) => Window -> m result
getDefaultStatus self
  = liftIO (fromJSString <$> (js_getDefaultStatus self))
 
foreign import javascript unsafe "$1[\"defaultstatus\"] = $2;"
        js_setDefaultstatus :: Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultstatus Mozilla Window.defaultstatus documentation> 
setDefaultstatus ::
                 (MonadIO m, ToJSString val) => Window -> val -> m ()
setDefaultstatus self val
  = liftIO (js_setDefaultstatus self (toJSString val))
 
foreign import javascript unsafe "$1[\"defaultstatus\"]"
        js_getDefaultstatus :: Window -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.defaultstatus Mozilla Window.defaultstatus documentation> 
getDefaultstatus ::
                 (MonadIO m, FromJSString result) => Window -> m result
getDefaultstatus self
  = liftIO (fromJSString <$> (js_getDefaultstatus self))
 
foreign import javascript unsafe
        "($1[\"offscreenBuffering\"] ? 1 : 0)" js_getOffscreenBuffering ::
        Window -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.offscreenBuffering Mozilla Window.offscreenBuffering documentation> 
getOffscreenBuffering :: (MonadIO m) => Window -> m Bool
getOffscreenBuffering self = liftIO (js_getOffscreenBuffering self)
 
foreign import javascript unsafe "$1[\"screenLeft\"]"
        js_getScreenLeft :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenLeft Mozilla Window.screenLeft documentation> 
getScreenLeft :: (MonadIO m) => Window -> m Int
getScreenLeft self = liftIO (js_getScreenLeft self)
 
foreign import javascript unsafe "$1[\"screenTop\"]"
        js_getScreenTop :: Window -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.screenTop Mozilla Window.screenTop documentation> 
getScreenTop :: (MonadIO m) => Window -> m Int
getScreenTop self = liftIO (js_getScreenTop self)
 
foreign import javascript unsafe "$1[\"clientInformation\"]"
        js_getClientInformation :: Window -> IO Navigator

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.clientInformation Mozilla Window.clientInformation documentation> 
getClientInformation :: (MonadIO m) => Window -> m Navigator
getClientInformation self = liftIO (js_getClientInformation self)
 
foreign import javascript unsafe "$1[\"styleMedia\"]"
        js_getStyleMedia :: Window -> IO StyleMedia

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.styleMedia Mozilla Window.styleMedia documentation> 
getStyleMedia :: (MonadIO m) => Window -> m StyleMedia
getStyleMedia self = liftIO (js_getStyleMedia self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturechange Mozilla Window.ongesturechange documentation> 
gestureChange :: EventName Window UIEvent
gestureChange = unsafeEventName (toJSString "gesturechange")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongestureend Mozilla Window.ongestureend documentation> 
gestureEnd :: EventName Window UIEvent
gestureEnd = unsafeEventName (toJSString "gestureend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.ongesturestart Mozilla Window.ongesturestart documentation> 
gestureStart :: EventName Window UIEvent
gestureStart = unsafeEventName (toJSString "gesturestart")

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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Window.onwebkittransitionend Mozilla Window.onwebkittransitionend documentation> 
webKitTransitionEnd :: EventName Window TransitionEvent
webKitTransitionEnd
  = unsafeEventName (toJSString "webkittransitionend")