{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
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
        htmlMarqueeElementGetWidth)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"start\"]()"
        ghcjs_dom_html_marquee_element_start ::
        JSRef HTMLMarqueeElement -> IO ()
#else 
ghcjs_dom_html_marquee_element_start ::
                                       JSRef HTMLMarqueeElement -> IO ()
ghcjs_dom_html_marquee_element_start = undefined
#endif
 
htmlMarqueeElementStart ::
                        (IsHTMLMarqueeElement self) => self -> IO ()
htmlMarqueeElementStart self
  = ghcjs_dom_html_marquee_element_start
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stop\"]()"
        ghcjs_dom_html_marquee_element_stop ::
        JSRef HTMLMarqueeElement -> IO ()
#else 
ghcjs_dom_html_marquee_element_stop ::
                                      JSRef HTMLMarqueeElement -> IO ()
ghcjs_dom_html_marquee_element_stop = undefined
#endif
 
htmlMarqueeElementStop ::
                       (IsHTMLMarqueeElement self) => self -> IO ()
htmlMarqueeElementStop self
  = ghcjs_dom_html_marquee_element_stop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"behavior\"] = $2;"
        ghcjs_dom_html_marquee_element_set_behavior ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_behavior ::
                                              JSRef HTMLMarqueeElement -> JSString -> IO ()
ghcjs_dom_html_marquee_element_set_behavior = undefined
#endif
 
htmlMarqueeElementSetBehavior ::
                              (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetBehavior self val
  = ghcjs_dom_html_marquee_element_set_behavior
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"behavior\"]"
        ghcjs_dom_html_marquee_element_get_behavior ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
ghcjs_dom_html_marquee_element_get_behavior ::
                                              JSRef HTMLMarqueeElement -> IO JSString
ghcjs_dom_html_marquee_element_get_behavior = undefined
#endif
 
htmlMarqueeElementGetBehavior ::
                              (IsHTMLMarqueeElement self, FromJSString result) =>
                                self -> IO result
htmlMarqueeElementGetBehavior self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_behavior
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_marquee_element_set_bg_color ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_bg_color ::
                                              JSRef HTMLMarqueeElement -> JSString -> IO ()
ghcjs_dom_html_marquee_element_set_bg_color = undefined
#endif
 
htmlMarqueeElementSetBgColor ::
                             (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetBgColor self val
  = ghcjs_dom_html_marquee_element_set_bg_color
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_marquee_element_get_bg_color ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
ghcjs_dom_html_marquee_element_get_bg_color ::
                                              JSRef HTMLMarqueeElement -> IO JSString
ghcjs_dom_html_marquee_element_get_bg_color = undefined
#endif
 
htmlMarqueeElementGetBgColor ::
                             (IsHTMLMarqueeElement self, FromJSString result) =>
                               self -> IO result
htmlMarqueeElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_bg_color
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        ghcjs_dom_html_marquee_element_set_direction ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_direction ::
                                               JSRef HTMLMarqueeElement -> JSString -> IO ()
ghcjs_dom_html_marquee_element_set_direction = undefined
#endif
 
htmlMarqueeElementSetDirection ::
                               (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetDirection self val
  = ghcjs_dom_html_marquee_element_set_direction
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"]"
        ghcjs_dom_html_marquee_element_get_direction ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
ghcjs_dom_html_marquee_element_get_direction ::
                                               JSRef HTMLMarqueeElement -> IO JSString
ghcjs_dom_html_marquee_element_get_direction = undefined
#endif
 
htmlMarqueeElementGetDirection ::
                               (IsHTMLMarqueeElement self, FromJSString result) =>
                                 self -> IO result
htmlMarqueeElementGetDirection self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_direction
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_marquee_element_set_height ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_height ::
                                            JSRef HTMLMarqueeElement -> JSString -> IO ()
ghcjs_dom_html_marquee_element_set_height = undefined
#endif
 
htmlMarqueeElementSetHeight ::
                            (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetHeight self val
  = ghcjs_dom_html_marquee_element_set_height
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_marquee_element_get_height ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
ghcjs_dom_html_marquee_element_get_height ::
                                            JSRef HTMLMarqueeElement -> IO JSString
ghcjs_dom_html_marquee_element_get_height = undefined
#endif
 
htmlMarqueeElementGetHeight ::
                            (IsHTMLMarqueeElement self, FromJSString result) =>
                              self -> IO result
htmlMarqueeElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_marquee_element_get_height
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_hspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_hspace ::
                                            JSRef HTMLMarqueeElement -> Word -> IO ()
ghcjs_dom_html_marquee_element_set_hspace = undefined
#endif
 
htmlMarqueeElementSetHspace ::
                            (IsHTMLMarqueeElement self) => self -> Word -> IO ()
htmlMarqueeElementSetHspace self val
  = ghcjs_dom_html_marquee_element_set_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_marquee_element_get_hspace ::
        JSRef HTMLMarqueeElement -> IO Word
#else 
ghcjs_dom_html_marquee_element_get_hspace ::
                                            JSRef HTMLMarqueeElement -> IO Word
ghcjs_dom_html_marquee_element_get_hspace = undefined
#endif
 
htmlMarqueeElementGetHspace ::
                            (IsHTMLMarqueeElement self) => self -> IO Word
htmlMarqueeElementGetHspace self
  = ghcjs_dom_html_marquee_element_get_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        ghcjs_dom_html_marquee_element_set_loop ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_loop ::
                                          JSRef HTMLMarqueeElement -> Int -> IO ()
ghcjs_dom_html_marquee_element_set_loop = undefined
#endif
 
htmlMarqueeElementSetLoop ::
                          (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetLoop self val
  = ghcjs_dom_html_marquee_element_set_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"]"
        ghcjs_dom_html_marquee_element_get_loop ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
ghcjs_dom_html_marquee_element_get_loop ::
                                          JSRef HTMLMarqueeElement -> IO Int
ghcjs_dom_html_marquee_element_get_loop = undefined
#endif
 
htmlMarqueeElementGetLoop ::
                          (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetLoop self
  = ghcjs_dom_html_marquee_element_get_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollAmount\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_amount ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_scroll_amount ::
                                                   JSRef HTMLMarqueeElement -> Int -> IO ()
ghcjs_dom_html_marquee_element_set_scroll_amount = undefined
#endif
 
htmlMarqueeElementSetScrollAmount ::
                                  (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollAmount self val
  = ghcjs_dom_html_marquee_element_set_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollAmount\"]"
        ghcjs_dom_html_marquee_element_get_scroll_amount ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
ghcjs_dom_html_marquee_element_get_scroll_amount ::
                                                   JSRef HTMLMarqueeElement -> IO Int
ghcjs_dom_html_marquee_element_get_scroll_amount = undefined
#endif
 
htmlMarqueeElementGetScrollAmount ::
                                  (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetScrollAmount self
  = ghcjs_dom_html_marquee_element_get_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollDelay\"] = $2;"
        ghcjs_dom_html_marquee_element_set_scroll_delay ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_scroll_delay ::
                                                  JSRef HTMLMarqueeElement -> Int -> IO ()
ghcjs_dom_html_marquee_element_set_scroll_delay = undefined
#endif
 
htmlMarqueeElementSetScrollDelay ::
                                 (IsHTMLMarqueeElement self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollDelay self val
  = ghcjs_dom_html_marquee_element_set_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollDelay\"]"
        ghcjs_dom_html_marquee_element_get_scroll_delay ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
ghcjs_dom_html_marquee_element_get_scroll_delay ::
                                                  JSRef HTMLMarqueeElement -> IO Int
ghcjs_dom_html_marquee_element_get_scroll_delay = undefined
#endif
 
htmlMarqueeElementGetScrollDelay ::
                                 (IsHTMLMarqueeElement self) => self -> IO Int
htmlMarqueeElementGetScrollDelay self
  = ghcjs_dom_html_marquee_element_get_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"trueSpeed\"] = $2;"
        ghcjs_dom_html_marquee_element_set_true_speed ::
        JSRef HTMLMarqueeElement -> Bool -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_true_speed ::
                                                JSRef HTMLMarqueeElement -> Bool -> IO ()
ghcjs_dom_html_marquee_element_set_true_speed = undefined
#endif
 
htmlMarqueeElementSetTrueSpeed ::
                               (IsHTMLMarqueeElement self) => self -> Bool -> IO ()
htmlMarqueeElementSetTrueSpeed self val
  = ghcjs_dom_html_marquee_element_set_true_speed
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"trueSpeed\"] ? 1 : 0)"
        ghcjs_dom_html_marquee_element_get_true_speed ::
        JSRef HTMLMarqueeElement -> IO Bool
#else 
ghcjs_dom_html_marquee_element_get_true_speed ::
                                                JSRef HTMLMarqueeElement -> IO Bool
ghcjs_dom_html_marquee_element_get_true_speed = undefined
#endif
 
htmlMarqueeElementGetTrueSpeed ::
                               (IsHTMLMarqueeElement self) => self -> IO Bool
htmlMarqueeElementGetTrueSpeed self
  = ghcjs_dom_html_marquee_element_get_true_speed
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_marquee_element_set_vspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_vspace ::
                                            JSRef HTMLMarqueeElement -> Word -> IO ()
ghcjs_dom_html_marquee_element_set_vspace = undefined
#endif
 
htmlMarqueeElementSetVspace ::
                            (IsHTMLMarqueeElement self) => self -> Word -> IO ()
htmlMarqueeElementSetVspace self val
  = ghcjs_dom_html_marquee_element_set_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_marquee_element_get_vspace ::
        JSRef HTMLMarqueeElement -> IO Word
#else 
ghcjs_dom_html_marquee_element_get_vspace ::
                                            JSRef HTMLMarqueeElement -> IO Word
ghcjs_dom_html_marquee_element_get_vspace = undefined
#endif
 
htmlMarqueeElementGetVspace ::
                            (IsHTMLMarqueeElement self) => self -> IO Word
htmlMarqueeElementGetVspace self
  = ghcjs_dom_html_marquee_element_get_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_marquee_element_set_width ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
ghcjs_dom_html_marquee_element_set_width ::
                                           JSRef HTMLMarqueeElement -> JSString -> IO ()
ghcjs_dom_html_marquee_element_set_width = undefined
#endif
 
htmlMarqueeElementSetWidth ::
                           (IsHTMLMarqueeElement self, ToJSString val) => self -> val -> IO ()
htmlMarqueeElementSetWidth self val
  = ghcjs_dom_html_marquee_element_set_width
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_marquee_element_get_width ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
ghcjs_dom_html_marquee_element_get_width ::
                                           JSRef HTMLMarqueeElement -> IO JSString
ghcjs_dom_html_marquee_element_get_width = undefined
#endif
 
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
