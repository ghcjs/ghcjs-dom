{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableRowElement
       (webkit_dom_html_table_row_element_insert_cell,
        htmlTableRowElementInsertCell,
        webkit_dom_html_table_row_element_delete_cell,
        htmlTableRowElementDeleteCell,
        webkit_dom_html_table_row_element_get_row_index,
        htmlTableRowElementGetRowIndex,
        webkit_dom_html_table_row_element_get_section_row_index,
        htmlTableRowElementGetSectionRowIndex,
        webkit_dom_html_table_row_element_get_cells,
        htmlTableRowElementGetCells,
        webkit_dom_html_table_row_element_set_align,
        htmlTableRowElementSetAlign,
        webkit_dom_html_table_row_element_get_align,
        htmlTableRowElementGetAlign,
        webkit_dom_html_table_row_element_set_bg_color,
        htmlTableRowElementSetBgColor,
        webkit_dom_html_table_row_element_get_bg_color,
        htmlTableRowElementGetBgColor,
        webkit_dom_html_table_row_element_set_ch, htmlTableRowElementSetCh,
        webkit_dom_html_table_row_element_get_ch, htmlTableRowElementGetCh,
        webkit_dom_html_table_row_element_set_ch_off,
        htmlTableRowElementSetChOff,
        webkit_dom_html_table_row_element_get_ch_off,
        htmlTableRowElementGetChOff,
        webkit_dom_html_table_row_element_set_v_align,
        htmlTableRowElementSetVAlign,
        webkit_dom_html_table_row_element_get_v_align,
        htmlTableRowElementGetVAlign)
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
foreign import javascript unsafe "$1[\"insertCell\"]($2)"
        webkit_dom_html_table_row_element_insert_cell ::
        JSRef HTMLTableRowElement -> Int -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_row_element_insert_cell ::
                                                JSRef HTMLTableRowElement ->
                                                  Int -> IO (JSRef HTMLElement)
webkit_dom_html_table_row_element_insert_cell = undefined
#endif
 
htmlTableRowElementInsertCell ::
                              (HTMLTableRowElementClass self) =>
                                self -> Int -> IO (Maybe HTMLElement)
htmlTableRowElementInsertCell self index
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_row_element_insert_cell
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteCell\"]($2)"
        webkit_dom_html_table_row_element_delete_cell ::
        JSRef HTMLTableRowElement -> Int -> IO ()
#else 
webkit_dom_html_table_row_element_delete_cell ::
                                                JSRef HTMLTableRowElement -> Int -> IO ()
webkit_dom_html_table_row_element_delete_cell = undefined
#endif
 
htmlTableRowElementDeleteCell ::
                              (HTMLTableRowElementClass self) => self -> Int -> IO ()
htmlTableRowElementDeleteCell self index
  = webkit_dom_html_table_row_element_delete_cell
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rowIndex\"]"
        webkit_dom_html_table_row_element_get_row_index ::
        JSRef HTMLTableRowElement -> IO Int
#else 
webkit_dom_html_table_row_element_get_row_index ::
                                                  JSRef HTMLTableRowElement -> IO Int
webkit_dom_html_table_row_element_get_row_index = undefined
#endif
 
htmlTableRowElementGetRowIndex ::
                               (HTMLTableRowElementClass self) => self -> IO Int
htmlTableRowElementGetRowIndex self
  = webkit_dom_html_table_row_element_get_row_index
      (unHTMLTableRowElement (toHTMLTableRowElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"sectionRowIndex\"]"
        webkit_dom_html_table_row_element_get_section_row_index ::
        JSRef HTMLTableRowElement -> IO Int
#else 
webkit_dom_html_table_row_element_get_section_row_index ::
                                                          JSRef HTMLTableRowElement -> IO Int
webkit_dom_html_table_row_element_get_section_row_index = undefined
#endif
 
htmlTableRowElementGetSectionRowIndex ::
                                      (HTMLTableRowElementClass self) => self -> IO Int
htmlTableRowElementGetSectionRowIndex self
  = webkit_dom_html_table_row_element_get_section_row_index
      (unHTMLTableRowElement (toHTMLTableRowElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cells\"]"
        webkit_dom_html_table_row_element_get_cells ::
        JSRef HTMLTableRowElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_table_row_element_get_cells ::
                                              JSRef HTMLTableRowElement -> IO (JSRef HTMLCollection)
webkit_dom_html_table_row_element_get_cells = undefined
#endif
 
htmlTableRowElementGetCells ::
                            (HTMLTableRowElementClass self) =>
                              self -> IO (Maybe HTMLCollection)
htmlTableRowElementGetCells self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_table_row_element_get_cells
         (unHTMLTableRowElement (toHTMLTableRowElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_table_row_element_set_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
#else 
webkit_dom_html_table_row_element_set_align ::
                                              JSRef HTMLTableRowElement -> JSString -> IO ()
webkit_dom_html_table_row_element_set_align = undefined
#endif
 
htmlTableRowElementSetAlign ::
                            (HTMLTableRowElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableRowElementSetAlign self val
  = webkit_dom_html_table_row_element_set_align
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_row_element_get_align ::
        JSRef HTMLTableRowElement -> IO JSString
#else 
webkit_dom_html_table_row_element_get_align ::
                                              JSRef HTMLTableRowElement -> IO JSString
webkit_dom_html_table_row_element_get_align = undefined
#endif
 
htmlTableRowElementGetAlign ::
                            (HTMLTableRowElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableRowElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_row_element_get_align
         (unHTMLTableRowElement (toHTMLTableRowElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_table_row_element_set_bg_color ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
#else 
webkit_dom_html_table_row_element_set_bg_color ::
                                                 JSRef HTMLTableRowElement -> JSString -> IO ()
webkit_dom_html_table_row_element_set_bg_color = undefined
#endif
 
htmlTableRowElementSetBgColor ::
                              (HTMLTableRowElementClass self, ToJSString val) =>
                                self -> val -> IO ()
htmlTableRowElementSetBgColor self val
  = webkit_dom_html_table_row_element_set_bg_color
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_table_row_element_get_bg_color ::
        JSRef HTMLTableRowElement -> IO JSString
#else 
webkit_dom_html_table_row_element_get_bg_color ::
                                                 JSRef HTMLTableRowElement -> IO JSString
webkit_dom_html_table_row_element_get_bg_color = undefined
#endif
 
htmlTableRowElementGetBgColor ::
                              (HTMLTableRowElementClass self, FromJSString result) =>
                                self -> IO result
htmlTableRowElementGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_table_row_element_get_bg_color
         (unHTMLTableRowElement (toHTMLTableRowElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        webkit_dom_html_table_row_element_set_ch ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
#else 
webkit_dom_html_table_row_element_set_ch ::
                                           JSRef HTMLTableRowElement -> JSString -> IO ()
webkit_dom_html_table_row_element_set_ch = undefined
#endif
 
htmlTableRowElementSetCh ::
                         (HTMLTableRowElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableRowElementSetCh self val
  = webkit_dom_html_table_row_element_set_ch
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"]"
        webkit_dom_html_table_row_element_get_ch ::
        JSRef HTMLTableRowElement -> IO JSString
#else 
webkit_dom_html_table_row_element_get_ch ::
                                           JSRef HTMLTableRowElement -> IO JSString
webkit_dom_html_table_row_element_get_ch = undefined
#endif
 
htmlTableRowElementGetCh ::
                         (HTMLTableRowElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableRowElementGetCh self
  = fromJSString <$>
      (webkit_dom_html_table_row_element_get_ch
         (unHTMLTableRowElement (toHTMLTableRowElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        webkit_dom_html_table_row_element_set_ch_off ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
#else 
webkit_dom_html_table_row_element_set_ch_off ::
                                               JSRef HTMLTableRowElement -> JSString -> IO ()
webkit_dom_html_table_row_element_set_ch_off = undefined
#endif
 
htmlTableRowElementSetChOff ::
                            (HTMLTableRowElementClass self, ToJSString val) =>
                              self -> val -> IO ()
htmlTableRowElementSetChOff self val
  = webkit_dom_html_table_row_element_set_ch_off
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"]"
        webkit_dom_html_table_row_element_get_ch_off ::
        JSRef HTMLTableRowElement -> IO JSString
#else 
webkit_dom_html_table_row_element_get_ch_off ::
                                               JSRef HTMLTableRowElement -> IO JSString
webkit_dom_html_table_row_element_get_ch_off = undefined
#endif
 
htmlTableRowElementGetChOff ::
                            (HTMLTableRowElementClass self, FromJSString result) =>
                              self -> IO result
htmlTableRowElementGetChOff self
  = fromJSString <$>
      (webkit_dom_html_table_row_element_get_ch_off
         (unHTMLTableRowElement (toHTMLTableRowElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        webkit_dom_html_table_row_element_set_v_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()
#else 
webkit_dom_html_table_row_element_set_v_align ::
                                                JSRef HTMLTableRowElement -> JSString -> IO ()
webkit_dom_html_table_row_element_set_v_align = undefined
#endif
 
htmlTableRowElementSetVAlign ::
                             (HTMLTableRowElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableRowElementSetVAlign self val
  = webkit_dom_html_table_row_element_set_v_align
      (unHTMLTableRowElement (toHTMLTableRowElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"]"
        webkit_dom_html_table_row_element_get_v_align ::
        JSRef HTMLTableRowElement -> IO JSString
#else 
webkit_dom_html_table_row_element_get_v_align ::
                                                JSRef HTMLTableRowElement -> IO JSString
webkit_dom_html_table_row_element_get_v_align = undefined
#endif
 
htmlTableRowElementGetVAlign ::
                             (HTMLTableRowElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableRowElementGetVAlign self
  = fromJSString <$>
      (webkit_dom_html_table_row_element_get_v_align
         (unHTMLTableRowElement (toHTMLTableRowElement self)))