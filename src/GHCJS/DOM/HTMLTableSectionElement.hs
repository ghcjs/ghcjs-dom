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

 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        ghcjs_dom_html_table_section_element_insert_row ::
        JSRef HTMLTableSectionElement -> Int -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.insertRow Mozilla HTMLTableSectionElement.insertRow documentation> 
htmlTableSectionElementInsertRow ::
                                 (IsHTMLTableSectionElement self) =>
                                   self -> Int -> IO (Maybe HTMLElement)
htmlTableSectionElementInsertRow self index
  = (ghcjs_dom_html_table_section_element_insert_row
       (unHTMLTableSectionElement (toHTMLTableSectionElement self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        ghcjs_dom_html_table_section_element_delete_row ::
        JSRef HTMLTableSectionElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.deleteRow Mozilla HTMLTableSectionElement.deleteRow documentation> 
htmlTableSectionElementDeleteRow ::
                                 (IsHTMLTableSectionElement self) => self -> Int -> IO ()
htmlTableSectionElementDeleteRow self index
  = ghcjs_dom_html_table_section_element_delete_row
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      index
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_section_element_set_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
htmlTableSectionElementSetAlign ::
                                (IsHTMLTableSectionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetAlign self val
  = ghcjs_dom_html_table_section_element_set_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_section_element_get_align ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.align Mozilla HTMLTableSectionElement.align documentation> 
htmlTableSectionElementGetAlign ::
                                (IsHTMLTableSectionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_section_element_set_ch ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
htmlTableSectionElementSetCh ::
                             (IsHTMLTableSectionElement self, ToJSString val) =>
                               self -> val -> IO ()
htmlTableSectionElementSetCh self val
  = ghcjs_dom_html_table_section_element_set_ch
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_section_element_get_ch ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.ch Mozilla HTMLTableSectionElement.ch documentation> 
htmlTableSectionElementGetCh ::
                             (IsHTMLTableSectionElement self, FromJSString result) =>
                               self -> IO result
htmlTableSectionElementGetCh self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_ch
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_section_element_set_ch_off ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
htmlTableSectionElementSetChOff ::
                                (IsHTMLTableSectionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableSectionElementSetChOff self val
  = ghcjs_dom_html_table_section_element_set_ch_off
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_section_element_get_ch_off ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.chOff Mozilla HTMLTableSectionElement.chOff documentation> 
htmlTableSectionElementGetChOff ::
                                (IsHTMLTableSectionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableSectionElementGetChOff self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_ch_off
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_section_element_set_v_align ::
        JSRef HTMLTableSectionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
htmlTableSectionElementSetVAlign ::
                                 (IsHTMLTableSectionElement self, ToJSString val) =>
                                   self -> val -> IO ()
htmlTableSectionElementSetVAlign self val
  = ghcjs_dom_html_table_section_element_set_v_align
      (unHTMLTableSectionElement (toHTMLTableSectionElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_section_element_get_v_align ::
        JSRef HTMLTableSectionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.vAlign Mozilla HTMLTableSectionElement.vAlign documentation> 
htmlTableSectionElementGetVAlign ::
                                 (IsHTMLTableSectionElement self, FromJSString result) =>
                                   self -> IO result
htmlTableSectionElementGetVAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_section_element_get_v_align
         (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_table_section_element_get_rows ::
        JSRef HTMLTableSectionElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableSectionElement.rows Mozilla HTMLTableSectionElement.rows documentation> 
htmlTableSectionElementGetRows ::
                               (IsHTMLTableSectionElement self) =>
                                 self -> IO (Maybe HTMLCollection)
htmlTableSectionElementGetRows self
  = (ghcjs_dom_html_table_section_element_get_rows
       (unHTMLTableSectionElement (toHTMLTableSectionElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.HTMLTableSectionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableSectionElement
#endif
