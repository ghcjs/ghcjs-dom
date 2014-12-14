{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableSectionElement
       (ghcjs_dom_html_table_section_element_insert_row,
        htmlTableSectionElementInsertRow,
        ghcjs_dom_html_table_section_element_delete_row,
        htmlTableSectionElementDeleteRow,
        ghcjs_dom_html_table_section_element_set_align,
        htmlTableSectionElementSetAlign,
        ghcjs_dom_html_table_section_element_get_align,
        htmlTableSectionElementGetAlign,
        ghcjs_dom_html_table_section_element_set_ch,
        htmlTableSectionElementSetCh,
        ghcjs_dom_html_table_section_element_get_ch,
        htmlTableSectionElementGetCh,
        ghcjs_dom_html_table_section_element_set_ch_off,
        htmlTableSectionElementSetChOff,
        ghcjs_dom_html_table_section_element_get_ch_off,
        htmlTableSectionElementGetChOff,
        ghcjs_dom_html_table_section_element_set_v_align,
        htmlTableSectionElementSetVAlign,
        ghcjs_dom_html_table_section_element_get_v_align,
        htmlTableSectionElementGetVAlign,
        ghcjs_dom_html_table_section_element_get_rows,
        htmlTableSectionElementGetRows, HTMLTableSectionElement,
        IsHTMLTableSectionElement, castToHTMLTableSectionElement,
        gTypeHTMLTableSectionElement, toHTMLTableSectionElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        ghcjs_dom_html_table_section_element_insert_row ::
        JSRef HTMLTableSectionElement -> Int -> IO (JSRef HTMLElement)
#else 
ghcjs_dom_html_table_section_element_insert_row ::
                                                  JSRef HTMLTableSectionElement ->
                                                    Int -> IO (JSRef HTMLElement)
ghcjs_dom_html_table_section_element_insert_row = undefined
#endif
 
htmlTableSectionElementInsertRow ::
                                 (IsHTMLTableSectionElement self) =>
                                   self -> Int -> IO (Maybe HTMLElement)
htmlTableSectionElementInsertRow self index
  = fmap HTMLElement . maybeJSNull <$>
      (ghcjs_dom_html_table_section_element_insert_row
         (unHTMLTableSectionElement (toHTMLTableSectionElement self))
         index)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        ghcjs_dom_html_table_section_element_delete_row ::
        JSRef HTMLTableSectionElement -> Int -> IO ()
#else 
ghcjs_dom_html_table_section_element_delete_row ::
                                                  JSRef HTMLTableSectionElement -> Int -> IO ()
ghcjs_dom_html_table_section_element_delete_row = undefined
#endif
 
htmlTableSectionElementDeleteRow ::
                                 (IsHTMLTableSectionElement self) => self -> Int -> IO ()
htmlTableSectionElementDeleteRow self index
  = ghcjs_dom_html_table_section_element_delete_row
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      index


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_section_element_set_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_section_element_set_align ::
                                                 JSRef HTMLTableSectionElement -> JSString -> IO ()
ghcjs_dom_html_table_section_element_set_align = undefined
#endif
 
htmlTableSectionElementSetAlign ::
                                (IsHTMLTableSectionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetAlign self val
  = ghcjs_dom_html_table_section_element_set_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_section_element_get_align ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
ghcjs_dom_html_table_section_element_get_align ::
                                                 JSRef HTMLTableSectionElement -> IO JSString
ghcjs_dom_html_table_section_element_get_align = undefined
#endif
 
htmlTableSectionElementGetAlign ::
                                (IsHTMLTableSectionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_section_element_set_ch ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_section_element_set_ch ::
                                              JSRef HTMLTableSectionElement -> JSString -> IO ()
ghcjs_dom_html_table_section_element_set_ch = undefined
#endif
 
htmlTableSectionElementSetCh ::
                             (IsHTMLTableSectionElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableSectionElementSetCh self val
  = ghcjs_dom_html_table_section_element_set_ch
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_section_element_get_ch ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
ghcjs_dom_html_table_section_element_get_ch ::
                                              JSRef HTMLTableSectionElement -> IO JSString
ghcjs_dom_html_table_section_element_get_ch = undefined
#endif
 
htmlTableSectionElementGetCh ::
                             (IsHTMLTableSectionElement self, FromJSString result) =>
                               self -> IO result
htmlTableSectionElementGetCh self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_ch
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_section_element_set_ch_off ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_section_element_set_ch_off ::
                                                  JSRef HTMLTableSectionElement -> JSString -> IO ()
ghcjs_dom_html_table_section_element_set_ch_off = undefined
#endif
 
htmlTableSectionElementSetChOff ::
                                (IsHTMLTableSectionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetChOff self val
  = ghcjs_dom_html_table_section_element_set_ch_off
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_section_element_get_ch_off ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
ghcjs_dom_html_table_section_element_get_ch_off ::
                                                  JSRef HTMLTableSectionElement -> IO JSString
ghcjs_dom_html_table_section_element_get_ch_off = undefined
#endif
 
htmlTableSectionElementGetChOff ::
                                (IsHTMLTableSectionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetChOff self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_ch_off
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_section_element_set_v_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_section_element_set_v_align ::
                                                   JSRef HTMLTableSectionElement ->
                                                     JSString -> IO ()
ghcjs_dom_html_table_section_element_set_v_align = undefined
#endif
 
htmlTableSectionElementSetVAlign ::
                                 (IsHTMLTableSectionElement self, ToJSString val) =>
                                   self -> val -> IO ()
htmlTableSectionElementSetVAlign self val
  = ghcjs_dom_html_table_section_element_set_v_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_section_element_get_v_align ::
        JSRef HTMLTableSectionElement -> IO JSString
#else 
ghcjs_dom_html_table_section_element_get_v_align ::
                                                   JSRef HTMLTableSectionElement -> IO JSString
ghcjs_dom_html_table_section_element_get_v_align = undefined
#endif
 
htmlTableSectionElementGetVAlign ::
                                 (IsHTMLTableSectionElement self, FromJSString result) =>
                                   self -> IO result
htmlTableSectionElementGetVAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_v_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))


#ifdef ghcjs_HOST_OS 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_table_section_element_get_rows ::
        JSRef HTMLTableSectionElement -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_table_section_element_get_rows ::
                                                JSRef HTMLTableSectionElement ->
                                                  IO (JSRef HTMLCollection)
ghcjs_dom_html_table_section_element_get_rows = undefined
#endif
 
htmlTableSectionElementGetRows ::
                               (IsHTMLTableSectionElement self) =>
                                 self -> IO (Maybe HTMLCollection)
htmlTableSectionElementGetRows self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_table_section_element_get_rows
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
#else
module GHCJS.DOM.HTMLTableSectionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
#endif
