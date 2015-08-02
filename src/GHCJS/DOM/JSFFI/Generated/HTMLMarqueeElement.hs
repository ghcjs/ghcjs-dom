{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLMarqueeElement
       (js_start, start, js_stop, stop, js_setBehavior, setBehavior,
        js_getBehavior, getBehavior, js_setBgColor, setBgColor,
        js_getBgColor, getBgColor, js_setDirection, setDirection,
        js_getDirection, getDirection, js_setHeight, setHeight,
        js_getHeight, getHeight, js_setHspace, setHspace, js_getHspace,
        getHspace, js_setLoop, setLoop, js_getLoop, getLoop,
        js_setScrollAmount, setScrollAmount, js_getScrollAmount,
        getScrollAmount, js_setScrollDelay, setScrollDelay,
        js_getScrollDelay, getScrollDelay, js_setTrueSpeed, setTrueSpeed,
        js_getTrueSpeed, getTrueSpeed, js_setVspace, setVspace,
        js_getVspace, getVspace, js_setWidth, setWidth, js_getWidth,
        getWidth, HTMLMarqueeElement, castToHTMLMarqueeElement,
        gTypeHTMLMarqueeElement)
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
 
foreign import javascript unsafe "$1[\"start\"]()" js_start ::
        JSRef HTMLMarqueeElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.start Mozilla HTMLMarqueeElement.start documentation> 
start :: (MonadIO m) => HTMLMarqueeElement -> m ()
start self = liftIO (js_start (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"stop\"]()" js_stop ::
        JSRef HTMLMarqueeElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.stop Mozilla HTMLMarqueeElement.stop documentation> 
stop :: (MonadIO m) => HTMLMarqueeElement -> m ()
stop self = liftIO (js_stop (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"behavior\"] = $2;"
        js_setBehavior :: JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
setBehavior ::
            (MonadIO m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setBehavior self val
  = liftIO
      (js_setBehavior (unHTMLMarqueeElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"behavior\"]" js_getBehavior
        :: JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
getBehavior ::
            (MonadIO m, FromJSString result) => HTMLMarqueeElement -> m result
getBehavior self
  = liftIO
      (fromJSString <$> (js_getBehavior (unHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setBgColor self val
  = liftIO
      (js_setBgColor (unHTMLMarqueeElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) => HTMLMarqueeElement -> m result
getBgColor self
  = liftIO
      (fromJSString <$> (js_getBgColor (unHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        js_setDirection :: JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
setDirection ::
             (MonadIO m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setDirection self val
  = liftIO
      (js_setDirection (unHTMLMarqueeElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"direction\"]"
        js_getDirection :: JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
getDirection ::
             (MonadIO m, FromJSString result) => HTMLMarqueeElement -> m result
getDirection self
  = liftIO
      (fromJSString <$> (js_getDirection (unHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setHeight self val
  = liftIO
      (js_setHeight (unHTMLMarqueeElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLMarqueeElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        js_setHspace :: JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
setHspace :: (MonadIO m) => HTMLMarqueeElement -> Word -> m ()
setHspace self val
  = liftIO (js_setHspace (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "$1[\"hspace\"]" js_getHspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
getHspace :: (MonadIO m) => HTMLMarqueeElement -> m Word
getHspace self = liftIO (js_getHspace (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;" js_setLoop ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
setLoop :: (MonadIO m) => HTMLMarqueeElement -> Int -> m ()
setLoop self val
  = liftIO (js_setLoop (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "$1[\"loop\"]" js_getLoop ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
getLoop :: (MonadIO m) => HTMLMarqueeElement -> m Int
getLoop self = liftIO (js_getLoop (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"scrollAmount\"] = $2;"
        js_setScrollAmount :: JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
setScrollAmount :: (MonadIO m) => HTMLMarqueeElement -> Int -> m ()
setScrollAmount self val
  = liftIO (js_setScrollAmount (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "$1[\"scrollAmount\"]"
        js_getScrollAmount :: JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
getScrollAmount :: (MonadIO m) => HTMLMarqueeElement -> m Int
getScrollAmount self
  = liftIO (js_getScrollAmount (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"scrollDelay\"] = $2;"
        js_setScrollDelay :: JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
setScrollDelay :: (MonadIO m) => HTMLMarqueeElement -> Int -> m ()
setScrollDelay self val
  = liftIO (js_setScrollDelay (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "$1[\"scrollDelay\"]"
        js_getScrollDelay :: JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
getScrollDelay :: (MonadIO m) => HTMLMarqueeElement -> m Int
getScrollDelay self
  = liftIO (js_getScrollDelay (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"trueSpeed\"] = $2;"
        js_setTrueSpeed :: JSRef HTMLMarqueeElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
setTrueSpeed :: (MonadIO m) => HTMLMarqueeElement -> Bool -> m ()
setTrueSpeed self val
  = liftIO (js_setTrueSpeed (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "($1[\"trueSpeed\"] ? 1 : 0)"
        js_getTrueSpeed :: JSRef HTMLMarqueeElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
getTrueSpeed :: (MonadIO m) => HTMLMarqueeElement -> m Bool
getTrueSpeed self
  = liftIO (js_getTrueSpeed (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        js_setVspace :: JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
setVspace :: (MonadIO m) => HTMLMarqueeElement -> Word -> m ()
setVspace self val
  = liftIO (js_setVspace (unHTMLMarqueeElement self) val)
 
foreign import javascript unsafe "$1[\"vspace\"]" js_getVspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
getVspace :: (MonadIO m) => HTMLMarqueeElement -> m Word
getVspace self = liftIO (js_getVspace (unHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLMarqueeElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLMarqueeElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLMarqueeElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLMarqueeElement self)))