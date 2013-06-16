{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableSectionElement
       (webkit_dom_html_table_section_element_insert_row,
        htmlTableSectionElementInsertRow,
        webkit_dom_html_table_section_element_delete_row,
        htmlTableSectionElementDeleteRow,
        webkit_dom_html_table_section_element_set_align,
        htmlTableSectionElementSetAlign,
        webkit_dom_html_table_section_element_get_align,
        htmlTableSectionElementGetAlign,
        webkit_dom_html_table_section_element_set_ch,
        htmlTableSectionElementSetCh,
        webkit_dom_html_table_section_element_get_ch,
        htmlTableSectionElementGetCh,
        webkit_dom_html_table_section_element_set_ch_off,
        htmlTableSectionElementSetChOff,
        webkit_dom_html_table_section_element_get_ch_off,
        htmlTableSectionElementGetChOff,
        webkit_dom_html_table_section_element_set_v_align,
        htmlTableSectionElementSetVAlign,
        webkit_dom_html_table_section_element_get_v_align,
        htmlTableSectionElementGetVAlign,
        webkit_dom_html_table_section_element_get_rows,
        htmlTableSectionElementGetRows)
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
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        webkit_dom_html_table_section_element_insert_row ::
        JSRef HTMLTableSectionElement -> Int -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_section_element_insert_row ::
                                                   JSRef HTMLTableSectionElement ->
                                                     Int -> IO (JSRef HTMLElement)
webkit_dom_html_table_section_element_insert_row = undefined
#endif
 
htmlTableSectionElementInsertRow ::
                                 (HTMLTableSectionElementClass self) =>
                                   self -> Int -> IO (Maybe HTMLElement)
htmlTableSectionElementInsertRow self index
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_section_element_insert_row
         (unHTMLTableSectionElement (toHTMLTableSectionElement self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        webkit_dom_html_table_section_element_delete_row ::
        JSRef HTMLTableSectionElement -> Int -> IO ()
#else 
webkit_dom_html_table_section_element_delete_row ::
                                                   JSRef HTMLTableSectionElement -> Int -> IO ()
webkit_dom_html_table_section_element_delete_row = undefined
#endif
 
htmlTableSectionElementDeleteRow ::
                                 (HTMLTableSectionElementClass self) => self -> Int -> IO ()
htmlTableSectionElementDeleteRow self index
  = webkit_dom_html_table_section_element_delete_row
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_table_section_element_set_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
webkit_dom_html_table_section_element_set_align ::
                                                  JSRef HTMLTableSectionElement -> JSString -> IO ()
webkit_dom_html_table_section_element_set_align = undefined
#endif
 
htmlTableSectionElementSetAlign ::
                                (HTMLTableSectionElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetAlign self val
  = webkit_dom_html_table_section_element_set_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_section_element_get_align ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
webkit_dom_html_table_section_element_get_align ::
                                                  JSRef HTMLTableSectionElement -> IO JSString
webkit_dom_html_table_section_element_get_align = undefined
#endif
 
htmlTableSectionElementGetAlign ::
                                (HTMLTableSectionElementClass self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_section_element_get_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        webkit_dom_html_table_section_element_set_ch ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
webkit_dom_html_table_section_element_set_ch ::
                                               JSRef HTMLTableSectionElement -> JSString -> IO ()
webkit_dom_html_table_section_element_set_ch = undefined
#endif
 
htmlTableSectionElementSetCh ::
                             (HTMLTableSectionElementClass self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableSectionElementSetCh self val
  = webkit_dom_html_table_section_element_set_ch
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"ch\"]"
        webkit_dom_html_table_section_element_get_ch ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
webkit_dom_html_table_section_element_get_ch ::
                                               JSRef HTMLTableSectionElement -> IO JSString
webkit_dom_html_table_section_element_get_ch = undefined
#endif
 
htmlTableSectionElementGetCh ::
                             (HTMLTableSectionElementClass self, FromJSString result) =>
                               self -> IO result
htmlTableSectionElementGetCh self
  = fromJSString <$>
      (webkit_dom_html_table_section_element_get_ch
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        webkit_dom_html_table_section_element_set_ch_off ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
webkit_dom_html_table_section_element_set_ch_off ::
                                                   JSRef HTMLTableSectionElement ->
                                                     JSString -> IO ()
webkit_dom_html_table_section_element_set_ch_off = undefined
#endif
 
htmlTableSectionElementSetChOff ::
                                (HTMLTableSectionElementClass self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetChOff self val
  = webkit_dom_html_table_section_element_set_ch_off
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"chOff\"]"
        webkit_dom_html_table_section_element_get_ch_off ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
webkit_dom_html_table_section_element_get_ch_off ::
                                                   JSRef HTMLTableSectionElement -> IO JSString
webkit_dom_html_table_section_element_get_ch_off = undefined
#endif
 
htmlTableSectionElementGetChOff ::
                                (HTMLTableSectionElementClass self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetChOff self
  = fromJSString <$>
      (webkit_dom_html_table_section_element_get_ch_off
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        webkit_dom_html_table_section_element_set_v_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
webkit_dom_html_table_section_element_set_v_align ::
                                                    JSRef HTMLTableSectionElement ->
                                                      JSString -> IO ()
webkit_dom_html_table_section_element_set_v_align = undefined
#endif
 
htmlTableSectionElementSetVAlign ::
                                 (HTMLTableSectionElementClass self, ToJSString val) =>
                                   self -> val -> IO ()
htmlTableSectionElementSetVAlign self val
  = webkit_dom_html_table_section_element_set_v_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vAlign\"]"
        webkit_dom_html_table_section_element_get_v_align ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
webkit_dom_html_table_section_element_get_v_align ::
                                                    JSRef HTMLTableSectionElement -> IO JSString
webkit_dom_html_table_section_element_get_v_align = undefined
#endif
 
htmlTableSectionElementGetVAlign ::
                                 (HTMLTableSectionElementClass self, FromJSString result) =>
                                   self -> IO result
htmlTableSectionElementGetVAlign self
  = fromJSString <$>
      (webkit_dom_html_table_section_element_get_v_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"]"
        webkit_dom_html_table_section_element_get_rows ::
        JSRef HTMLTableSectionElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_table_section_element_get_rows ::
                                                 JSRef HTMLTableSectionElement ->
                                                   IO (JSRef HTMLCollection)
webkit_dom_html_table_section_element_get_rows = undefined
#endif
 
htmlTableSectionElementGetRows ::
                               (HTMLTableSectionElementClass self) =>
                                 self -> IO (Maybe HTMLCollection)
htmlTableSectionElementGetRows self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_table_section_element_get_rows
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))