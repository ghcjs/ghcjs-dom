{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableElement
       (webkit_dom_html_table_element_create_t_head,
        htmlTableElementCreateTHead,
        webkit_dom_html_table_element_delete_t_head,
        htmlTableElementDeleteTHead,
        webkit_dom_html_table_element_create_t_foot,
        htmlTableElementCreateTFoot,
        webkit_dom_html_table_element_delete_t_foot,
        htmlTableElementDeleteTFoot,
        webkit_dom_html_table_element_create_t_body,
        htmlTableElementCreateTBody,
        webkit_dom_html_table_element_create_caption,
        htmlTableElementCreateCaption,
        webkit_dom_html_table_element_delete_caption,
        htmlTableElementDeleteCaption,
        webkit_dom_html_table_element_insert_row,
        htmlTableElementInsertRow,
        webkit_dom_html_table_element_delete_row,
        htmlTableElementDeleteRow,
        webkit_dom_html_table_element_set_caption,
        htmlTableElementSetCaption,
        webkit_dom_html_table_element_get_caption,
        htmlTableElementGetCaption,
        webkit_dom_html_table_element_set_t_head, htmlTableElementSetTHead,
        webkit_dom_html_table_element_get_t_head, htmlTableElementGetTHead,
        webkit_dom_html_table_element_set_t_foot, htmlTableElementSetTFoot,
        webkit_dom_html_table_element_get_t_foot, htmlTableElementGetTFoot,
        webkit_dom_html_table_element_get_rows, htmlTableElementGetRows,
        webkit_dom_html_table_element_get_t_bodies,
        htmlTableElementGetTBodies,
        webkit_dom_html_table_element_set_align, htmlTableElementSetAlign,
        webkit_dom_html_table_element_get_align, htmlTableElementGetAlign,
        webkit_dom_html_table_element_set_bg_color,
        htmlTableElementSetBgColor,
        webkit_dom_html_table_element_get_bg_color,
        htmlTableElementGetBgColor,
        webkit_dom_html_table_element_set_border,
        htmlTableElementSetBorder,
        webkit_dom_html_table_element_get_border,
        htmlTableElementGetBorder,
        webkit_dom_html_table_element_set_cell_padding,
        htmlTableElementSetCellPadding,
        webkit_dom_html_table_element_get_cell_padding,
        htmlTableElementGetCellPadding,
        webkit_dom_html_table_element_set_cell_spacing,
        htmlTableElementSetCellSpacing,
        webkit_dom_html_table_element_get_cell_spacing,
        htmlTableElementGetCellSpacing,
        webkit_dom_html_table_element_set_frame, htmlTableElementSetFrame,
        webkit_dom_html_table_element_get_frame, htmlTableElementGetFrame,
        webkit_dom_html_table_element_set_rules, htmlTableElementSetRules,
        webkit_dom_html_table_element_get_rules, htmlTableElementGetRules,
        webkit_dom_html_table_element_set_summary,
        htmlTableElementSetSummary,
        webkit_dom_html_table_element_get_summary,
        htmlTableElementGetSummary,
        webkit_dom_html_table_element_set_width, htmlTableElementSetWidth,
        webkit_dom_html_table_element_get_width, htmlTableElementGetWidth)
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
foreign import javascript unsafe "$1[\"createTHead\"]()"
        webkit_dom_html_table_element_create_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_element_create_t_head ::
                                              JSRef HTMLTableElement -> IO (JSRef HTMLElement)
webkit_dom_html_table_element_create_t_head = undefined
#endif
 
htmlTableElementCreateTHead ::
                            (HTMLTableElementClass self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTHead self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_element_create_t_head
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteTHead\"]()"
        webkit_dom_html_table_element_delete_t_head ::
        JSRef HTMLTableElement -> IO ()
#else 
webkit_dom_html_table_element_delete_t_head ::
                                              JSRef HTMLTableElement -> IO ()
webkit_dom_html_table_element_delete_t_head = undefined
#endif
 
htmlTableElementDeleteTHead ::
                            (HTMLTableElementClass self) => self -> IO ()
htmlTableElementDeleteTHead self
  = webkit_dom_html_table_element_delete_t_head
      (unHTMLTableElement (toHTMLTableElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createTFoot\"]()"
        webkit_dom_html_table_element_create_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_element_create_t_foot ::
                                              JSRef HTMLTableElement -> IO (JSRef HTMLElement)
webkit_dom_html_table_element_create_t_foot = undefined
#endif
 
htmlTableElementCreateTFoot ::
                            (HTMLTableElementClass self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTFoot self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_element_create_t_foot
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteTFoot\"]()"
        webkit_dom_html_table_element_delete_t_foot ::
        JSRef HTMLTableElement -> IO ()
#else 
webkit_dom_html_table_element_delete_t_foot ::
                                              JSRef HTMLTableElement -> IO ()
webkit_dom_html_table_element_delete_t_foot = undefined
#endif
 
htmlTableElementDeleteTFoot ::
                            (HTMLTableElementClass self) => self -> IO ()
htmlTableElementDeleteTFoot self
  = webkit_dom_html_table_element_delete_t_foot
      (unHTMLTableElement (toHTMLTableElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createTBody\"]()"
        webkit_dom_html_table_element_create_t_body ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_element_create_t_body ::
                                              JSRef HTMLTableElement -> IO (JSRef HTMLElement)
webkit_dom_html_table_element_create_t_body = undefined
#endif
 
htmlTableElementCreateTBody ::
                            (HTMLTableElementClass self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateTBody self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_element_create_t_body
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"createCaption\"]()"
        webkit_dom_html_table_element_create_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_element_create_caption ::
                                               JSRef HTMLTableElement -> IO (JSRef HTMLElement)
webkit_dom_html_table_element_create_caption = undefined
#endif
 
htmlTableElementCreateCaption ::
                              (HTMLTableElementClass self) => self -> IO (Maybe HTMLElement)
htmlTableElementCreateCaption self
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_element_create_caption
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteCaption\"]()"
        webkit_dom_html_table_element_delete_caption ::
        JSRef HTMLTableElement -> IO ()
#else 
webkit_dom_html_table_element_delete_caption ::
                                               JSRef HTMLTableElement -> IO ()
webkit_dom_html_table_element_delete_caption = undefined
#endif
 
htmlTableElementDeleteCaption ::
                              (HTMLTableElementClass self) => self -> IO ()
htmlTableElementDeleteCaption self
  = webkit_dom_html_table_element_delete_caption
      (unHTMLTableElement (toHTMLTableElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"insertRow\"]($2)"
        webkit_dom_html_table_element_insert_row ::
        JSRef HTMLTableElement -> Int -> IO (JSRef HTMLElement)
#else 
webkit_dom_html_table_element_insert_row ::
                                           JSRef HTMLTableElement -> Int -> IO (JSRef HTMLElement)
webkit_dom_html_table_element_insert_row = undefined
#endif
 
htmlTableElementInsertRow ::
                          (HTMLTableElementClass self) =>
                            self -> Int -> IO (Maybe HTMLElement)
htmlTableElementInsertRow self index
  = fmap HTMLElement . maybeJSNull <$>
      (webkit_dom_html_table_element_insert_row
         (unHTMLTableElement (toHTMLTableElement self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"deleteRow\"]($2)"
        webkit_dom_html_table_element_delete_row ::
        JSRef HTMLTableElement -> Int -> IO ()
#else 
webkit_dom_html_table_element_delete_row ::
                                           JSRef HTMLTableElement -> Int -> IO ()
webkit_dom_html_table_element_delete_row = undefined
#endif
 
htmlTableElementDeleteRow ::
                          (HTMLTableElementClass self) => self -> Int -> IO ()
htmlTableElementDeleteRow self index
  = webkit_dom_html_table_element_delete_row
      (unHTMLTableElement (toHTMLTableElement self))
      index


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"caption\"] = $2;"
        webkit_dom_html_table_element_set_caption ::
        JSRef HTMLTableElement -> JSRef HTMLTableCaptionElement -> IO ()
#else 
webkit_dom_html_table_element_set_caption ::
                                            JSRef HTMLTableElement ->
                                              JSRef HTMLTableCaptionElement -> IO ()
webkit_dom_html_table_element_set_caption = undefined
#endif
 
htmlTableElementSetCaption ::
                           (HTMLTableElementClass self, HTMLTableCaptionElementClass val) =>
                             self -> Maybe val -> IO ()
htmlTableElementSetCaption self val
  = webkit_dom_html_table_element_set_caption
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableCaptionElement . toHTMLTableCaptionElement)
         val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"caption\"]"
        webkit_dom_html_table_element_get_caption ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableCaptionElement)
#else 
webkit_dom_html_table_element_get_caption ::
                                            JSRef HTMLTableElement ->
                                              IO (JSRef HTMLTableCaptionElement)
webkit_dom_html_table_element_get_caption = undefined
#endif
 
htmlTableElementGetCaption ::
                           (HTMLTableElementClass self) =>
                             self -> IO (Maybe HTMLTableCaptionElement)
htmlTableElementGetCaption self
  = fmap HTMLTableCaptionElement . maybeJSNull <$>
      (webkit_dom_html_table_element_get_caption
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tHead\"] = $2;"
        webkit_dom_html_table_element_set_t_head ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()
#else 
webkit_dom_html_table_element_set_t_head ::
                                           JSRef HTMLTableElement ->
                                             JSRef HTMLTableSectionElement -> IO ()
webkit_dom_html_table_element_set_t_head = undefined
#endif
 
htmlTableElementSetTHead ::
                         (HTMLTableElementClass self, HTMLTableSectionElementClass val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTHead self val
  = webkit_dom_html_table_element_set_t_head
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tHead\"]"
        webkit_dom_html_table_element_get_t_head ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)
#else 
webkit_dom_html_table_element_get_t_head ::
                                           JSRef HTMLTableElement ->
                                             IO (JSRef HTMLTableSectionElement)
webkit_dom_html_table_element_get_t_head = undefined
#endif
 
htmlTableElementGetTHead ::
                         (HTMLTableElementClass self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTHead self
  = fmap HTMLTableSectionElement . maybeJSNull <$>
      (webkit_dom_html_table_element_get_t_head
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tFoot\"] = $2;"
        webkit_dom_html_table_element_set_t_foot ::
        JSRef HTMLTableElement -> JSRef HTMLTableSectionElement -> IO ()
#else 
webkit_dom_html_table_element_set_t_foot ::
                                           JSRef HTMLTableElement ->
                                             JSRef HTMLTableSectionElement -> IO ()
webkit_dom_html_table_element_set_t_foot = undefined
#endif
 
htmlTableElementSetTFoot ::
                         (HTMLTableElementClass self, HTMLTableSectionElementClass val) =>
                           self -> Maybe val -> IO ()
htmlTableElementSetTFoot self val
  = webkit_dom_html_table_element_set_t_foot
      (unHTMLTableElement (toHTMLTableElement self))
      (maybe jsNull
         (unHTMLTableSectionElement . toHTMLTableSectionElement)
         val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tFoot\"]"
        webkit_dom_html_table_element_get_t_foot ::
        JSRef HTMLTableElement -> IO (JSRef HTMLTableSectionElement)
#else 
webkit_dom_html_table_element_get_t_foot ::
                                           JSRef HTMLTableElement ->
                                             IO (JSRef HTMLTableSectionElement)
webkit_dom_html_table_element_get_t_foot = undefined
#endif
 
htmlTableElementGetTFoot ::
                         (HTMLTableElementClass self) =>
                           self -> IO (Maybe HTMLTableSectionElement)
htmlTableElementGetTFoot self
  = fmap HTMLTableSectionElement . maybeJSNull <$>
      (webkit_dom_html_table_element_get_t_foot
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rows\"]"
        webkit_dom_html_table_element_get_rows ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_table_element_get_rows ::
                                         JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
webkit_dom_html_table_element_get_rows = undefined
#endif
 
htmlTableElementGetRows ::
                        (HTMLTableElementClass self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetRows self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_table_element_get_rows
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tBodies\"]"
        webkit_dom_html_table_element_get_t_bodies ::
        JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_table_element_get_t_bodies ::
                                             JSRef HTMLTableElement -> IO (JSRef HTMLCollection)
webkit_dom_html_table_element_get_t_bodies = undefined
#endif
 
htmlTableElementGetTBodies ::
                           (HTMLTableElementClass self) => self -> IO (Maybe HTMLCollection)
htmlTableElementGetTBodies self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_table_element_get_t_bodies
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        webkit_dom_html_table_element_set_align ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_align ::
                                          JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_align = undefined
#endif
 
htmlTableElementSetAlign ::
                         (HTMLTableElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableElementSetAlign self val
  = webkit_dom_html_table_element_set_align
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        webkit_dom_html_table_element_get_align ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_align ::
                                          JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_align = undefined
#endif
 
htmlTableElementGetAlign ::
                         (HTMLTableElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableElementGetAlign self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_align
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_table_element_set_bg_color ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_bg_color ::
                                             JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_bg_color = undefined
#endif
 
htmlTableElementSetBgColor ::
                           (HTMLTableElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlTableElementSetBgColor self val
  = webkit_dom_html_table_element_set_bg_color
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_table_element_get_bg_color ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_bg_color ::
                                             JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_bg_color = undefined
#endif
 
htmlTableElementGetBgColor ::
                           (HTMLTableElementClass self, FromJSString result) =>
                             self -> IO result
htmlTableElementGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_bg_color
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"] = $2;"
        webkit_dom_html_table_element_set_border ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_border ::
                                           JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_border = undefined
#endif
 
htmlTableElementSetBorder ::
                          (HTMLTableElementClass self, ToJSString val) =>
                            self -> val -> IO ()
htmlTableElementSetBorder self val
  = webkit_dom_html_table_element_set_border
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"border\"]"
        webkit_dom_html_table_element_get_border ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_border ::
                                           JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_border = undefined
#endif
 
htmlTableElementGetBorder ::
                          (HTMLTableElementClass self, FromJSString result) =>
                            self -> IO result
htmlTableElementGetBorder self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_border
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cellPadding\"] = $2;"
        webkit_dom_html_table_element_set_cell_padding ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_cell_padding ::
                                                 JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_cell_padding = undefined
#endif
 
htmlTableElementSetCellPadding ::
                               (HTMLTableElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableElementSetCellPadding self val
  = webkit_dom_html_table_element_set_cell_padding
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cellPadding\"]"
        webkit_dom_html_table_element_get_cell_padding ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_cell_padding ::
                                                 JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_cell_padding = undefined
#endif
 
htmlTableElementGetCellPadding ::
                               (HTMLTableElementClass self, FromJSString result) =>
                                 self -> IO result
htmlTableElementGetCellPadding self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_cell_padding
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cellSpacing\"] = $2;"
        webkit_dom_html_table_element_set_cell_spacing ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_cell_spacing ::
                                                 JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_cell_spacing = undefined
#endif
 
htmlTableElementSetCellSpacing ::
                               (HTMLTableElementClass self, ToJSString val) =>
                                 self -> val -> IO ()
htmlTableElementSetCellSpacing self val
  = webkit_dom_html_table_element_set_cell_spacing
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cellSpacing\"]"
        webkit_dom_html_table_element_get_cell_spacing ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_cell_spacing ::
                                                 JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_cell_spacing = undefined
#endif
 
htmlTableElementGetCellSpacing ::
                               (HTMLTableElementClass self, FromJSString result) =>
                                 self -> IO result
htmlTableElementGetCellSpacing self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_cell_spacing
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frame\"] = $2;"
        webkit_dom_html_table_element_set_frame ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_frame ::
                                          JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_frame = undefined
#endif
 
htmlTableElementSetFrame ::
                         (HTMLTableElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableElementSetFrame self val
  = webkit_dom_html_table_element_set_frame
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"frame\"]"
        webkit_dom_html_table_element_get_frame ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_frame ::
                                          JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_frame = undefined
#endif
 
htmlTableElementGetFrame ::
                         (HTMLTableElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableElementGetFrame self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_frame
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rules\"] = $2;"
        webkit_dom_html_table_element_set_rules ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_rules ::
                                          JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_rules = undefined
#endif
 
htmlTableElementSetRules ::
                         (HTMLTableElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableElementSetRules self val
  = webkit_dom_html_table_element_set_rules
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"rules\"]"
        webkit_dom_html_table_element_get_rules ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_rules ::
                                          JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_rules = undefined
#endif
 
htmlTableElementGetRules ::
                         (HTMLTableElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableElementGetRules self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_rules
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"summary\"] = $2;"
        webkit_dom_html_table_element_set_summary ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_summary ::
                                            JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_summary = undefined
#endif
 
htmlTableElementSetSummary ::
                           (HTMLTableElementClass self, ToJSString val) =>
                             self -> val -> IO ()
htmlTableElementSetSummary self val
  = webkit_dom_html_table_element_set_summary
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"summary\"]"
        webkit_dom_html_table_element_get_summary ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_summary ::
                                            JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_summary = undefined
#endif
 
htmlTableElementGetSummary ::
                           (HTMLTableElementClass self, FromJSString result) =>
                             self -> IO result
htmlTableElementGetSummary self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_summary
         (unHTMLTableElement (toHTMLTableElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        webkit_dom_html_table_element_set_width ::
        JSRef HTMLTableElement -> JSString -> IO ()
#else 
webkit_dom_html_table_element_set_width ::
                                          JSRef HTMLTableElement -> JSString -> IO ()
webkit_dom_html_table_element_set_width = undefined
#endif
 
htmlTableElementSetWidth ::
                         (HTMLTableElementClass self, ToJSString val) =>
                           self -> val -> IO ()
htmlTableElementSetWidth self val
  = webkit_dom_html_table_element_set_width
      (unHTMLTableElement (toHTMLTableElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_table_element_get_width ::
        JSRef HTMLTableElement -> IO JSString
#else 
webkit_dom_html_table_element_get_width ::
                                          JSRef HTMLTableElement -> IO JSString
webkit_dom_html_table_element_get_width = undefined
#endif
 
htmlTableElementGetWidth ::
                         (HTMLTableElementClass self, FromJSString result) =>
                           self -> IO result
htmlTableElementGetWidth self
  = fromJSString <$>
      (webkit_dom_html_table_element_get_width
         (unHTMLTableElement (toHTMLTableElement self)))