{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLElement
       (webkit_dom_html_element_insert_adjacent_element,
        htmlElementInsertAdjacentElement,
        webkit_dom_html_element_insert_adjacent_html,
        htmlElementInsertAdjacentHTML,
        webkit_dom_html_element_insert_adjacent_text,
        htmlElementInsertAdjacentText, webkit_dom_html_element_click,
        htmlElementClick, webkit_dom_html_element_set_id, htmlElementSetId,
        webkit_dom_html_element_get_id, htmlElementGetId,
        webkit_dom_html_element_set_title, htmlElementSetTitle,
        webkit_dom_html_element_get_title, htmlElementGetTitle,
        webkit_dom_html_element_set_lang, htmlElementSetLang,
        webkit_dom_html_element_get_lang, htmlElementGetLang,
        webkit_dom_html_element_set_translate, htmlElementSetTranslate,
        webkit_dom_html_element_get_translate, htmlElementGetTranslate,
        webkit_dom_html_element_set_dir, htmlElementSetDir,
        webkit_dom_html_element_get_dir, htmlElementGetDir,
        webkit_dom_html_element_set_tab_index, htmlElementSetTabIndex,
        webkit_dom_html_element_get_tab_index, htmlElementGetTabIndex,
        webkit_dom_html_element_set_draggable, htmlElementSetDraggable,
        webkit_dom_html_element_get_draggable, htmlElementGetDraggable,
        webkit_dom_html_element_set_webkitdropzone,
        htmlElementSetWebkitdropzone,
        webkit_dom_html_element_get_webkitdropzone,
        htmlElementGetWebkitdropzone, webkit_dom_html_element_set_hidden,
        htmlElementSetHidden, webkit_dom_html_element_get_hidden,
        htmlElementGetHidden, webkit_dom_html_element_set_access_key,
        htmlElementSetAccessKey, webkit_dom_html_element_get_access_key,
        htmlElementGetAccessKey, webkit_dom_html_element_set_inner_html,
        htmlElementSetInnerHTML, webkit_dom_html_element_get_inner_html,
        htmlElementGetInnerHTML, webkit_dom_html_element_set_inner_text,
        htmlElementSetInnerText, webkit_dom_html_element_get_inner_text,
        htmlElementGetInnerText, webkit_dom_html_element_set_outer_html,
        htmlElementSetOuterHTML, webkit_dom_html_element_get_outer_html,
        htmlElementGetOuterHTML, webkit_dom_html_element_set_outer_text,
        htmlElementSetOuterText, webkit_dom_html_element_get_outer_text,
        htmlElementGetOuterText, webkit_dom_html_element_get_children,
        htmlElementGetChildren,
        webkit_dom_html_element_set_content_editable,
        htmlElementSetContentEditable,
        webkit_dom_html_element_get_content_editable,
        htmlElementGetContentEditable,
        webkit_dom_html_element_get_is_content_editable,
        htmlElementGetIsContentEditable,
        webkit_dom_html_element_set_spellcheck, htmlElementSetSpellcheck,
        webkit_dom_html_element_get_spellcheck, htmlElementGetSpellcheck,
        webkit_dom_html_element_set_item_scope, htmlElementSetItemScope,
        webkit_dom_html_element_get_item_scope, htmlElementGetItemScope,
        webkit_dom_html_element_get_item_type, htmlElementGetItemType,
        webkit_dom_html_element_set_item_id, htmlElementSetItemId,
        webkit_dom_html_element_get_item_id, htmlElementGetItemId,
        webkit_dom_html_element_get_item_ref, htmlElementGetItemRef,
        webkit_dom_html_element_get_item_prop, htmlElementGetItemProp)
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
foreign import javascript unsafe
        "$1[\"insertAdjacentElement\"]($2,\n$3)"
        webkit_dom_html_element_insert_adjacent_element ::
        JSRef HTMLElement ->
          JSString -> JSRef Element -> IO (JSRef Element)
#else 
webkit_dom_html_element_insert_adjacent_element ::
                                                  JSRef HTMLElement ->
                                                    JSString -> JSRef Element -> IO (JSRef Element)
webkit_dom_html_element_insert_adjacent_element = undefined
#endif
 
htmlElementInsertAdjacentElement ::
                                 (HTMLElementClass self, ToJSString where', ElementClass element) =>
                                   self -> where' -> Maybe element -> IO (Maybe Element)
htmlElementInsertAdjacentElement self where' element
  = fmap Element . maybeJSNull <$>
      (webkit_dom_html_element_insert_adjacent_element
         (unHTMLElement (toHTMLElement self))
         (toJSString where')
         (maybe jsNull (unElement . toElement) element))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"insertAdjacentHTML\"]($2, $3)"
        webkit_dom_html_element_insert_adjacent_html ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()
#else 
webkit_dom_html_element_insert_adjacent_html ::
                                               JSRef HTMLElement -> JSString -> JSString -> IO ()
webkit_dom_html_element_insert_adjacent_html = undefined
#endif
 
htmlElementInsertAdjacentHTML ::
                              (HTMLElementClass self, ToJSString where', ToJSString html) =>
                                self -> where' -> html -> IO ()
htmlElementInsertAdjacentHTML self where' html
  = webkit_dom_html_element_insert_adjacent_html
      (unHTMLElement (toHTMLElement self))
      (toJSString where')
      (toJSString html)


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "$1[\"insertAdjacentText\"]($2, $3)"
        webkit_dom_html_element_insert_adjacent_text ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()
#else 
webkit_dom_html_element_insert_adjacent_text ::
                                               JSRef HTMLElement -> JSString -> JSString -> IO ()
webkit_dom_html_element_insert_adjacent_text = undefined
#endif
 
htmlElementInsertAdjacentText ::
                              (HTMLElementClass self, ToJSString where', ToJSString text) =>
                                self -> where' -> text -> IO ()
htmlElementInsertAdjacentText self where' text
  = webkit_dom_html_element_insert_adjacent_text
      (unHTMLElement (toHTMLElement self))
      (toJSString where')
      (toJSString text)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"click\"]()"
        webkit_dom_html_element_click :: JSRef HTMLElement -> IO ()
#else 
webkit_dom_html_element_click :: JSRef HTMLElement -> IO ()
webkit_dom_html_element_click = undefined
#endif
 
htmlElementClick :: (HTMLElementClass self) => self -> IO ()
htmlElementClick self
  = webkit_dom_html_element_click
      (unHTMLElement (toHTMLElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"id\"] = $2;"
        webkit_dom_html_element_set_id ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_id ::
                                 JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_id = undefined
#endif
 
htmlElementSetId ::
                 (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetId self val
  = webkit_dom_html_element_set_id
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"id\"]"
        webkit_dom_html_element_get_id :: JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_id :: JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_id = undefined
#endif
 
htmlElementGetId ::
                 (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetId self
  = fromJSString <$>
      (webkit_dom_html_element_get_id
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        webkit_dom_html_element_set_title ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_title ::
                                    JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_title = undefined
#endif
 
htmlElementSetTitle ::
                    (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetTitle self val
  = webkit_dom_html_element_set_title
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"title\"]"
        webkit_dom_html_element_get_title ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_title ::
                                    JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_title = undefined
#endif
 
htmlElementGetTitle ::
                    (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetTitle self
  = fromJSString <$>
      (webkit_dom_html_element_get_title
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lang\"] = $2;"
        webkit_dom_html_element_set_lang ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_lang ::
                                   JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_lang = undefined
#endif
 
htmlElementSetLang ::
                   (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetLang self val
  = webkit_dom_html_element_set_lang
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"lang\"]"
        webkit_dom_html_element_get_lang ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_lang ::
                                   JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_lang = undefined
#endif
 
htmlElementGetLang ::
                   (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetLang self
  = fromJSString <$>
      (webkit_dom_html_element_get_lang
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"translate\"] = $2;"
        webkit_dom_html_element_set_translate ::
        JSRef HTMLElement -> JSBool -> IO ()
#else 
webkit_dom_html_element_set_translate ::
                                        JSRef HTMLElement -> JSBool -> IO ()
webkit_dom_html_element_set_translate = undefined
#endif
 
htmlElementSetTranslate ::
                        (HTMLElementClass self) => self -> Bool -> IO ()
htmlElementSetTranslate self val
  = webkit_dom_html_element_set_translate
      (unHTMLElement (toHTMLElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"translate\"] ? 1 : 0)"
        webkit_dom_html_element_get_translate ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_translate ::
                                        JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_translate = undefined
#endif
 
htmlElementGetTranslate ::
                        (HTMLElementClass self) => self -> IO Bool
htmlElementGetTranslate self
  = fromJSBool <$>
      (webkit_dom_html_element_get_translate
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"] = $2;"
        webkit_dom_html_element_set_dir ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_dir ::
                                  JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_dir = undefined
#endif
 
htmlElementSetDir ::
                  (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetDir self val
  = webkit_dom_html_element_set_dir
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"]"
        webkit_dom_html_element_get_dir :: JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_dir :: JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_dir = undefined
#endif
 
htmlElementGetDir ::
                  (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetDir self
  = fromJSString <$>
      (webkit_dom_html_element_get_dir
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        webkit_dom_html_element_set_tab_index ::
        JSRef HTMLElement -> Int -> IO ()
#else 
webkit_dom_html_element_set_tab_index ::
                                        JSRef HTMLElement -> Int -> IO ()
webkit_dom_html_element_set_tab_index = undefined
#endif
 
htmlElementSetTabIndex ::
                       (HTMLElementClass self) => self -> Int -> IO ()
htmlElementSetTabIndex self val
  = webkit_dom_html_element_set_tab_index
      (unHTMLElement (toHTMLElement self))
      val


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"tabIndex\"]"
        webkit_dom_html_element_get_tab_index ::
        JSRef HTMLElement -> IO Int
#else 
webkit_dom_html_element_get_tab_index ::
                                        JSRef HTMLElement -> IO Int
webkit_dom_html_element_get_tab_index = undefined
#endif
 
htmlElementGetTabIndex :: (HTMLElementClass self) => self -> IO Int
htmlElementGetTabIndex self
  = webkit_dom_html_element_get_tab_index
      (unHTMLElement (toHTMLElement self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"draggable\"] = $2;"
        webkit_dom_html_element_set_draggable ::
        JSRef HTMLElement -> JSBool -> IO ()
#else 
webkit_dom_html_element_set_draggable ::
                                        JSRef HTMLElement -> JSBool -> IO ()
webkit_dom_html_element_set_draggable = undefined
#endif
 
htmlElementSetDraggable ::
                        (HTMLElementClass self) => self -> Bool -> IO ()
htmlElementSetDraggable self val
  = webkit_dom_html_element_set_draggable
      (unHTMLElement (toHTMLElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"draggable\"] ? 1 : 0)"
        webkit_dom_html_element_get_draggable ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_draggable ::
                                        JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_draggable = undefined
#endif
 
htmlElementGetDraggable ::
                        (HTMLElementClass self) => self -> IO Bool
htmlElementGetDraggable self
  = fromJSBool <$>
      (webkit_dom_html_element_get_draggable
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitdropzone\"] = $2;"
        webkit_dom_html_element_set_webkitdropzone ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_webkitdropzone ::
                                             JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_webkitdropzone = undefined
#endif
 
htmlElementSetWebkitdropzone ::
                             (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetWebkitdropzone self val
  = webkit_dom_html_element_set_webkitdropzone
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"webkitdropzone\"]"
        webkit_dom_html_element_get_webkitdropzone ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_webkitdropzone ::
                                             JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_webkitdropzone = undefined
#endif
 
htmlElementGetWebkitdropzone ::
                             (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetWebkitdropzone self
  = fromJSString <$>
      (webkit_dom_html_element_get_webkitdropzone
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hidden\"] = $2;"
        webkit_dom_html_element_set_hidden ::
        JSRef HTMLElement -> JSBool -> IO ()
#else 
webkit_dom_html_element_set_hidden ::
                                     JSRef HTMLElement -> JSBool -> IO ()
webkit_dom_html_element_set_hidden = undefined
#endif
 
htmlElementSetHidden ::
                     (HTMLElementClass self) => self -> Bool -> IO ()
htmlElementSetHidden self val
  = webkit_dom_html_element_set_hidden
      (unHTMLElement (toHTMLElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        webkit_dom_html_element_get_hidden ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_hidden ::
                                     JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_hidden = undefined
#endif
 
htmlElementGetHidden :: (HTMLElementClass self) => self -> IO Bool
htmlElementGetHidden self
  = fromJSBool <$>
      (webkit_dom_html_element_get_hidden
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accessKey\"] = $2;"
        webkit_dom_html_element_set_access_key ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_access_key ::
                                         JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_access_key = undefined
#endif
 
htmlElementSetAccessKey ::
                        (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetAccessKey self val
  = webkit_dom_html_element_set_access_key
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"accessKey\"]"
        webkit_dom_html_element_get_access_key ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_access_key ::
                                         JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_access_key = undefined
#endif
 
htmlElementGetAccessKey ::
                        (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetAccessKey self
  = fromJSString <$>
      (webkit_dom_html_element_get_access_key
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerHTML\"] = $2;"
        webkit_dom_html_element_set_inner_html ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_inner_html ::
                                         JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_inner_html = undefined
#endif
 
htmlElementSetInnerHTML ::
                        (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetInnerHTML self val
  = webkit_dom_html_element_set_inner_html
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        webkit_dom_html_element_get_inner_html ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_inner_html ::
                                         JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_inner_html = undefined
#endif
 
htmlElementGetInnerHTML ::
                        (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetInnerHTML self
  = fromJSString <$>
      (webkit_dom_html_element_get_inner_html
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerText\"] = $2;"
        webkit_dom_html_element_set_inner_text ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_inner_text ::
                                         JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_inner_text = undefined
#endif
 
htmlElementSetInnerText ::
                        (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetInnerText self val
  = webkit_dom_html_element_set_inner_text
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"innerText\"]"
        webkit_dom_html_element_get_inner_text ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_inner_text ::
                                         JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_inner_text = undefined
#endif
 
htmlElementGetInnerText ::
                        (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetInnerText self
  = fromJSString <$>
      (webkit_dom_html_element_get_inner_text
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerHTML\"] = $2;"
        webkit_dom_html_element_set_outer_html ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_outer_html ::
                                         JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_outer_html = undefined
#endif
 
htmlElementSetOuterHTML ::
                        (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetOuterHTML self val
  = webkit_dom_html_element_set_outer_html
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerHTML\"]"
        webkit_dom_html_element_get_outer_html ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_outer_html ::
                                         JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_outer_html = undefined
#endif
 
htmlElementGetOuterHTML ::
                        (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetOuterHTML self
  = fromJSString <$>
      (webkit_dom_html_element_get_outer_html
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerText\"] = $2;"
        webkit_dom_html_element_set_outer_text ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_outer_text ::
                                         JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_outer_text = undefined
#endif
 
htmlElementSetOuterText ::
                        (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetOuterText self val
  = webkit_dom_html_element_set_outer_text
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"outerText\"]"
        webkit_dom_html_element_get_outer_text ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_outer_text ::
                                         JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_outer_text = undefined
#endif
 
htmlElementGetOuterText ::
                        (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetOuterText self
  = fromJSString <$>
      (webkit_dom_html_element_get_outer_text
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"children\"]"
        webkit_dom_html_element_get_children ::
        JSRef HTMLElement -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_element_get_children ::
                                       JSRef HTMLElement -> IO (JSRef HTMLCollection)
webkit_dom_html_element_get_children = undefined
#endif
 
htmlElementGetChildren ::
                       (HTMLElementClass self) => self -> IO (Maybe HTMLCollection)
htmlElementGetChildren self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_element_get_children
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentEditable\"] = $2;"
        webkit_dom_html_element_set_content_editable ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_content_editable ::
                                               JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_content_editable = undefined
#endif
 
htmlElementSetContentEditable ::
                              (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetContentEditable self val
  = webkit_dom_html_element_set_content_editable
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        webkit_dom_html_element_get_content_editable ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_content_editable ::
                                               JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_content_editable = undefined
#endif
 
htmlElementGetContentEditable ::
                              (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetContentEditable self
  = fromJSString <$>
      (webkit_dom_html_element_get_content_editable
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)"
        webkit_dom_html_element_get_is_content_editable ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_is_content_editable ::
                                                  JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_is_content_editable = undefined
#endif
 
htmlElementGetIsContentEditable ::
                                (HTMLElementClass self) => self -> IO Bool
htmlElementGetIsContentEditable self
  = fromJSBool <$>
      (webkit_dom_html_element_get_is_content_editable
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"spellcheck\"] = $2;"
        webkit_dom_html_element_set_spellcheck ::
        JSRef HTMLElement -> JSBool -> IO ()
#else 
webkit_dom_html_element_set_spellcheck ::
                                         JSRef HTMLElement -> JSBool -> IO ()
webkit_dom_html_element_set_spellcheck = undefined
#endif
 
htmlElementSetSpellcheck ::
                         (HTMLElementClass self) => self -> Bool -> IO ()
htmlElementSetSpellcheck self val
  = webkit_dom_html_element_set_spellcheck
      (unHTMLElement (toHTMLElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"spellcheck\"] ? 1 : 0)"
        webkit_dom_html_element_get_spellcheck ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_spellcheck ::
                                         JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_spellcheck = undefined
#endif
 
htmlElementGetSpellcheck ::
                         (HTMLElementClass self) => self -> IO Bool
htmlElementGetSpellcheck self
  = fromJSBool <$>
      (webkit_dom_html_element_get_spellcheck
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemScope\"] = $2;"
        webkit_dom_html_element_set_item_scope ::
        JSRef HTMLElement -> JSBool -> IO ()
#else 
webkit_dom_html_element_set_item_scope ::
                                         JSRef HTMLElement -> JSBool -> IO ()
webkit_dom_html_element_set_item_scope = undefined
#endif
 
htmlElementSetItemScope ::
                        (HTMLElementClass self) => self -> Bool -> IO ()
htmlElementSetItemScope self val
  = webkit_dom_html_element_set_item_scope
      (unHTMLElement (toHTMLElement self))
      (toJSBool val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"itemScope\"] ? 1 : 0)"
        webkit_dom_html_element_get_item_scope ::
        JSRef HTMLElement -> IO JSBool
#else 
webkit_dom_html_element_get_item_scope ::
                                         JSRef HTMLElement -> IO JSBool
webkit_dom_html_element_get_item_scope = undefined
#endif
 
htmlElementGetItemScope ::
                        (HTMLElementClass self) => self -> IO Bool
htmlElementGetItemScope self
  = fromJSBool <$>
      (webkit_dom_html_element_get_item_scope
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemType\"]"
        webkit_dom_html_element_get_item_type ::
        JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
#else 
webkit_dom_html_element_get_item_type ::
                                        JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
webkit_dom_html_element_get_item_type = undefined
#endif
 
htmlElementGetItemType ::
                       (HTMLElementClass self) => self -> IO (Maybe DOMSettableTokenList)
htmlElementGetItemType self
  = fmap DOMSettableTokenList . maybeJSNull <$>
      (webkit_dom_html_element_get_item_type
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemId\"] = $2;"
        webkit_dom_html_element_set_item_id ::
        JSRef HTMLElement -> JSString -> IO ()
#else 
webkit_dom_html_element_set_item_id ::
                                      JSRef HTMLElement -> JSString -> IO ()
webkit_dom_html_element_set_item_id = undefined
#endif
 
htmlElementSetItemId ::
                     (HTMLElementClass self, ToJSString val) => self -> val -> IO ()
htmlElementSetItemId self val
  = webkit_dom_html_element_set_item_id
      (unHTMLElement (toHTMLElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemId\"]"
        webkit_dom_html_element_get_item_id ::
        JSRef HTMLElement -> IO JSString
#else 
webkit_dom_html_element_get_item_id ::
                                      JSRef HTMLElement -> IO JSString
webkit_dom_html_element_get_item_id = undefined
#endif
 
htmlElementGetItemId ::
                     (HTMLElementClass self, FromJSString result) => self -> IO result
htmlElementGetItemId self
  = fromJSString <$>
      (webkit_dom_html_element_get_item_id
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemRef\"]"
        webkit_dom_html_element_get_item_ref ::
        JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
#else 
webkit_dom_html_element_get_item_ref ::
                                       JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
webkit_dom_html_element_get_item_ref = undefined
#endif
 
htmlElementGetItemRef ::
                      (HTMLElementClass self) => self -> IO (Maybe DOMSettableTokenList)
htmlElementGetItemRef self
  = fmap DOMSettableTokenList . maybeJSNull <$>
      (webkit_dom_html_element_get_item_ref
         (unHTMLElement (toHTMLElement self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"itemProp\"]"
        webkit_dom_html_element_get_item_prop ::
        JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
#else 
webkit_dom_html_element_get_item_prop ::
                                        JSRef HTMLElement -> IO (JSRef DOMSettableTokenList)
webkit_dom_html_element_get_item_prop = undefined
#endif
 
htmlElementGetItemProp ::
                       (HTMLElementClass self) => self -> IO (Maybe DOMSettableTokenList)
htmlElementGetItemProp self
  = fmap DOMSettableTokenList . maybeJSNull <$>
      (webkit_dom_html_element_get_item_prop
         (unHTMLElement (toHTMLElement self)))