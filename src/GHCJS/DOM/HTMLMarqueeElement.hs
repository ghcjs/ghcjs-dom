{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLMarqueeElement
       (webkit_dom_html_marquee_element_start, htmlMarqueeElementStart,
        webkit_dom_html_marquee_element_stop, htmlMarqueeElementStop,
        webkit_dom_html_marquee_element_set_behavior,
        htmlMarqueeElementSetBehavior,
        webkit_dom_html_marquee_element_get_behavior,
        htmlMarqueeElementGetBehavior,
        webkit_dom_html_marquee_element_set_bg_color,
        htmlMarqueeElementSetBgColor,
        webkit_dom_html_marquee_element_get_bg_color,
        htmlMarqueeElementGetBgColor,
        webkit_dom_html_marquee_element_set_direction,
        htmlMarqueeElementSetDirection,
        webkit_dom_html_marquee_element_get_direction,
        htmlMarqueeElementGetDirection,
        webkit_dom_html_marquee_element_set_height,
        htmlMarqueeElementSetHeight,
        webkit_dom_html_marquee_element_get_height,
        htmlMarqueeElementGetHeight,
        webkit_dom_html_marquee_element_set_hspace,
        htmlMarqueeElementSetHspace,
        webkit_dom_html_marquee_element_get_hspace,
        htmlMarqueeElementGetHspace,
        webkit_dom_html_marquee_element_set_loop,
        htmlMarqueeElementSetLoop,
        webkit_dom_html_marquee_element_get_loop,
        htmlMarqueeElementGetLoop,
        webkit_dom_html_marquee_element_set_scroll_amount,
        htmlMarqueeElementSetScrollAmount,
        webkit_dom_html_marquee_element_get_scroll_amount,
        htmlMarqueeElementGetScrollAmount,
        webkit_dom_html_marquee_element_set_scroll_delay,
        htmlMarqueeElementSetScrollDelay,
        webkit_dom_html_marquee_element_get_scroll_delay,
        htmlMarqueeElementGetScrollDelay,
        webkit_dom_html_marquee_element_set_true_speed,
        htmlMarqueeElementSetTrueSpeed,
        webkit_dom_html_marquee_element_get_true_speed,
        htmlMarqueeElementGetTrueSpeed,
        webkit_dom_html_marquee_element_set_vspace,
        htmlMarqueeElementSetVspace,
        webkit_dom_html_marquee_element_get_vspace,
        htmlMarqueeElementGetVspace,
        webkit_dom_html_marquee_element_set_width,
        htmlMarqueeElementSetWidth,
        webkit_dom_html_marquee_element_get_width,
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
        webkit_dom_html_marquee_element_start ::
        JSRef HTMLMarqueeElement -> IO ()
#else 
webkit_dom_html_marquee_element_start ::
                                        JSRef HTMLMarqueeElement -> IO ()
webkit_dom_html_marquee_element_start = undefined
#endif
 
htmlMarqueeElementStart ::
                        (HTMLMarqueeElementClass self) => self -> IO ()
htmlMarqueeElementStart self
  = webkit_dom_html_marquee_element_start
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"stop\"]()"
        webkit_dom_html_marquee_element_stop ::
        JSRef HTMLMarqueeElement -> IO ()
#else 
webkit_dom_html_marquee_element_stop ::
                                       JSRef HTMLMarqueeElement -> IO ()
webkit_dom_html_marquee_element_stop = undefined
#endif
 
htmlMarqueeElementStop ::
                       (HTMLMarqueeElementClass self) => self -> IO ()
htmlMarqueeElementStop self
  = webkit_dom_html_marquee_element_stop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"behavior\"] = $2;"
        webkit_dom_html_marquee_element_set_behavior ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
webkit_dom_html_marquee_element_set_behavior ::
                                               JSRef HTMLMarqueeElement -> JSString -> IO ()
webkit_dom_html_marquee_element_set_behavior = undefined
#endif
 
htmlMarqueeElementSetBehavior ::
                              (HTMLMarqueeElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlMarqueeElementSetBehavior self val
  = webkit_dom_html_marquee_element_set_behavior
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"behavior\"]"
        webkit_dom_html_marquee_element_get_behavior ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
webkit_dom_html_marquee_element_get_behavior ::
                                               JSRef HTMLMarqueeElement -> IO JSString
webkit_dom_html_marquee_element_get_behavior = undefined
#endif
 
htmlMarqueeElementGetBehavior ::
                              (HTMLMarqueeElementClass self, FromJSString result) =>
                                self -> IO result
htmlMarqueeElementGetBehavior self
  = fromJSString <$>
      (webkit_dom_html_marquee_element_get_behavior
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_marquee_element_set_bg_color ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
webkit_dom_html_marquee_element_set_bg_color ::
                                               JSRef HTMLMarqueeElement -> JSString -> IO ()
webkit_dom_html_marquee_element_set_bg_color = undefined
#endif
 
htmlMarqueeElementSetBgColor ::
                             (HTMLMarqueeElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlMarqueeElementSetBgColor self val
  = webkit_dom_html_marquee_element_set_bg_color
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_marquee_element_get_bg_color ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
webkit_dom_html_marquee_element_get_bg_color ::
                                               JSRef HTMLMarqueeElement -> IO JSString
webkit_dom_html_marquee_element_get_bg_color = undefined
#endif
 
htmlMarqueeElementGetBgColor ::
                             (HTMLMarqueeElementClass self, FromJSString result) =>
                               self -> IO result
htmlMarqueeElementGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_marquee_element_get_bg_color
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"] = $2;"
        webkit_dom_html_marquee_element_set_direction ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
webkit_dom_html_marquee_element_set_direction ::
                                                JSRef HTMLMarqueeElement -> JSString -> IO ()
webkit_dom_html_marquee_element_set_direction = undefined
#endif
 
htmlMarqueeElementSetDirection ::
                               (HTMLMarqueeElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlMarqueeElementSetDirection self val
  = webkit_dom_html_marquee_element_set_direction
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"direction\"]"
        webkit_dom_html_marquee_element_get_direction ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
webkit_dom_html_marquee_element_get_direction ::
                                                JSRef HTMLMarqueeElement -> IO JSString
webkit_dom_html_marquee_element_get_direction = undefined
#endif
 
htmlMarqueeElementGetDirection ::
                               (HTMLMarqueeElementClass self, FromJSString result) =>
                                 self -> IO result
htmlMarqueeElementGetDirection self
  = fromJSString <$>
      (webkit_dom_html_marquee_element_get_direction
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_marquee_element_set_height ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
webkit_dom_html_marquee_element_set_height ::
                                             JSRef HTMLMarqueeElement -> JSString -> IO ()
webkit_dom_html_marquee_element_set_height = undefined
#endif
 
htmlMarqueeElementSetHeight ::
                            (HTMLMarqueeElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlMarqueeElementSetHeight self val
  = webkit_dom_html_marquee_element_set_height
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_marquee_element_get_height ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
webkit_dom_html_marquee_element_get_height ::
                                             JSRef HTMLMarqueeElement -> IO JSString
webkit_dom_html_marquee_element_get_height = undefined
#endif
 
htmlMarqueeElementGetHeight ::
                            (HTMLMarqueeElementClass self, FromJSString result) =>
                              self -> IO result
htmlMarqueeElementGetHeight self
  = fromJSString <$>
      (webkit_dom_html_marquee_element_get_height
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        webkit_dom_html_marquee_element_set_hspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()
#else 
webkit_dom_html_marquee_element_set_hspace ::
                                             JSRef HTMLMarqueeElement -> Word -> IO ()
webkit_dom_html_marquee_element_set_hspace = undefined
#endif
 
htmlMarqueeElementSetHspace ::
                            (HTMLMarqueeElementClass self) => self -> Word -> IO ()
htmlMarqueeElementSetHspace self val
  = webkit_dom_html_marquee_element_set_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hspace\"]"
        webkit_dom_html_marquee_element_get_hspace ::
        JSRef HTMLMarqueeElement -> IO Word
#else 
webkit_dom_html_marquee_element_get_hspace ::
                                             JSRef HTMLMarqueeElement -> IO Word
webkit_dom_html_marquee_element_get_hspace = undefined
#endif
 
htmlMarqueeElementGetHspace ::
                            (HTMLMarqueeElementClass self) => self -> IO Word
htmlMarqueeElementGetHspace self
  = webkit_dom_html_marquee_element_get_hspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"] = $2;"
        webkit_dom_html_marquee_element_set_loop ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
webkit_dom_html_marquee_element_set_loop ::
                                           JSRef HTMLMarqueeElement -> Int -> IO ()
webkit_dom_html_marquee_element_set_loop = undefined
#endif
 
htmlMarqueeElementSetLoop ::
                          (HTMLMarqueeElementClass self) => self -> Int -> IO ()
htmlMarqueeElementSetLoop self val
  = webkit_dom_html_marquee_element_set_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"loop\"]"
        webkit_dom_html_marquee_element_get_loop ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
webkit_dom_html_marquee_element_get_loop ::
                                           JSRef HTMLMarqueeElement -> IO Int
webkit_dom_html_marquee_element_get_loop = undefined
#endif
 
htmlMarqueeElementGetLoop ::
                          (HTMLMarqueeElementClass self) => self -> IO Int
htmlMarqueeElementGetLoop self
  = webkit_dom_html_marquee_element_get_loop
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollAmount\"] = $2;"
        webkit_dom_html_marquee_element_set_scroll_amount ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
webkit_dom_html_marquee_element_set_scroll_amount ::
                                                    JSRef HTMLMarqueeElement -> Int -> IO ()
webkit_dom_html_marquee_element_set_scroll_amount = undefined
#endif
 
htmlMarqueeElementSetScrollAmount ::
                                  (HTMLMarqueeElementClass self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollAmount self val
  = webkit_dom_html_marquee_element_set_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollAmount\"]"
        webkit_dom_html_marquee_element_get_scroll_amount ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
webkit_dom_html_marquee_element_get_scroll_amount ::
                                                    JSRef HTMLMarqueeElement -> IO Int
webkit_dom_html_marquee_element_get_scroll_amount = undefined
#endif
 
htmlMarqueeElementGetScrollAmount ::
                                  (HTMLMarqueeElementClass self) => self -> IO Int
htmlMarqueeElementGetScrollAmount self
  = webkit_dom_html_marquee_element_get_scroll_amount
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollDelay\"] = $2;"
        webkit_dom_html_marquee_element_set_scroll_delay ::
        JSRef HTMLMarqueeElement -> Int -> IO ()
#else 
webkit_dom_html_marquee_element_set_scroll_delay ::
                                                   JSRef HTMLMarqueeElement -> Int -> IO ()
webkit_dom_html_marquee_element_set_scroll_delay = undefined
#endif
 
htmlMarqueeElementSetScrollDelay ::
                                 (HTMLMarqueeElementClass self) => self -> Int -> IO ()
htmlMarqueeElementSetScrollDelay self val
  = webkit_dom_html_marquee_element_set_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scrollDelay\"]"
        webkit_dom_html_marquee_element_get_scroll_delay ::
        JSRef HTMLMarqueeElement -> IO Int
#else 
webkit_dom_html_marquee_element_get_scroll_delay ::
                                                   JSRef HTMLMarqueeElement -> IO Int
webkit_dom_html_marquee_element_get_scroll_delay = undefined
#endif
 
htmlMarqueeElementGetScrollDelay ::
                                 (HTMLMarqueeElementClass self) => self -> IO Int
htmlMarqueeElementGetScrollDelay self
  = webkit_dom_html_marquee_element_get_scroll_delay
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"trueSpeed\"] = $2;"
        webkit_dom_html_marquee_element_set_true_speed ::
        JSRef HTMLMarqueeElement -> JSBool -> IO ()
#else 
webkit_dom_html_marquee_element_set_true_speed ::
                                                 JSRef HTMLMarqueeElement -> JSBool -> IO ()
webkit_dom_html_marquee_element_set_true_speed = undefined
#endif
 
htmlMarqueeElementSetTrueSpeed ::
                               (HTMLMarqueeElementClass self) => self -> Bool -> IO ()
htmlMarqueeElementSetTrueSpeed self val
  = webkit_dom_html_marquee_element_set_true_speed
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"trueSpeed\"] ? 1 : 0)"
        webkit_dom_html_marquee_element_get_true_speed ::
        JSRef HTMLMarqueeElement -> IO JSBool
#else 
webkit_dom_html_marquee_element_get_true_speed ::
                                                 JSRef HTMLMarqueeElement -> IO JSBool
webkit_dom_html_marquee_element_get_true_speed = undefined
#endif
 
htmlMarqueeElementGetTrueSpeed ::
                               (HTMLMarqueeElementClass self) => self -> IO Bool
htmlMarqueeElementGetTrueSpeed self
  = fromJSBool <$>
      (webkit_dom_html_marquee_element_get_true_speed
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        webkit_dom_html_marquee_element_set_vspace ::
        JSRef HTMLMarqueeElement -> Word -> IO ()
#else 
webkit_dom_html_marquee_element_set_vspace ::
                                             JSRef HTMLMarqueeElement -> Word -> IO ()
webkit_dom_html_marquee_element_set_vspace = undefined
#endif
 
htmlMarqueeElementSetVspace ::
                            (HTMLMarqueeElementClass self) => self -> Word -> IO ()
htmlMarqueeElementSetVspace self val
  = webkit_dom_html_marquee_element_set_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vspace\"]"
        webkit_dom_html_marquee_element_get_vspace ::
        JSRef HTMLMarqueeElement -> IO Word
#else 
webkit_dom_html_marquee_element_get_vspace ::
                                             JSRef HTMLMarqueeElement -> IO Word
webkit_dom_html_marquee_element_get_vspace = undefined
#endif
 
htmlMarqueeElementGetVspace ::
                            (HTMLMarqueeElementClass self) => self -> IO Word
htmlMarqueeElementGetVspace self
  = webkit_dom_html_marquee_element_get_vspace
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_marquee_element_set_width ::
        JSRef HTMLMarqueeElement -> JSString -> IO ()
#else 
webkit_dom_html_marquee_element_set_width ::
                                            JSRef HTMLMarqueeElement -> JSString -> IO ()
webkit_dom_html_marquee_element_set_width = undefined
#endif
 
htmlMarqueeElementSetWidth ::
                           (HTMLMarqueeElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlMarqueeElementSetWidth self val
  = webkit_dom_html_marquee_element_set_width
      (unHTMLMarqueeElement (toHTMLMarqueeElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_marquee_element_get_width ::
        JSRef HTMLMarqueeElement -> IO JSString
#else 
webkit_dom_html_marquee_element_get_width ::
                                            JSRef HTMLMarqueeElement -> IO JSString
webkit_dom_html_marquee_element_get_width = undefined
#endif
 
htmlMarqueeElementGetWidth ::
                           (HTMLMarqueeElementClass self, FromJSString result) =>
                             self -> IO result
htmlMarqueeElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_marquee_element_get_width
         (unHTMLMarqueeElement (toHTMLMarqueeElement self)))