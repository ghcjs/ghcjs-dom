{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableCellElement
       (webkit_dom_html_table_cell_element_get_cell_index,
        htmlTableCellElementGetCellIndex,
        webkit_dom_html_table_cell_element_set_abbr,
        htmlTableCellElementSetAbbr,
        webkit_dom_html_table_cell_element_get_abbr,
        htmlTableCellElementGetAbbr,
        webkit_dom_html_table_cell_element_set_align,
        htmlTableCellElementSetAlign,
        webkit_dom_html_table_cell_element_get_align,
        htmlTableCellElementGetAlign,
        webkit_dom_html_table_cell_element_set_axis,
        htmlTableCellElementSetAxis,
        webkit_dom_html_table_cell_element_get_axis,
        htmlTableCellElementGetAxis,
        webkit_dom_html_table_cell_element_set_bg_color,
        htmlTableCellElementSetBgColor,
        webkit_dom_html_table_cell_element_get_bg_color,
        htmlTableCellElementGetBgColor,
        webkit_dom_html_table_cell_element_set_ch,
        htmlTableCellElementSetCh,
        webkit_dom_html_table_cell_element_get_ch,
        htmlTableCellElementGetCh,
        webkit_dom_html_table_cell_element_set_ch_off,
        htmlTableCellElementSetChOff,
        webkit_dom_html_table_cell_element_get_ch_off,
        htmlTableCellElementGetChOff,
        webkit_dom_html_table_cell_element_set_col_span,
        htmlTableCellElementSetColSpan,
        webkit_dom_html_table_cell_element_get_col_span,
        htmlTableCellElementGetColSpan,
        webkit_dom_html_table_cell_element_set_headers,
        htmlTableCellElementSetHeaders,
        webkit_dom_html_table_cell_element_get_headers,
        htmlTableCellElementGetHeaders,
        webkit_dom_html_table_cell_element_set_height,
        htmlTableCellElementSetHeight,
        webkit_dom_html_table_cell_element_get_height,
        htmlTableCellElementGetHeight,
        webkit_dom_html_table_cell_element_set_no_wrap,
        htmlTableCellElementSetNoWrap,
        webkit_dom_html_table_cell_element_get_no_wrap,
        htmlTableCellElementGetNoWrap,
        webkit_dom_html_table_cell_element_set_row_span,
        htmlTableCellElementSetRowSpan,
        webkit_dom_html_table_cell_element_get_row_span,
        htmlTableCellElementGetRowSpan,
        webkit_dom_html_table_cell_element_set_scope,
        htmlTableCellElementSetScope,
        webkit_dom_html_table_cell_element_get_scope,
        htmlTableCellElementGetScope,
        webkit_dom_html_table_cell_element_set_v_align,
        htmlTableCellElementSetVAlign,
        webkit_dom_html_table_cell_element_get_v_align,
        htmlTableCellElementGetVAlign,
        webkit_dom_html_table_cell_element_set_width,
        htmlTableCellElementSetWidth,
        webkit_dom_html_table_cell_element_get_width,
        htmlTableCellElementGetWidth)
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
foreign import javascript unsafe "$1[\"cellIndex\"]"
        webkit_dom_html_table_cell_element_get_cell_index ::
        JSRef HTMLTableCellElement -> IO Int
#else 
webkit_dom_html_table_cell_element_get_cell_index ::
                                                    JSRef HTMLTableCellElement -> IO Int
webkit_dom_html_table_cell_element_get_cell_index = undefined
#endif
 
htmlTableCellElementGetCellIndex ::
                                 (HTMLTableCellElementClass self) => self -> IO Int
htmlTableCellElementGetCellIndex self
  = webkit_dom_html_table_cell_element_get_cell_index
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abbr\"] = $2;"
        webkit_dom_html_table_cell_element_set_abbr ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_abbr ::
                                              JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_abbr = undefined
#endif
 
htmlTableCellElementSetAbbr ::
                            (HTMLTableCellElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableCellElementSetAbbr self val
  = webkit_dom_html_table_cell_element_set_abbr
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abbr\"]"
        webkit_dom_html_table_cell_element_get_abbr ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_abbr ::
                                              JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_abbr = undefined
#endif
 
htmlTableCellElementGetAbbr ::
                            (HTMLTableCellElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableCellElementGetAbbr self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_abbr
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_table_cell_element_set_align ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_align ::
                                               JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_align = undefined
#endif
 
htmlTableCellElementSetAlign ::
                             (HTMLTableCellElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetAlign self val
  = webkit_dom_html_table_cell_element_set_align
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_cell_element_get_align ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_align ::
                                               JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_align = undefined
#endif
 
htmlTableCellElementGetAlign ::
                             (HTMLTableCellElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_align
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"axis\"] = $2;"
        webkit_dom_html_table_cell_element_set_axis ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_axis ::
                                              JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_axis = undefined
#endif
 
htmlTableCellElementSetAxis ::
                            (HTMLTableCellElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableCellElementSetAxis self val
  = webkit_dom_html_table_cell_element_set_axis
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"axis\"]"
        webkit_dom_html_table_cell_element_get_axis ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_axis ::
                                              JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_axis = undefined
#endif
 
htmlTableCellElementGetAxis ::
                            (HTMLTableCellElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableCellElementGetAxis self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_axis
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_table_cell_element_set_bg_color ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_bg_color ::
                                                  JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_bg_color = undefined
#endif
 
htmlTableCellElementSetBgColor ::
                               (HTMLTableCellElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableCellElementSetBgColor self val
  = webkit_dom_html_table_cell_element_set_bg_color
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_table_cell_element_get_bg_color ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_bg_color ::
                                                  JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_bg_color = undefined
#endif
 
htmlTableCellElementGetBgColor ::
                               (HTMLTableCellElementClass self, FromJSString result) =>
                                 self -> IO result
htmlTableCellElementGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_bg_color
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        webkit_dom_html_table_cell_element_set_ch ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_ch ::
                                            JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_ch = undefined
#endif
 
htmlTableCellElementSetCh ::
                          (HTMLTableCellElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlTableCellElementSetCh self val
  = webkit_dom_html_table_cell_element_set_ch
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"]"
        webkit_dom_html_table_cell_element_get_ch ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_ch ::
                                            JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_ch = undefined
#endif
 
htmlTableCellElementGetCh ::
                          (HTMLTableCellElementClass self, FromJSString result) =>
                            self -> IO result
htmlTableCellElementGetCh self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_ch
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        webkit_dom_html_table_cell_element_set_ch_off ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_ch_off ::
                                                JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_ch_off = undefined
#endif
 
htmlTableCellElementSetChOff ::
                             (HTMLTableCellElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetChOff self val
  = webkit_dom_html_table_cell_element_set_ch_off
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"]"
        webkit_dom_html_table_cell_element_get_ch_off ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_ch_off ::
                                                JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_ch_off = undefined
#endif
 
htmlTableCellElementGetChOff ::
                             (HTMLTableCellElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetChOff self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_ch_off
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"colSpan\"] = $2;"
        webkit_dom_html_table_cell_element_set_col_span ::
        JSRef HTMLTableCellElement -> Int -> IO ()
#else 
webkit_dom_html_table_cell_element_set_col_span ::
                                                  JSRef HTMLTableCellElement -> Int -> IO ()
webkit_dom_html_table_cell_element_set_col_span = undefined
#endif
 
htmlTableCellElementSetColSpan ::
                               (HTMLTableCellElementClass self) => self -> Int -> IO ()
htmlTableCellElementSetColSpan self val
  = webkit_dom_html_table_cell_element_set_col_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"colSpan\"]"
        webkit_dom_html_table_cell_element_get_col_span ::
        JSRef HTMLTableCellElement -> IO Int
#else 
webkit_dom_html_table_cell_element_get_col_span ::
                                                  JSRef HTMLTableCellElement -> IO Int
webkit_dom_html_table_cell_element_get_col_span = undefined
#endif
 
htmlTableCellElementGetColSpan ::
                               (HTMLTableCellElementClass self) => self -> IO Int
htmlTableCellElementGetColSpan self
  = webkit_dom_html_table_cell_element_get_col_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"headers\"] = $2;"
        webkit_dom_html_table_cell_element_set_headers ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_headers ::
                                                 JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_headers = undefined
#endif
 
htmlTableCellElementSetHeaders ::
                               (HTMLTableCellElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableCellElementSetHeaders self val
  = webkit_dom_html_table_cell_element_set_headers
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"headers\"]"
        webkit_dom_html_table_cell_element_get_headers ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_headers ::
                                                 JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_headers = undefined
#endif
 
htmlTableCellElementGetHeaders ::
                               (HTMLTableCellElementClass self, FromJSString result) =>
                                 self -> IO result
htmlTableCellElementGetHeaders self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_headers
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        webkit_dom_html_table_cell_element_set_height ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_height ::
                                                JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_height = undefined
#endif
 
htmlTableCellElementSetHeight ::
                              (HTMLTableCellElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableCellElementSetHeight self val
  = webkit_dom_html_table_cell_element_set_height
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_table_cell_element_get_height ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_height ::
                                                JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_height = undefined
#endif
 
htmlTableCellElementGetHeight ::
                              (HTMLTableCellElementClass self, FromJSString result) =>
                                self -> IO result
htmlTableCellElementGetHeight self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_height
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noWrap\"] = $2;"
        webkit_dom_html_table_cell_element_set_no_wrap ::
        JSRef HTMLTableCellElement -> JSBool -> IO ()
#else 
webkit_dom_html_table_cell_element_set_no_wrap ::
                                                 JSRef HTMLTableCellElement -> JSBool -> IO ()
webkit_dom_html_table_cell_element_set_no_wrap = undefined
#endif
 
htmlTableCellElementSetNoWrap ::
                              (HTMLTableCellElementClass self) => self -> Bool -> IO ()
htmlTableCellElementSetNoWrap self val
  = webkit_dom_html_table_cell_element_set_no_wrap
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noWrap\"] ? 1 : 0)"
        webkit_dom_html_table_cell_element_get_no_wrap ::
        JSRef HTMLTableCellElement -> IO JSBool
#else 
webkit_dom_html_table_cell_element_get_no_wrap ::
                                                 JSRef HTMLTableCellElement -> IO JSBool
webkit_dom_html_table_cell_element_get_no_wrap = undefined
#endif
 
htmlTableCellElementGetNoWrap ::
                              (HTMLTableCellElementClass self) => self -> IO Bool
htmlTableCellElementGetNoWrap self
  = fromJSBool <$>
      (webkit_dom_html_table_cell_element_get_no_wrap
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rowSpan\"] = $2;"
        webkit_dom_html_table_cell_element_set_row_span ::
        JSRef HTMLTableCellElement -> Int -> IO ()
#else 
webkit_dom_html_table_cell_element_set_row_span ::
                                                  JSRef HTMLTableCellElement -> Int -> IO ()
webkit_dom_html_table_cell_element_set_row_span = undefined
#endif
 
htmlTableCellElementSetRowSpan ::
                               (HTMLTableCellElementClass self) => self -> Int -> IO ()
htmlTableCellElementSetRowSpan self val
  = webkit_dom_html_table_cell_element_set_row_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rowSpan\"]"
        webkit_dom_html_table_cell_element_get_row_span ::
        JSRef HTMLTableCellElement -> IO Int
#else 
webkit_dom_html_table_cell_element_get_row_span ::
                                                  JSRef HTMLTableCellElement -> IO Int
webkit_dom_html_table_cell_element_get_row_span = undefined
#endif
 
htmlTableCellElementGetRowSpan ::
                               (HTMLTableCellElementClass self) => self -> IO Int
htmlTableCellElementGetRowSpan self
  = webkit_dom_html_table_cell_element_get_row_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scope\"] = $2;"
        webkit_dom_html_table_cell_element_set_scope ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_scope ::
                                               JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_scope = undefined
#endif
 
htmlTableCellElementSetScope ::
                             (HTMLTableCellElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetScope self val
  = webkit_dom_html_table_cell_element_set_scope
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scope\"]"
        webkit_dom_html_table_cell_element_get_scope ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_scope ::
                                               JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_scope = undefined
#endif
 
htmlTableCellElementGetScope ::
                             (HTMLTableCellElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetScope self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_scope
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        webkit_dom_html_table_cell_element_set_v_align ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_v_align ::
                                                 JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_v_align = undefined
#endif
 
htmlTableCellElementSetVAlign ::
                              (HTMLTableCellElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableCellElementSetVAlign self val
  = webkit_dom_html_table_cell_element_set_v_align
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"]"
        webkit_dom_html_table_cell_element_get_v_align ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_v_align ::
                                                 JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_v_align = undefined
#endif
 
htmlTableCellElementGetVAlign ::
                              (HTMLTableCellElementClass self, FromJSString result) =>
                                self -> IO result
htmlTableCellElementGetVAlign self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_v_align
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_table_cell_element_set_width ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
webkit_dom_html_table_cell_element_set_width ::
                                               JSRef HTMLTableCellElement -> JSString -> IO ()
webkit_dom_html_table_cell_element_set_width = undefined
#endif
 
htmlTableCellElementSetWidth ::
                             (HTMLTableCellElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetWidth self val
  = webkit_dom_html_table_cell_element_set_width
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_table_cell_element_get_width ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
webkit_dom_html_table_cell_element_get_width ::
                                               JSRef HTMLTableCellElement -> IO JSString
webkit_dom_html_table_cell_element_get_width = undefined
#endif
 
htmlTableCellElementGetWidth ::
                             (HTMLTableCellElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_table_cell_element_get_width
         (unHTMLTableCellElement (toHTMLTableCellElement self)))