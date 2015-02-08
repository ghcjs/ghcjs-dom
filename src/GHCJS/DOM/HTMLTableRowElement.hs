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
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"insertCell\"]($2)"
        ghcjs_dom_html_table_row_element_insert_cell ::
        JSRef HTMLTableRowElement -> Int -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.insertCell Mozilla HTMLTableRowElement.insertCell documentation> 
htmlTableRowElementInsertCell ::
                              (MonadIO m, IsHTMLTableRowElement self) =>
                                self -> Int -> m (Maybe HTMLElement)
htmlTableRowElementInsertCell self index
  = liftIO
      ((ghcjs_dom_html_table_row_element_insert_cell
          (unHTMLTableRowElement (toHTMLTableRowElement self))
          index)
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteCell\"]($2)"
        ghcjs_dom_html_table_row_element_delete_cell ::
        JSRef HTMLTableRowElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.deleteCell Mozilla HTMLTableRowElement.deleteCell documentation> 
htmlTableRowElementDeleteCell ::
                              (MonadIO m, IsHTMLTableRowElement self) => self -> Int -> m ()
htmlTableRowElementDeleteCell self index
  = liftIO
      (ghcjs_dom_html_table_row_element_delete_cell
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         index)
 
foreign import javascript unsafe "$1[\"rowIndex\"]"
        ghcjs_dom_html_table_row_element_get_row_index ::
        JSRef HTMLTableRowElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.rowIndex Mozilla HTMLTableRowElement.rowIndex documentation> 
htmlTableRowElementGetRowIndex ::
                               (MonadIO m, IsHTMLTableRowElement self) => self -> m Int
htmlTableRowElementGetRowIndex self
  = liftIO
      (ghcjs_dom_html_table_row_element_get_row_index
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"sectionRowIndex\"]"
        ghcjs_dom_html_table_row_element_get_section_row_index ::
        JSRef HTMLTableRowElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.sectionRowIndex Mozilla HTMLTableRowElement.sectionRowIndex documentation> 
htmlTableRowElementGetSectionRowIndex ::
                                      (MonadIO m, IsHTMLTableRowElement self) => self -> m Int
htmlTableRowElementGetSectionRowIndex self
  = liftIO
      (ghcjs_dom_html_table_row_element_get_section_row_index
         (unHTMLTableRowElement (toHTMLTableRowElement self)))
 
foreign import javascript unsafe "$1[\"cells\"]"
        ghcjs_dom_html_table_row_element_get_cells ::
        JSRef HTMLTableRowElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.cells Mozilla HTMLTableRowElement.cells documentation> 
htmlTableRowElementGetCells ::
                            (MonadIO m, IsHTMLTableRowElement self) =>
                              self -> m (Maybe HTMLCollection)
htmlTableRowElementGetCells self
  = liftIO
      ((ghcjs_dom_html_table_row_element_get_cells
          (unHTMLTableRowElement (toHTMLTableRowElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_row_element_set_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
htmlTableRowElementSetAlign ::
                            (MonadIO m, IsHTMLTableRowElement self, ToJSString val) =>
                              self -> val -> m ()
htmlTableRowElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_table_row_element_set_align
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_row_element_get_align ::
        JSRef HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.align Mozilla HTMLTableRowElement.align documentation> 
htmlTableRowElementGetAlign ::
                            (MonadIO m, IsHTMLTableRowElement self, FromJSString result) =>
                              self -> m result
htmlTableRowElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_row_element_get_align
            (unHTMLTableRowElement (toHTMLTableRowElement self))))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_table_row_element_set_bg_color ::
        JSRef HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
htmlTableRowElementSetBgColor ::
                              (MonadIO m, IsHTMLTableRowElement self, ToJSString val) =>
                                self -> val -> m ()
htmlTableRowElementSetBgColor self val
  = liftIO
      (ghcjs_dom_html_table_row_element_set_bg_color
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_table_row_element_get_bg_color ::
        JSRef HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.bgColor Mozilla HTMLTableRowElement.bgColor documentation> 
htmlTableRowElementGetBgColor ::
                              (MonadIO m, IsHTMLTableRowElement self, FromJSString result) =>
                                self -> m result
htmlTableRowElementGetBgColor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_row_element_get_bg_color
            (unHTMLTableRowElement (toHTMLTableRowElement self))))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_row_element_set_ch ::
        JSRef HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
htmlTableRowElementSetCh ::
                         (MonadIO m, IsHTMLTableRowElement self, ToJSString val) =>
                           self -> val -> m ()
htmlTableRowElementSetCh self val
  = liftIO
      (ghcjs_dom_html_table_row_element_set_ch
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_row_element_get_ch ::
        JSRef HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.ch Mozilla HTMLTableRowElement.ch documentation> 
htmlTableRowElementGetCh ::
                         (MonadIO m, IsHTMLTableRowElement self, FromJSString result) =>
                           self -> m result
htmlTableRowElementGetCh self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_row_element_get_ch
            (unHTMLTableRowElement (toHTMLTableRowElement self))))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_row_element_set_ch_off ::
        JSRef HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
htmlTableRowElementSetChOff ::
                            (MonadIO m, IsHTMLTableRowElement self, ToJSString val) =>
                              self -> val -> m ()
htmlTableRowElementSetChOff self val
  = liftIO
      (ghcjs_dom_html_table_row_element_set_ch_off
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_row_element_get_ch_off ::
        JSRef HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.chOff Mozilla HTMLTableRowElement.chOff documentation> 
htmlTableRowElementGetChOff ::
                            (MonadIO m, IsHTMLTableRowElement self, FromJSString result) =>
                              self -> m result
htmlTableRowElementGetChOff self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_row_element_get_ch_off
            (unHTMLTableRowElement (toHTMLTableRowElement self))))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_row_element_set_v_align ::
        JSRef HTMLTableRowElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
htmlTableRowElementSetVAlign ::
                             (MonadIO m, IsHTMLTableRowElement self, ToJSString val) =>
                               self -> val -> m ()
htmlTableRowElementSetVAlign self val
  = liftIO
      (ghcjs_dom_html_table_row_element_set_v_align
         (unHTMLTableRowElement (toHTMLTableRowElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_row_element_get_v_align ::
        JSRef HTMLTableRowElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableRowElement.vAlign Mozilla HTMLTableRowElement.vAlign documentation> 
htmlTableRowElementGetVAlign ::
                             (MonadIO m, IsHTMLTableRowElement self, FromJSString result) =>
                               self -> m result
htmlTableRowElementGetVAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_row_element_get_v_align
            (unHTMLTableRowElement (toHTMLTableRowElement self))))
#else
module GHCJS.DOM.HTMLTableRowElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableRowElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableRowElement
#endif
