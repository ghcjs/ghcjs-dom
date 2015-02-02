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
                        (IsHTMLMarqueeElement self) => self -> IO ()
htmlMarqueeElementStart self
  = ghcjs_dom_html_marquee_element_start
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_html_marquee_element_stop ::
        JSRef HTMLMarqueeElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.stop Mozilla HTMLMarqueeElement.stop documentation> 
htmlMarqueeElementStop ::
                       (IsHTMLMarqueeElement self) => self -> IO ()
htmlMarqueeElementStop self
  = ghcjs_dom_html_marquee_element_stop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"behavior\"] = $2;"
        ghcjs_dom_html_marquee_element_set_behavior ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
htmlMarqueeElementSetBehavior ::
                              (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetBehavior self val
  = ghcjs_dom_html_marquee_element_set_behavior
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"behavior\"]"
        ghcjs_dom_html_marquee_element_get_behavior ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.behavior Mozilla HTMLMarqueeElement.behavior documentation> 
htmlMarqueeElementGetBehavior ::
                              (IsHTMLMarqueeElement self, FromJSString result) =>
                                self -> IO result
htmlMarqueeElementGetBehavior self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_behavior
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_marquee_element_set_bg_color ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
htmlMarqueeElementSetBgColor ::
                             (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetBgColor self val
  = ghcjs_dom_html_marquee_element_set_bg_color
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_marquee_element_get_bg_color ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.bgColor Mozilla HTMLMarqueeElement.bgColor documentation> 
htmlMarqueeElementGetBgColor ::
                             (IsHTMLMarqueeElement self, FromJSString result) =>
                               self -> IO result
htmlMarqueeElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_bg_color
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        ghcjs_dom_html_marquee_element_set_direction ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
htmlMarqueeElementSetDirection ::
                               (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetDirection self val
  = ghcjs_dom_html_marquee_element_set_direction
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_html_marquee_element_get_direction ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.direction Mozilla HTMLMarqueeElement.direction documentation> 
htmlMarqueeElementGetDirection ::
                               (IsHTMLMarqueeElement self, FromJSString result) =>
                                 self -> IO result
htmlMarqueeElementGetDirection self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_direction
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_marquee_element_set_height ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
htmlMarqueeElementSetHeight ::
                            (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetHeight self val
  = ghcjs_dom_html_marquee_element_set_height
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_marquee_element_get_height ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.height Mozilla HTMLMarqueeElement.height documentation> 
htmlMarqueeElementGetHeight ::
                            (IsHTMLMarqueeElement self, FromJSString result) =>
                              self -> IO result
htmlMarqueeElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_height
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_hspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
htmlMarqueeElementSetHspace ::
                            (IsHTMLMarqueeElement self) => self -> Word -> IO ()
htmlMarqueeElementSetHspace self val
  = ghcjs_dom_html_marquee_element_set_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_marquee_element_get_hspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.hspace Mozilla HTMLMarqueeElement.hspace documentation> 
htmlMarqueeElementGetHspace ::
                            (IsHTMLMarqueeElement self) => self -> IO Word
htmlMarqueeElementGetHspace self
  = ghcjs_dom_html_marquee_element_get_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_marquee_element_set_loop ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
htmlMarqueeElementSetLoop ::
                          (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetLoop self val
  = ghcjs_dom_html_marquee_element_set_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "$1[\"loop\"]"
        ghcjs_dom_html_marquee_element_get_loop ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.loop Mozilla HTMLMarqueeElement.loop documentation> 
htmlMarqueeElementGetLoop ::
                          (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetLoop self
  = ghcjs_dom_html_marquee_element_get_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"scrollAmount\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_amount ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
htmlMarqueeElementSetScrollAmount ::
                                  (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollAmount self val
  = ghcjs_dom_html_marquee_element_set_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "$1[\"scrollAmount\"]"
        ghcjs_dom_html_marquee_element_get_scroll_amount ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollAmount Mozilla HTMLMarqueeElement.scrollAmount documentation> 
htmlMarqueeElementGetScrollAmount ::
                                  (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetScrollAmount self
  = ghcjs_dom_html_marquee_element_get_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"scrollDelay\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_delay ::
        JSRef HTMLMarqueeElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
htmlMarqueeElementSetScrollDelay ::
                                 (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollDelay self val
  = ghcjs_dom_html_marquee_element_set_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "$1[\"scrollDelay\"]"
        ghcjs_dom_html_marquee_element_get_scroll_delay ::
        JSRef HTMLMarqueeElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.scrollDelay Mozilla HTMLMarqueeElement.scrollDelay documentation> 
htmlMarqueeElementGetScrollDelay ::
                                 (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetScrollDelay self
  = ghcjs_dom_html_marquee_element_get_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"trueSpeed\"] = $2;"
        ghcjs_dom_html_marquee_element_set_true_speed ::
        JSRef HTMLMarqueeElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
htmlMarqueeElementSetTrueSpeed ::
                               (IsHTMLMarqueeElement self) => self -> Bool -> IO ()
htmlMarqueeElementSetTrueSpeed self val
  = ghcjs_dom_html_marquee_element_set_true_speed
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "($1[\"trueSpeed\"] ? 1 : 0)"
        ghcjs_dom_html_marquee_element_get_true_speed ::
        JSRef HTMLMarqueeElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.trueSpeed Mozilla HTMLMarqueeElement.trueSpeed documentation> 
htmlMarqueeElementGetTrueSpeed ::
                               (IsHTMLMarqueeElement self) => self -> IO Bool
htmlMarqueeElementGetTrueSpeed self
  = ghcjs_dom_html_marquee_element_get_true_speed
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_vspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
htmlMarqueeElementSetVspace ::
                            (IsHTMLMarqueeElement self) => self -> Word -> IO ()
htmlMarqueeElementSetVspace self val
  = ghcjs_dom_html_marquee_element_set_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_marquee_element_get_vspace ::
        JSRef HTMLMarqueeElement -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.vspace Mozilla HTMLMarqueeElement.vspace documentation> 
htmlMarqueeElementGetVspace ::
                            (IsHTMLMarqueeElement self) => self -> IO Word
htmlMarqueeElementGetVspace self
  = ghcjs_dom_html_marquee_element_get_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_marquee_element_set_width ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
htmlMarqueeElementSetWidth ::
                           (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetWidth self val
  = ghcjs_dom_html_marquee_element_set_width
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_marquee_element_get_width ::
        JSRef HTMLMarqueeElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMarqueeElement.width Mozilla HTMLMarqueeElement.width documentation> 
htmlMarqueeElementGetWidth ::
                           (IsHTMLMarqueeElement self, FromJSString result) =>
                             self -> IO result
htmlMarqueeElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_width
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))
#else
module GHCJS.DOM.HTMLMarqueeElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMarqueeElement
#endif
