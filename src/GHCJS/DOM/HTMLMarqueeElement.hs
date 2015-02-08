{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMarqueeElement
       (ghcjs_dom_html_marquee_element_start, htmlMarqueeElementStart,
        ghcjs_dom_html_marquee_element_stop, htmlMarqueeElementStop,
        ghcjs_dom_html_marquee_element_set_behavior,
        htmlMarqueeElementSetBehavior,
        ghcjs_dom_html_marquee_element_get_behavior,
        htmlMarqueeElementGetBehavior,
        ghcjs_dom_html_marquee_element_set_bg_color,
        htmlMarqueeElementSetBgColor,
        ghcjs_dom_html_marquee_element_get_bg_color,
        htmlMarqueeElementGetBgColor,
        ghcjs_dom_html_marquee_element_set_direction,
        htmlMarqueeElementSetDirection,
        ghcjs_dom_html_marquee_element_get_direction,
        htmlMarqueeElementGetDirection,
        ghcjs_dom_html_marquee_element_set_height,
        htmlMarqueeElementSetHeight,
        ghcjs_dom_html_marquee_element_get_height,
        htmlMarqueeElementGetHeight,
        ghcjs_dom_html_marquee_element_set_hspace,
        htmlMarqueeElementSetHspace,
        ghcjs_dom_html_marquee_element_get_hspace,
        htmlMarqueeElementGetHspace,
        ghcjs_dom_html_marquee_element_set_loop, htmlMarqueeElementSetLoop,
        ghcjs_dom_html_marquee_element_get_loop, htmlMarqueeElementGetLoop,
        ghcjs_dom_html_marquee_element_set_scroll_amount,
        htmlMarqueeElementSetScrollAmount,
        ghcjs_dom_html_marquee_element_get_scroll_amount,
        htmlMarqueeElementGetScrollAmount,
        ghcjs_dom_html_marquee_element_set_scroll_delay,
        htmlMarqueeElementSetScrollDelay,
        ghcjs_dom_html_marquee_element_get_scroll_delay,
        htmlMarqueeElementGetScrollDelay,
        ghcjs_dom_html_marquee_element_set_true_speed,
        htmlMarqueeElementSetTrueSpeed,
        ghcjs_dom_html_marquee_element_get_true_speed,
        htmlMarqueeElementGetTrueSpeed,
        ghcjs_dom_html_marquee_element_set_vspace,
        htmlMarqueeElementSetVspace,
        ghcjs_dom_html_marquee_element_get_vspace,
        htmlMarqueeElementGetVspace,
        ghcjs_dom_html_marquee_element_set_width,
        htmlMarqueeElementSetWidth,
        ghcjs_dom_html_marquee_element_get_width,
        htmlMarqueeElementGetWidth, HTMLMarqueeElement,
        IsHTMLMarqueeElement, castToHTMLMarqueeElement,
        gTypeHTMLMarqueeElement, toHTMLMarqueeElement)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"start\"]()"
        ghcjs_dom_html_marquee_element_start ::
        JSRef HTMLMarqueeElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.start Mozilla HTMLMarqueeElement.start documentation> 
htmlMarqueeElementStart ::
                        (MonadIO m, IsHTMLMarqueeElement self) => self -> m ()
htmlMarqueeElementStart self
  = liftIO
      (ghcjs_dom_html_marquee_element_start
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_html_marquee_element_stop ::
        JSRef HTMLMarqueeElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.stop Mozilla HTMLMarqueeElement.stop documentation> 
htmlMarqueeElementStop ::
                       (MonadIO m, IsHTMLMarqueeElement self) => self -> m ()
htmlMarqueeElementStop self
  = liftIO
      (ghcjs_dom_html_marquee_element_stop
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"behavior\"] = $2;"
        ghcjs_dom_html_marquee_element_set_behavior ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
htmlMarqueeElementSetBehavior ::
                              (MonadIO m, IsHTMLMarqueeElement self, ToJSString val) =>
                                self -> val -> m ()
htmlMarqueeElementSetBehavior self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_behavior
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"behavior\"]"
        ghcjs_dom_html_marquee_element_get_behavior ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
htmlMarqueeElementGetBehavior ::
                              (MonadIO m, IsHTMLMarqueeElement self, FromJSString result) =>
                                self -> m result
htmlMarqueeElementGetBehavior self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_marquee_element_get_behavior
            (unHTMLMarqueeElement (toHTMLMarqueeElement self))))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_marquee_element_set_bg_color ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
htmlMarqueeElementSetBgColor ::
                             (MonadIO m, IsHTMLMarqueeElement self, ToJSString val) =>
                               self -> val -> m ()
htmlMarqueeElementSetBgColor self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_bg_color
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_marquee_element_get_bg_color ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
htmlMarqueeElementGetBgColor ::
                             (MonadIO m, IsHTMLMarqueeElement self, FromJSString result) =>
                               self -> m result
htmlMarqueeElementGetBgColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_marquee_element_get_bg_color
            (unHTMLMarqueeElement (toHTMLMarqueeElement self))))
 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        ghcjs_dom_html_marquee_element_set_direction ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
htmlMarqueeElementSetDirection ::
                               (MonadIO m, IsHTMLMarqueeElement self, ToJSString val) =>
                                 self -> val -> m ()
htmlMarqueeElementSetDirection self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_direction
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_html_marquee_element_get_direction ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
htmlMarqueeElementGetDirection ::
                               (MonadIO m, IsHTMLMarqueeElement self, FromJSString result) =>
                                 self -> m result
htmlMarqueeElementGetDirection self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_marquee_element_get_direction
            (unHTMLMarqueeElement (toHTMLMarqueeElement self))))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_marquee_element_set_height ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
htmlMarqueeElementSetHeight ::
                            (MonadIO m, IsHTMLMarqueeElement self, ToJSString val) =>
                              self -> val -> m ()
htmlMarqueeElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_height
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_marquee_element_get_height ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
htmlMarqueeElementGetHeight ::
                            (MonadIO m, IsHTMLMarqueeElement self, FromJSString result) =>
                              self -> m result
htmlMarqueeElementGetHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_marquee_element_get_height
            (unHTMLMarqueeElement (toHTMLMarqueeElement self))))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_hspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
htmlMarqueeElementSetHspace ::
                            (MonadIO m, IsHTMLMarqueeElement self) => self -> Word -> m ()
htmlMarqueeElementSetHspace self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_hspace
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_marquee_element_get_hspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
htmlMarqueeElementGetHspace ::
                            (MonadIO m, IsHTMLMarqueeElement self) => self -> m Word
htmlMarqueeElementGetHspace self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_hspace
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_marquee_element_set_loop ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
htmlMarqueeElementSetLoop ::
                          (MonadIO m, IsHTMLMarqueeElement self) => self -> Int -> m ()
htmlMarqueeElementSetLoop self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_loop
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "$1[\"loop\"]"
        ghcjs_dom_html_marquee_element_get_loop ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
htmlMarqueeElementGetLoop ::
                          (MonadIO m, IsHTMLMarqueeElement self) => self -> m Int
htmlMarqueeElementGetLoop self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_loop
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"scrollAmount\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_amount ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
htmlMarqueeElementSetScrollAmount ::
                                  (MonadIO m, IsHTMLMarqueeElement self) => self -> Int -> m ()
htmlMarqueeElementSetScrollAmount self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_scroll_amount
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "$1[\"scrollAmount\"]"
        ghcjs_dom_html_marquee_element_get_scroll_amount ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
htmlMarqueeElementGetScrollAmount ::
                                  (MonadIO m, IsHTMLMarqueeElement self) => self -> m Int
htmlMarqueeElementGetScrollAmount self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_scroll_amount
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"scrollDelay\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_delay ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
htmlMarqueeElementSetScrollDelay ::
                                 (MonadIO m, IsHTMLMarqueeElement self) => self -> Int -> m ()
htmlMarqueeElementSetScrollDelay self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_scroll_delay
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "$1[\"scrollDelay\"]"
        ghcjs_dom_html_marquee_element_get_scroll_delay ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
htmlMarqueeElementGetScrollDelay ::
                                 (MonadIO m, IsHTMLMarqueeElement self) => self -> m Int
htmlMarqueeElementGetScrollDelay self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_scroll_delay
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"trueSpeed\"] = $2;"
        ghcjs_dom_html_marquee_element_set_true_speed ::
        JSRef HTMLMarqueeElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
htmlMarqueeElementSetTrueSpeed ::
                               (MonadIO m, IsHTMLMarqueeElement self) => self -> Bool -> m ()
htmlMarqueeElementSetTrueSpeed self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_true_speed
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "($1[\"trueSpeed\"] ? 1 : 0)"
        ghcjs_dom_html_marquee_element_get_true_speed ::
        JSRef HTMLMarqueeElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
htmlMarqueeElementGetTrueSpeed ::
                               (MonadIO m, IsHTMLMarqueeElement self) => self -> m Bool
htmlMarqueeElementGetTrueSpeed self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_true_speed
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_vspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
htmlMarqueeElementSetVspace ::
                            (MonadIO m, IsHTMLMarqueeElement self) => self -> Word -> m ()
htmlMarqueeElementSetVspace self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_vspace
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         val)
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_marquee_element_get_vspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
htmlMarqueeElementGetVspace ::
                            (MonadIO m, IsHTMLMarqueeElement self) => self -> m Word
htmlMarqueeElementGetVspace self
  = liftIO
      (ghcjs_dom_html_marquee_element_get_vspace
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_marquee_element_set_width ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
htmlMarqueeElementSetWidth ::
                           (MonadIO m, IsHTMLMarqueeElement self, ToJSString val) =>
                             self -> val -> m ()
htmlMarqueeElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_marquee_element_set_width
         (unHTMLMarqueeElement (toHTMLMarqueeElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_marquee_element_get_width ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
htmlMarqueeElementGetWidth ::
                           (MonadIO m, IsHTMLMarqueeElement self, FromJSString result) =>
                             self -> m result
htmlMarqueeElementGetWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_marquee_element_get_width
            (unHTMLMarqueeElement (toHTMLMarqueeElement self))))
#else
module GHCJS.DOM.HTMLMarqueeElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
#endif
