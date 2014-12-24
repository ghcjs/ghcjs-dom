{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableRowElement
       (ghcjs_dom_html_table_row_element_insert_cell,
        htmlTableRowElementInsertCell,
        ghcjs_dom_html_table_row_element_delete_cell,
        htmlTableRowElementDeleteCell,
        ghcjs_dom_html_table_row_element_get_row_index,
        htmlTableRowElementGetRowIndex,
        ghcjs_dom_html_table_row_element_get_section_row_index,
        htmlTableRowElementGetSectionRowIndex,
        ghcjs_dom_html_table_row_element_get_cells,
        htmlTableRowElementGetCells,
        ghcjs_dom_html_table_row_element_set_align,
        htmlTableRowElementSetAlign,
        ghcjs_dom_html_table_row_element_get_align,
        htmlTableRowElementGetAlign,
        ghcjs_dom_html_table_row_element_set_bg_color,
        htmlTableRowElementSetBgColor,
        ghcjs_dom_html_table_row_element_get_bg_color,
        htmlTableRowElementGetBgColor,
        ghcjs_dom_html_table_row_element_set_ch, htmlTableRowElementSetCh,
        ghcjs_dom_html_table_row_element_get_ch, htmlTableRowElementGetCh,
        ghcjs_dom_html_table_row_element_set_ch_off,
        htmlTableRowElementSetChOff,
        ghcjs_dom_html_table_row_element_get_ch_off,
        htmlTableRowElementGetChOff,
        ghcjs_dom_html_table_row_element_set_v_align,
        htmlTableRowElementSetVAlign,
        ghcjs_dom_html_table_row_element_get_v_align,
        htmlTableRowElementGetVAlign, HTMLTableRowElement,
        IsHTMLTableRowElement, castToHTMLTableRowElement,
        gTypeHTMLTableRowElement, toHTMLTableRowElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"insertCell\"]($2)"
        ghcjs_dom_html_table_row_element_insert_cell ::
        JSRef HTMLTableRowElement -> Int -> IO (JSRef HTMLElement)
 
htmlTableRowElementInsertCell ::
                              (IsHTMLTableRowElement self) =>
                                self -> Int -> IO (Maybe HTMLElement)
htmlTableRowElementInsertCell self index
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_row_element_insert_cell
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         index)
 
foreign import javascript unsafe "$1[\"deleteCell\"]($2)"
        ghcjs_dom_html_table_row_element_delete_cell ::
        JSRef HTMLTableRowElement -> Int -> IO ()
 
htmlTableRowElementDeleteCell ::
                              (IsHTMLTableRowElement self) => self -> Int -> IO ()
htmlTableRowElementDeleteCell self index
  = ghcjs_dom_html_table_row_element_delete_cell
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      index
 
foreign import javascript unsafe "$1[\"rowIndex\"]"
        ghcjs_dom_html_table_row_element_get_row_index ::
        JSRef HTMLTableRowElement -> IO Int
 
htmlTableRowElementGetRowIndex ::
                               (IsHTMLTableRowElement self) => self -> IO Int
htmlTableRowElementGetRowIndex self
  = ghcjs_dom_html_table_row_element_get_row_index
      (unHTMLTableRowElement (toHTMLTableRowElement self))
 
foreign import javascript unsafe "$1[\"sectionRowIndex\"]"
        ghcjs_dom_html_table_row_element_get_section_row_index ::
        JSRef HTMLTableRowElement -> IO Int
 
htmlTableRowElementGetSectionRowIndex ::
                                      (IsHTMLTableRowElement self) => self -> IO Int
htmlTableRowElementGetSectionRowIndex self
  = ghcjs_dom_html_table_row_element_get_section_row_index
      (unHTMLTableRowElement (toHTMLTableRowElement self))
 
foreign import javascript unsafe "$1[\"cells\"]"
        ghcjs_dom_html_table_row_element_get_cells ::
        JSRef HTMLTableRowElement -> IO (JSRef HTMLCollection)
 
htmlTableRowElementGetCells ::
                            (IsHTMLTableRowElement self) => self -> IO (Maybe HTMLCollection)
htmlTableRowElementGetCells self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_table_row_element_get_cells
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_row_element_set_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
 
htmlTableRowElementSetAlign ::
                            (IsHTMLTableRowElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableRowElementSetAlign self val
  = ghcjs_dom_html_table_row_element_set_align
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_row_element_get_align ::
        JSRef HTMLTableRowElement -> IO JSString
 
htmlTableRowElementGetAlign ::
                            (IsHTMLTableRowElement self, FromJSString result) =>
                              self -> IO result
htmlTableRowElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_row_element_get_align
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_table_row_element_set_bg_color ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
 
htmlTableRowElementSetBgColor ::
                              (IsHTMLTableRowElement self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableRowElementSetBgColor self val
  = ghcjs_dom_html_table_row_element_set_bg_color
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_table_row_element_get_bg_color ::
        JSRef HTMLTableRowElement -> IO JSString
 
htmlTableRowElementGetBgColor ::
                              (IsHTMLTableRowElement self, FromJSString result) =>
                                self -> IO result
htmlTableRowElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_table_row_element_get_bg_color
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_row_element_set_ch ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
 
htmlTableRowElementSetCh ::
                         (IsHTMLTableRowElement self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableRowElementSetCh self val
  = ghcjs_dom_html_table_row_element_set_ch
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_row_element_get_ch ::
        JSRef HTMLTableRowElement -> IO JSString
 
htmlTableRowElementGetCh ::
                         (IsHTMLTableRowElement self, FromJSString result) =>
                           self -> IO result
htmlTableRowElementGetCh self
  = fromJSString <$>
      (ghcjs_dom_html_table_row_element_get_ch
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_row_element_set_ch_off ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
 
htmlTableRowElementSetChOff ::
                            (IsHTMLTableRowElement self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableRowElementSetChOff self val
  = ghcjs_dom_html_table_row_element_set_ch_off
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_row_element_get_ch_off ::
        JSRef HTMLTableRowElement -> IO JSString
 
htmlTableRowElementGetChOff ::
                            (IsHTMLTableRowElement self, FromJSString result) =>
                              self -> IO result
htmlTableRowElementGetChOff self
  = fromJSString <$>
      (ghcjs_dom_html_table_row_element_get_ch_off
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_row_element_set_v_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
 
htmlTableRowElementSetVAlign ::
                             (IsHTMLTableRowElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableRowElementSetVAlign self val
  = ghcjs_dom_html_table_row_element_set_v_align
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_row_element_get_v_align ::
        JSRef HTMLTableRowElement -> IO JSString
 
htmlTableRowElementGetVAlign ::
                             (IsHTMLTableRowElement self, FromJSString result) =>
                               self -> IO result
htmlTableRowElementGetVAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_row_element_get_v_align
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
#else
module GHCJS.DOM.HTMLTableRowElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableRowElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableRowElement
#endif
