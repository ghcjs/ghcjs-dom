{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableElement
       (ghcjs_dom_html_table_element_create_t_head,
        htmlTableElementCreateTHead,
        ghcjs_dom_html_table_element_delete_t_head,
        htmlTableElementDeleteTHead,
        ghcjs_dom_html_table_element_create_t_foot,
        htmlTableElementCreateTFoot,
        ghcjs_dom_html_table_element_delete_t_foot,
        htmlTableElementDeleteTFoot,
        ghcjs_dom_html_table_element_create_t_body,
        htmlTableElementCreateTBody,
        ghcjs_dom_html_table_element_create_caption,
        htmlTableElementCreateCaption,
        ghcjs_dom_html_table_element_delete_caption,
        htmlTableElementDeleteCaption,
        ghcjs_dom_html_table_element_insert_row, htmlTableElementInsertRow,
        ghcjs_dom_html_table_element_delete_row, htmlTableElementDeleteRow,
        ghcjs_dom_html_table_element_set_caption,
        htmlTableElementSetCaption,
        ghcjs_dom_html_table_element_get_caption,
        htmlTableElementGetCaption,
        ghcjs_dom_html_table_element_set_t_head, htmlTableElementSetTHead,
        ghcjs_dom_html_table_element_get_t_head, htmlTableElementGetTHead,
        ghcjs_dom_html_table_element_set_t_foot, htmlTableElementSetTFoot,
        ghcjs_dom_html_table_element_get_t_foot, htmlTableElementGetTFoot,
        ghcjs_dom_html_table_element_get_rows, htmlTableElementGetRows,
        ghcjs_dom_html_table_element_get_t_bodies,
        htmlTableElementGetTBodies, ghcjs_dom_html_table_element_set_align,
        htmlTableElementSetAlign, ghcjs_dom_html_table_element_get_align,
        htmlTableElementGetAlign,
        ghcjs_dom_html_table_element_set_bg_color,
        htmlTableElementSetBgColor,
        ghcjs_dom_html_table_element_get_bg_color,
        htmlTableElementGetBgColor,
        ghcjs_dom_html_table_element_set_border, htmlTableElementSetBorder,
        ghcjs_dom_html_table_element_get_border, htmlTableElementGetBorder,
        ghcjs_dom_html_table_element_set_cell_padding,
        htmlTableElementSetCellPadding,
        ghcjs_dom_html_table_element_get_cell_padding,
        htmlTableElementGetCellPadding,
        ghcjs_dom_html_table_element_set_cell_spacing,
        htmlTableElementSetCellSpacing,
        ghcjs_dom_html_table_element_get_cell_spacing,
        htmlTableElementGetCellSpacing,
        ghcjs_dom_html_table_element_set_frame, htmlTableElementSetFrame,
        ghcjs_dom_html_table_element_get_frame, htmlTableElementGetFrame,
        ghcjs_dom_html_table_element_set_rules, htmlTableElementSetRules,
        ghcjs_dom_html_table_element_get_rules, htmlTableElementGetRules,
        ghcjs_dom_html_table_element_set_summary,
        htmlTableElementSetSummary,
        ghcjs_dom_html_table_element_get_summary,
        htmlTableElementGetSummary, ghcjs_dom_html_table_element_set_width,
        htmlTableElementSetWidth, ghcjs_dom_html_table_element_get_width,
        htmlTableElementGetWidth, HTMLTableElement, IsHTMLTableElement,
        castToHTMLTableElement, gTypeHTMLTableElement, toHTMLTableElement)
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

 
foreign import javascript unsafe "$1[\"createTHead\"]()"
        ghcjs_dom_html_table_element_create_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTHead Mozilla HTMLTableElement.createTHead documentation> 
htmlTableElementCreateTHead ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTHead self
  = (ghcjs_dom_html_table_element_create_t_head
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        ghcjs_dom_html_table_element_delete_t_head ::
        JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTHead Mozilla HTMLTableElement.deleteTHead documentation> 
htmlTableElementDeleteTHead ::
                            (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteTHead self
  = ghcjs_dom_html_table_element_delete_t_head
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        ghcjs_dom_html_table_element_create_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTFoot Mozilla HTMLTableElement.createTFoot documentation> 
htmlTableElementCreateTFoot ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTFoot self
  = (ghcjs_dom_html_table_element_create_t_foot
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        ghcjs_dom_html_table_element_delete_t_foot ::
        JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteTFoot Mozilla HTMLTableElement.deleteTFoot documentation> 
htmlTableElementDeleteTFoot ::
                            (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteTFoot self
  = ghcjs_dom_html_table_element_delete_t_foot
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        ghcjs_dom_html_table_element_create_t_body ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createTBody Mozilla HTMLTableElement.createTBody documentation> 
htmlTableElementCreateTBody ::
                            (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTBody self
  = (ghcjs_dom_html_table_element_create_t_body
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        ghcjs_dom_html_table_element_create_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.createCaption Mozilla HTMLTableElement.createCaption documentation> 
htmlTableElementCreateCaption ::
                              (IsHTMLTableElement self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateCaption self
  = (ghcjs_dom_html_table_element_create_caption
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        ghcjs_dom_html_table_element_delete_caption ::
        JSRef HTMLTableElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteCaption Mozilla HTMLTableElement.deleteCaption documentation> 
htmlTableElementDeleteCaption ::
                              (IsHTMLTableElement self) => self -> IO ()
htmlTableElementDeleteCaption self
  = ghcjs_dom_html_table_element_delete_caption
      (unHTMLTableElement (toHTMLTableElement self))
 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        ghcjs_dom_html_table_element_insert_row ::
        JSRef HTMLTableElement -> Int -> IO (JSRef HTMLElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.insertRow Mozilla HTMLTableElement.insertRow documentation> 
htmlTableElementInsertRow ::
                          (IsHTMLTableElement self) => self -> Int -> IO (Maybe HTMLElement)
htmlTableElementInsertRow self index
  = (ghcjs_dom_html_table_element_insert_row
       (unHTMLTableElement (toHTMLTableElement self))
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        ghcjs_dom_html_table_element_delete_row ::
        JSRef HTMLTableElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.deleteRow Mozilla HTMLTableElement.deleteRow documentation> 
htmlTableElementDeleteRow ::
                          (IsHTMLTableElement self) => self -> Int -> IO ()
htmlTableElementDeleteRow self index
  = ghcjs_dom_html_table_element_delete_row
      (unHTMLTableElement (toHTMLTableElement self))
      index
 
foreign import javascript unsafe "$1[\"caption\"] = $2;"
        ghcjs_dom_html_table_element_set_caption ::
        JSRef HTMLTableElement -> JSRef HTMLTableCaptionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
htmlTableElementSetCaption ::
                           (IsHTMLTableElement self, IsHTMLTableCaptionElement val) =>
                             self -> Maybe val -> IO ()
htmlTableElementSetCaption self val
  = ghcjs_dom_html_table_element_set_caption
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableCaptionElement . toHTMLTableCaptionElement)
         val)
 
foreign import javascript unsafe "$1[\"caption\"]"
        ghcjs_dom_html_table_element_get_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableCaptionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.caption Mozilla HTMLTableElement.caption documentation> 
htmlTableElementGetCaption ::
                           (IsHTMLTableElement self) =>
                             self -> IO (Maybe HTMLTableCaptionElement)
htmlTableElementGetCaption self
  = (ghcjs_dom_html_table_element_get_caption
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"tHead\"] = $2;"
        ghcjs_dom_html_table_element_set_t_head ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
htmlTableElementSetTHead ::
                         (IsHTMLTableElement self, IsHTMLTableSectionElement val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTHead self val
  = ghcjs_dom_html_table_element_set_t_head
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)
 
foreign import javascript unsafe "$1[\"tHead\"]"
        ghcjs_dom_html_table_element_get_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tHead Mozilla HTMLTableElement.tHead documentation> 
htmlTableElementGetTHead ::
                         (IsHTMLTableElement self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTHead self
  = (ghcjs_dom_html_table_element_get_t_head
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"tFoot\"] = $2;"
        ghcjs_dom_html_table_element_set_t_foot ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
htmlTableElementSetTFoot ::
                         (IsHTMLTableElement self, IsHTMLTableSectionElement val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTFoot self val
  = ghcjs_dom_html_table_element_set_t_foot
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)
 
foreign import javascript unsafe "$1[\"tFoot\"]"
        ghcjs_dom_html_table_element_get_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tFoot Mozilla HTMLTableElement.tFoot documentation> 
htmlTableElementGetTFoot ::
                         (IsHTMLTableElement self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTFoot self
  = (ghcjs_dom_html_table_element_get_t_foot
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"rows\"]"
        ghcjs_dom_html_table_element_get_rows ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rows Mozilla HTMLTableElement.rows documentation> 
htmlTableElementGetRows ::
                        (IsHTMLTableElement self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetRows self
  = (ghcjs_dom_html_table_element_get_rows
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"tBodies\"]"
        ghcjs_dom_html_table_element_get_t_bodies ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.tBodies Mozilla HTMLTableElement.tBodies documentation> 
htmlTableElementGetTBodies ::
                           (IsHTMLTableElement self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetTBodies self
  = (ghcjs_dom_html_table_element_get_t_bodies
       (unHTMLTableElement (toHTMLTableElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_element_set_align ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
htmlTableElementSetAlign ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetAlign self val
  = ghcjs_dom_html_table_element_set_align
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_element_get_align ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.align Mozilla HTMLTableElement.align documentation> 
htmlTableElementGetAlign ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_align
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_table_element_set_bg_color ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
htmlTableElementSetBgColor ::
                           (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetBgColor self val
  = ghcjs_dom_html_table_element_set_bg_color
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_table_element_get_bg_color ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.bgColor Mozilla HTMLTableElement.bgColor documentation> 
htmlTableElementGetBgColor ::
                           (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_bg_color
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        ghcjs_dom_html_table_element_set_border ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
htmlTableElementSetBorder ::
                          (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetBorder self val
  = ghcjs_dom_html_table_element_set_border
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"border\"]"
        ghcjs_dom_html_table_element_get_border ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.border Mozilla HTMLTableElement.border documentation> 
htmlTableElementGetBorder ::
                          (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetBorder self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_border
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        ghcjs_dom_html_table_element_set_cell_padding ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
htmlTableElementSetCellPadding ::
                               (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetCellPadding self val
  = ghcjs_dom_html_table_element_set_cell_padding
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        ghcjs_dom_html_table_element_get_cell_padding ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellPadding Mozilla HTMLTableElement.cellPadding documentation> 
htmlTableElementGetCellPadding ::
                               (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetCellPadding self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_cell_padding
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        ghcjs_dom_html_table_element_set_cell_spacing ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
htmlTableElementSetCellSpacing ::
                               (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetCellSpacing self val
  = ghcjs_dom_html_table_element_set_cell_spacing
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        ghcjs_dom_html_table_element_get_cell_spacing ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.cellSpacing Mozilla HTMLTableElement.cellSpacing documentation> 
htmlTableElementGetCellSpacing ::
                               (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetCellSpacing self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_cell_spacing
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"frame\"] = $2;"
        ghcjs_dom_html_table_element_set_frame ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
htmlTableElementSetFrame ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetFrame self val
  = ghcjs_dom_html_table_element_set_frame
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"frame\"]"
        ghcjs_dom_html_table_element_get_frame ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.frame Mozilla HTMLTableElement.frame documentation> 
htmlTableElementGetFrame ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetFrame self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_frame
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"rules\"] = $2;"
        ghcjs_dom_html_table_element_set_rules ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
htmlTableElementSetRules ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetRules self val
  = ghcjs_dom_html_table_element_set_rules
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"rules\"]"
        ghcjs_dom_html_table_element_get_rules ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.rules Mozilla HTMLTableElement.rules documentation> 
htmlTableElementGetRules ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetRules self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_rules
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        ghcjs_dom_html_table_element_set_summary ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
htmlTableElementSetSummary ::
                           (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetSummary self val
  = ghcjs_dom_html_table_element_set_summary
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"summary\"]"
        ghcjs_dom_html_table_element_get_summary ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.summary Mozilla HTMLTableElement.summary documentation> 
htmlTableElementGetSummary ::
                           (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetSummary self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_summary
         (unHTMLTableElement (toHTMLTableElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_table_element_set_width ::
        JSRef HTMLTableElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
htmlTableElementSetWidth ::
                         (IsHTMLTableElement self, ToJSString val) => self -> val -> IO ()
htmlTableElementSetWidth self val
  = ghcjs_dom_html_table_element_set_width
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_table_element_get_width ::
        JSRef HTMLTableElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement.width Mozilla HTMLTableElement.width documentation> 
htmlTableElementGetWidth ::
                         (IsHTMLTableElement self, FromJSString result) => self -> IO result
htmlTableElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_html_table_element_get_width
         (unHTMLTableElement (toHTMLTableElement self)))
#else
module GHCJS.DOM.HTMLTableElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableElement
#endif
