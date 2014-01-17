{-# LANGUAGE CPP #-}
#if (defined(__GHCJS__) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableCellElement
       (ghcjs_dom_html_table_cell_element_get_cell_index,
        htmlTableCellElementGetCellIndex,
        ghcjs_dom_html_table_cell_element_set_abbr,
        htmlTableCellElementSetAbbr,
        ghcjs_dom_html_table_cell_element_get_abbr,
        htmlTableCellElementGetAbbr,
        ghcjs_dom_html_table_cell_element_set_align,
        htmlTableCellElementSetAlign,
        ghcjs_dom_html_table_cell_element_get_align,
        htmlTableCellElementGetAlign,
        ghcjs_dom_html_table_cell_element_set_axis,
        htmlTableCellElementSetAxis,
        ghcjs_dom_html_table_cell_element_get_axis,
        htmlTableCellElementGetAxis,
        ghcjs_dom_html_table_cell_element_set_bg_color,
        htmlTableCellElementSetBgColor,
        ghcjs_dom_html_table_cell_element_get_bg_color,
        htmlTableCellElementGetBgColor,
        ghcjs_dom_html_table_cell_element_set_ch,
        htmlTableCellElementSetCh,
        ghcjs_dom_html_table_cell_element_get_ch,
        htmlTableCellElementGetCh,
        ghcjs_dom_html_table_cell_element_set_ch_off,
        htmlTableCellElementSetChOff,
        ghcjs_dom_html_table_cell_element_get_ch_off,
        htmlTableCellElementGetChOff,
        ghcjs_dom_html_table_cell_element_set_col_span,
        htmlTableCellElementSetColSpan,
        ghcjs_dom_html_table_cell_element_get_col_span,
        htmlTableCellElementGetColSpan,
        ghcjs_dom_html_table_cell_element_set_headers,
        htmlTableCellElementSetHeaders,
        ghcjs_dom_html_table_cell_element_get_headers,
        htmlTableCellElementGetHeaders,
        ghcjs_dom_html_table_cell_element_set_height,
        htmlTableCellElementSetHeight,
        ghcjs_dom_html_table_cell_element_get_height,
        htmlTableCellElementGetHeight,
        ghcjs_dom_html_table_cell_element_set_no_wrap,
        htmlTableCellElementSetNoWrap,
        ghcjs_dom_html_table_cell_element_get_no_wrap,
        htmlTableCellElementGetNoWrap,
        ghcjs_dom_html_table_cell_element_set_row_span,
        htmlTableCellElementSetRowSpan,
        ghcjs_dom_html_table_cell_element_get_row_span,
        htmlTableCellElementGetRowSpan,
        ghcjs_dom_html_table_cell_element_set_scope,
        htmlTableCellElementSetScope,
        ghcjs_dom_html_table_cell_element_get_scope,
        htmlTableCellElementGetScope,
        ghcjs_dom_html_table_cell_element_set_v_align,
        htmlTableCellElementSetVAlign,
        ghcjs_dom_html_table_cell_element_get_v_align,
        htmlTableCellElementGetVAlign,
        ghcjs_dom_html_table_cell_element_set_width,
        htmlTableCellElementSetWidth,
        ghcjs_dom_html_table_cell_element_get_width,
        htmlTableCellElementGetWidth, HTMLTableCellElement,
        IsHTMLTableCellElement, castToHTMLTableCellElement,
        gTypeHTMLTableCellElement, toHTMLTableCellElement)
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
        ghcjs_dom_html_table_cell_element_get_cell_index ::
        JSRef HTMLTableCellElement -> IO Int
#else 
ghcjs_dom_html_table_cell_element_get_cell_index ::
                                                   JSRef HTMLTableCellElement -> IO Int
ghcjs_dom_html_table_cell_element_get_cell_index = undefined
#endif
 
htmlTableCellElementGetCellIndex ::
                                 (IsHTMLTableCellElement self) => self -> IO Int
htmlTableCellElementGetCellIndex self
  = ghcjs_dom_html_table_cell_element_get_cell_index
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abbr\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_abbr ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_abbr ::
                                             JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_abbr = undefined
#endif
 
htmlTableCellElementSetAbbr ::
                            (IsHTMLTableCellElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableCellElementSetAbbr self val
  = ghcjs_dom_html_table_cell_element_set_abbr
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"abbr\"]"
        ghcjs_dom_html_table_cell_element_get_abbr ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_abbr ::
                                             JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_abbr = undefined
#endif
 
htmlTableCellElementGetAbbr ::
                            (IsHTMLTableCellElement self, FromJSString result) =>
                              self -> IO result
htmlTableCellElementGetAbbr self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_abbr
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_align ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_align ::
                                              JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_align = undefined
#endif
 
htmlTableCellElementSetAlign ::
                             (IsHTMLTableCellElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetAlign self val
  = ghcjs_dom_html_table_cell_element_set_align
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_cell_element_get_align ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_align ::
                                              JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_align = undefined
#endif
 
htmlTableCellElementGetAlign ::
                             (IsHTMLTableCellElement self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_align
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"axis\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_axis ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_axis ::
                                             JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_axis = undefined
#endif
 
htmlTableCellElementSetAxis ::
                            (IsHTMLTableCellElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableCellElementSetAxis self val
  = ghcjs_dom_html_table_cell_element_set_axis
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"axis\"]"
        ghcjs_dom_html_table_cell_element_get_axis ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_axis ::
                                             JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_axis = undefined
#endif
 
htmlTableCellElementGetAxis ::
                            (IsHTMLTableCellElement self, FromJSString result) =>
                              self -> IO result
htmlTableCellElementGetAxis self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_axis
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_bg_color ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_bg_color ::
                                                 JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_bg_color = undefined
#endif
 
htmlTableCellElementSetBgColor ::
                               (IsHTMLTableCellElement self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableCellElementSetBgColor self val
  = ghcjs_dom_html_table_cell_element_set_bg_color
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_table_cell_element_get_bg_color ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_bg_color ::
                                                 JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_bg_color = undefined
#endif
 
htmlTableCellElementGetBgColor ::
                               (IsHTMLTableCellElement self, FromJSString result) =>
                                 self -> IO result
htmlTableCellElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_bg_color
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_ch ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_ch ::
                                           JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_ch = undefined
#endif
 
htmlTableCellElementSetCh ::
                          (IsHTMLTableCellElement self, ToJSString val) =>
                            self -> val -> IO ()
htmlTableCellElementSetCh self val
  = ghcjs_dom_html_table_cell_element_set_ch
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_cell_element_get_ch ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_ch ::
                                           JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_ch = undefined
#endif
 
htmlTableCellElementGetCh ::
                          (IsHTMLTableCellElement self, FromJSString result) =>
                            self -> IO result
htmlTableCellElementGetCh self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_ch
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_ch_off ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_ch_off ::
                                               JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_ch_off = undefined
#endif
 
htmlTableCellElementSetChOff ::
                             (IsHTMLTableCellElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetChOff self val
  = ghcjs_dom_html_table_cell_element_set_ch_off
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_cell_element_get_ch_off ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_ch_off ::
                                               JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_ch_off = undefined
#endif
 
htmlTableCellElementGetChOff ::
                             (IsHTMLTableCellElement self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetChOff self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_ch_off
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"colSpan\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_col_span ::
        JSRef HTMLTableCellElement -> Int -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_col_span ::
                                                 JSRef HTMLTableCellElement -> Int -> IO ()
ghcjs_dom_html_table_cell_element_set_col_span = undefined
#endif
 
htmlTableCellElementSetColSpan ::
                               (IsHTMLTableCellElement self) => self -> Int -> IO ()
htmlTableCellElementSetColSpan self val
  = ghcjs_dom_html_table_cell_element_set_col_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"colSpan\"]"
        ghcjs_dom_html_table_cell_element_get_col_span ::
        JSRef HTMLTableCellElement -> IO Int
#else 
ghcjs_dom_html_table_cell_element_get_col_span ::
                                                 JSRef HTMLTableCellElement -> IO Int
ghcjs_dom_html_table_cell_element_get_col_span = undefined
#endif
 
htmlTableCellElementGetColSpan ::
                               (IsHTMLTableCellElement self) => self -> IO Int
htmlTableCellElementGetColSpan self
  = ghcjs_dom_html_table_cell_element_get_col_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"headers\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_headers ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_headers ::
                                                JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_headers = undefined
#endif
 
htmlTableCellElementSetHeaders ::
                               (IsHTMLTableCellElement self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableCellElementSetHeaders self val
  = ghcjs_dom_html_table_cell_element_set_headers
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"headers\"]"
        ghcjs_dom_html_table_cell_element_get_headers ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_headers ::
                                                JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_headers = undefined
#endif
 
htmlTableCellElementGetHeaders ::
                               (IsHTMLTableCellElement self, FromJSString result) =>
                                 self -> IO result
htmlTableCellElementGetHeaders self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_headers
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_height ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_height ::
                                               JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_height = undefined
#endif
 
htmlTableCellElementSetHeight ::
                              (IsHTMLTableCellElement self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableCellElementSetHeight self val
  = ghcjs_dom_html_table_cell_element_set_height
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_table_cell_element_get_height ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_height ::
                                               JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_height = undefined
#endif
 
htmlTableCellElementGetHeight ::
                              (IsHTMLTableCellElement self, FromJSString result) =>
                                self -> IO result
htmlTableCellElementGetHeight self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_height
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"noWrap\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_no_wrap ::
        JSRef HTMLTableCellElement -> Bool -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_no_wrap ::
                                                JSRef HTMLTableCellElement -> Bool -> IO ()
ghcjs_dom_html_table_cell_element_set_no_wrap = undefined
#endif
 
htmlTableCellElementSetNoWrap ::
                              (IsHTMLTableCellElement self) => self -> Bool -> IO ()
htmlTableCellElementSetNoWrap self val
  = ghcjs_dom_html_table_cell_element_set_no_wrap
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"noWrap\"] ? 1 : 0)"
        ghcjs_dom_html_table_cell_element_get_no_wrap ::
        JSRef HTMLTableCellElement -> IO Bool
#else 
ghcjs_dom_html_table_cell_element_get_no_wrap ::
                                                JSRef HTMLTableCellElement -> IO Bool
ghcjs_dom_html_table_cell_element_get_no_wrap = undefined
#endif
 
htmlTableCellElementGetNoWrap ::
                              (IsHTMLTableCellElement self) => self -> IO Bool
htmlTableCellElementGetNoWrap self
  = ghcjs_dom_html_table_cell_element_get_no_wrap
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rowSpan\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_row_span ::
        JSRef HTMLTableCellElement -> Int -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_row_span ::
                                                 JSRef HTMLTableCellElement -> Int -> IO ()
ghcjs_dom_html_table_cell_element_set_row_span = undefined
#endif
 
htmlTableCellElementSetRowSpan ::
                               (IsHTMLTableCellElement self) => self -> Int -> IO ()
htmlTableCellElementSetRowSpan self val
  = ghcjs_dom_html_table_cell_element_set_row_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rowSpan\"]"
        ghcjs_dom_html_table_cell_element_get_row_span ::
        JSRef HTMLTableCellElement -> IO Int
#else 
ghcjs_dom_html_table_cell_element_get_row_span ::
                                                 JSRef HTMLTableCellElement -> IO Int
ghcjs_dom_html_table_cell_element_get_row_span = undefined
#endif
 
htmlTableCellElementGetRowSpan ::
                               (IsHTMLTableCellElement self) => self -> IO Int
htmlTableCellElementGetRowSpan self
  = ghcjs_dom_html_table_cell_element_get_row_span
      (unHTMLTableCellElement (toHTMLTableCellElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scope\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_scope ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_scope ::
                                              JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_scope = undefined
#endif
 
htmlTableCellElementSetScope ::
                             (IsHTMLTableCellElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetScope self val
  = ghcjs_dom_html_table_cell_element_set_scope
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scope\"]"
        ghcjs_dom_html_table_cell_element_get_scope ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_scope ::
                                              JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_scope = undefined
#endif
 
htmlTableCellElementGetScope ::
                             (IsHTMLTableCellElement self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetScope self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_scope
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_v_align ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_v_align ::
                                                JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_v_align = undefined
#endif
 
htmlTableCellElementSetVAlign ::
                              (IsHTMLTableCellElement self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableCellElementSetVAlign self val
  = ghcjs_dom_html_table_cell_element_set_v_align
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_cell_element_get_v_align ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_v_align ::
                                                JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_v_align = undefined
#endif
 
htmlTableCellElementGetVAlign ::
                              (IsHTMLTableCellElement self, FromJSString result) =>
                                self -> IO result
htmlTableCellElementGetVAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_v_align
         (unHTMLTableCellElement (toHTMLTableCellElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_table_cell_element_set_width ::
        JSRef HTMLTableCellElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_cell_element_set_width ::
                                              JSRef HTMLTableCellElement -> JSString -> IO ()
ghcjs_dom_html_table_cell_element_set_width = undefined
#endif
 
htmlTableCellElementSetWidth ::
                             (IsHTMLTableCellElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableCellElementSetWidth self val
  = ghcjs_dom_html_table_cell_element_set_width
      (unHTMLTableCellElement (toHTMLTableCellElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_table_cell_element_get_width ::
        JSRef HTMLTableCellElement -> IO JSString
#else 
ghcjs_dom_html_table_cell_element_get_width ::
                                              JSRef HTMLTableCellElement -> IO JSString
ghcjs_dom_html_table_cell_element_get_width = undefined
#endif
 
htmlTableCellElementGetWidth ::
                             (IsHTMLTableCellElement self, FromJSString result) =>
                               self -> IO result
htmlTableCellElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_table_cell_element_get_width
         (unHTMLTableCellElement (toHTMLTableCellElement self)))
#else
module GHCJS.DOM.HTMLTableCellElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
#endif
