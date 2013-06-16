{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableColElement
       (webkit_dom_html_table_col_element_set_align,
        htmlTableColElementSetAlign,
        webkit_dom_html_table_col_element_get_align,
        htmlTableColElementGetAlign,
        webkit_dom_html_table_col_element_set_ch, htmlTableColElementSetCh,
        webkit_dom_html_table_col_element_get_ch, htmlTableColElementGetCh,
        webkit_dom_html_table_col_element_set_ch_off,
        htmlTableColElementSetChOff,
        webkit_dom_html_table_col_element_get_ch_off,
        htmlTableColElementGetChOff,
        webkit_dom_html_table_col_element_set_span,
        htmlTableColElementSetSpan,
        webkit_dom_html_table_col_element_get_span,
        htmlTableColElementGetSpan,
        webkit_dom_html_table_col_element_set_v_align,
        htmlTableColElementSetVAlign,
        webkit_dom_html_table_col_element_get_v_align,
        htmlTableColElementGetVAlign,
        webkit_dom_html_table_col_element_set_width,
        htmlTableColElementSetWidth,
        webkit_dom_html_table_col_element_get_width,
        htmlTableColElementGetWidth)
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
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_table_col_element_set_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()
#else 
webkit_dom_html_table_col_element_set_align ::
                                              JSRef HTMLTableColElement -> JSString -> IO ()
webkit_dom_html_table_col_element_set_align = undefined
#endif
 
htmlTableColElementSetAlign ::
                            (HTMLTableColElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetAlign self val
  = webkit_dom_html_table_col_element_set_align
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_col_element_get_align ::
        JSRef HTMLTableColElement -> IO JSString
#else 
webkit_dom_html_table_col_element_get_align ::
                                              JSRef HTMLTableColElement -> IO JSString
webkit_dom_html_table_col_element_get_align = undefined
#endif
 
htmlTableColElementGetAlign ::
                            (HTMLTableColElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_col_element_get_align
         (unHTMLTableColElement (toHTMLTableColElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        webkit_dom_html_table_col_element_set_ch ::
        JSRef HTMLTableColElement -> JSString -> IO ()
#else 
webkit_dom_html_table_col_element_set_ch ::
                                           JSRef HTMLTableColElement -> JSString -> IO ()
webkit_dom_html_table_col_element_set_ch = undefined
#endif
 
htmlTableColElementSetCh ::
                         (HTMLTableColElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableColElementSetCh self val
  = webkit_dom_html_table_col_element_set_ch
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"]"
        webkit_dom_html_table_col_element_get_ch ::
        JSRef HTMLTableColElement -> IO JSString
#else 
webkit_dom_html_table_col_element_get_ch ::
                                           JSRef HTMLTableColElement -> IO JSString
webkit_dom_html_table_col_element_get_ch = undefined
#endif
 
htmlTableColElementGetCh ::
                         (HTMLTableColElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableColElementGetCh self
  = fromJSString <$>
      (webkit_dom_html_table_col_element_get_ch
         (unHTMLTableColElement (toHTMLTableColElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        webkit_dom_html_table_col_element_set_ch_off ::
        JSRef HTMLTableColElement -> JSString -> IO ()
#else 
webkit_dom_html_table_col_element_set_ch_off ::
                                               JSRef HTMLTableColElement -> JSString -> IO ()
webkit_dom_html_table_col_element_set_ch_off = undefined
#endif
 
htmlTableColElementSetChOff ::
                            (HTMLTableColElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetChOff self val
  = webkit_dom_html_table_col_element_set_ch_off
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"]"
        webkit_dom_html_table_col_element_get_ch_off ::
        JSRef HTMLTableColElement -> IO JSString
#else 
webkit_dom_html_table_col_element_get_ch_off ::
                                               JSRef HTMLTableColElement -> IO JSString
webkit_dom_html_table_col_element_get_ch_off = undefined
#endif
 
htmlTableColElementGetChOff ::
                            (HTMLTableColElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetChOff self
  = fromJSString <$>
      (webkit_dom_html_table_col_element_get_ch_off
         (unHTMLTableColElement (toHTMLTableColElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"span\"] = $2;"
        webkit_dom_html_table_col_element_set_span ::
        JSRef HTMLTableColElement -> Int -> IO ()
#else 
webkit_dom_html_table_col_element_set_span ::
                                             JSRef HTMLTableColElement -> Int -> IO ()
webkit_dom_html_table_col_element_set_span = undefined
#endif
 
htmlTableColElementSetSpan ::
                           (HTMLTableColElementClass self) => self -> Int -> IO ()
htmlTableColElementSetSpan self val
  = webkit_dom_html_table_col_element_set_span
      (unHTMLTableColElement (toHTMLTableColElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"span\"]"
        webkit_dom_html_table_col_element_get_span ::
        JSRef HTMLTableColElement -> IO Int
#else 
webkit_dom_html_table_col_element_get_span ::
                                             JSRef HTMLTableColElement -> IO Int
webkit_dom_html_table_col_element_get_span = undefined
#endif
 
htmlTableColElementGetSpan ::
                           (HTMLTableColElementClass self) => self -> IO Int
htmlTableColElementGetSpan self
  = webkit_dom_html_table_col_element_get_span
      (unHTMLTableColElement (toHTMLTableColElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        webkit_dom_html_table_col_element_set_v_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()
#else 
webkit_dom_html_table_col_element_set_v_align ::
                                                JSRef HTMLTableColElement -> JSString -> IO ()
webkit_dom_html_table_col_element_set_v_align = undefined
#endif
 
htmlTableColElementSetVAlign ::
                             (HTMLTableColElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableColElementSetVAlign self val
  = webkit_dom_html_table_col_element_set_v_align
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"]"
        webkit_dom_html_table_col_element_get_v_align ::
        JSRef HTMLTableColElement -> IO JSString
#else 
webkit_dom_html_table_col_element_get_v_align ::
                                                JSRef HTMLTableColElement -> IO JSString
webkit_dom_html_table_col_element_get_v_align = undefined
#endif
 
htmlTableColElementGetVAlign ::
                             (HTMLTableColElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableColElementGetVAlign self
  = fromJSString <$>
      (webkit_dom_html_table_col_element_get_v_align
         (unHTMLTableColElement (toHTMLTableColElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_table_col_element_set_width ::
        JSRef HTMLTableColElement -> JSString -> IO ()
#else 
webkit_dom_html_table_col_element_set_width ::
                                              JSRef HTMLTableColElement -> JSString -> IO ()
webkit_dom_html_table_col_element_set_width = undefined
#endif
 
htmlTableColElementSetWidth ::
                            (HTMLTableColElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableColElementSetWidth self val
  = webkit_dom_html_table_col_element_set_width
      (unHTMLTableColElement (toHTMLTableColElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_table_col_element_get_width ::
        JSRef HTMLTableColElement -> IO JSString
#else 
webkit_dom_html_table_col_element_get_width ::
                                              JSRef HTMLTableColElement -> IO JSString
webkit_dom_html_table_col_element_get_width = undefined
#endif
 
htmlTableColElementGetWidth ::
                            (HTMLTableColElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableColElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_table_col_element_get_width
         (unHTMLTableColElement (toHTMLTableColElement self)))