{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLElement
       (ghcjs_dom_html_element_insert_adjacent_element,
        htmlElementInsertAdjacentElement,
        ghcjs_dom_html_element_insert_adjacent_html,
        htmlElementInsertAdjacentHTML,
        ghcjs_dom_html_element_insert_adjacent_text,
        htmlElementInsertAdjacentText, ghcjs_dom_html_element_click,
        htmlElementClick, ghcjs_dom_html_element_set_title,
        htmlElementSetTitle, ghcjs_dom_html_element_get_title,
        htmlElementGetTitle, ghcjs_dom_html_element_set_lang,
        htmlElementSetLang, ghcjs_dom_html_element_get_lang,
        htmlElementGetLang, ghcjs_dom_html_element_set_translate,
        htmlElementSetTranslate, ghcjs_dom_html_element_get_translate,
        htmlElementGetTranslate, ghcjs_dom_html_element_set_dir,
        htmlElementSetDir, ghcjs_dom_html_element_get_dir,
        htmlElementGetDir, ghcjs_dom_html_element_set_tab_index,
        htmlElementSetTabIndex, ghcjs_dom_html_element_get_tab_index,
        htmlElementGetTabIndex, ghcjs_dom_html_element_set_draggable,
        htmlElementSetDraggable, ghcjs_dom_html_element_get_draggable,
        htmlElementGetDraggable, ghcjs_dom_html_element_set_webkitdropzone,
        htmlElementSetWebkitdropzone,
        ghcjs_dom_html_element_get_webkitdropzone,
        htmlElementGetWebkitdropzone, ghcjs_dom_html_element_set_hidden,
        htmlElementSetHidden, ghcjs_dom_html_element_get_hidden,
        htmlElementGetHidden, ghcjs_dom_html_element_set_access_key,
        htmlElementSetAccessKey, ghcjs_dom_html_element_get_access_key,
        htmlElementGetAccessKey, ghcjs_dom_html_element_set_inner_html,
        htmlElementSetInnerHTML, ghcjs_dom_html_element_get_inner_html,
        htmlElementGetInnerHTML, ghcjs_dom_html_element_set_inner_text,
        htmlElementSetInnerText, ghcjs_dom_html_element_get_inner_text,
        htmlElementGetInnerText, ghcjs_dom_html_element_set_outer_html,
        htmlElementSetOuterHTML, ghcjs_dom_html_element_get_outer_html,
        htmlElementGetOuterHTML, ghcjs_dom_html_element_set_outer_text,
        htmlElementSetOuterText, ghcjs_dom_html_element_get_outer_text,
        htmlElementGetOuterText, ghcjs_dom_html_element_get_children,
        htmlElementGetChildren,
        ghcjs_dom_html_element_set_content_editable,
        htmlElementSetContentEditable,
        ghcjs_dom_html_element_get_content_editable,
        htmlElementGetContentEditable,
        ghcjs_dom_html_element_get_is_content_editable,
        htmlElementGetIsContentEditable,
        ghcjs_dom_html_element_set_spellcheck, htmlElementSetSpellcheck,
        ghcjs_dom_html_element_get_spellcheck, htmlElementGetSpellcheck,
        HTMLElement, IsHTMLElement, castToHTMLElement, gTypeHTMLElement,
        toHTMLElement)
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

 
foreign import javascript unsafe
        "$1[\"insertAdjacentElement\"]($2,\n$3)"
        ghcjs_dom_html_element_insert_adjacent_element ::
        JSRef HTMLElement ->
          JSString -> JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentElement Mozilla HTMLElement.insertAdjacentElement documentation> 
htmlElementInsertAdjacentElement ::
                                 (IsHTMLElement self, ToJSString where', IsElement element) =>
                                   self -> where' -> Maybe element -> IO (Maybe Element)
htmlElementInsertAdjacentElement self where' element
  = (ghcjs_dom_html_element_insert_adjacent_element
       (unHTMLElement (toHTMLElement self))
       (toJSString where')
       (maybe jsNull (unElement . toElement) element))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"insertAdjacentHTML\"]($2, $3)"
        ghcjs_dom_html_element_insert_adjacent_html ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentHTML Mozilla HTMLElement.insertAdjacentHTML documentation> 
htmlElementInsertAdjacentHTML ::
                              (IsHTMLElement self, ToJSString where', ToJSString html) =>
                                self -> where' -> html -> IO ()
htmlElementInsertAdjacentHTML self where' html
  = ghcjs_dom_html_element_insert_adjacent_html
      (unHTMLElement (toHTMLElement self))
      (toJSString where')
      (toJSString html)
 
foreign import javascript unsafe
        "$1[\"insertAdjacentText\"]($2, $3)"
        ghcjs_dom_html_element_insert_adjacent_text ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentText Mozilla HTMLElement.insertAdjacentText documentation> 
htmlElementInsertAdjacentText ::
                              (IsHTMLElement self, ToJSString where', ToJSString text) =>
                                self -> where' -> text -> IO ()
htmlElementInsertAdjacentText self where' text
  = ghcjs_dom_html_element_insert_adjacent_text
      (unHTMLElement (toHTMLElement self))
      (toJSString where')
      (toJSString text)
 
foreign import javascript unsafe "$1[\"click\"]()"
        ghcjs_dom_html_element_click :: JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
htmlElementClick :: (IsHTMLElement self) => self -> IO ()
htmlElementClick self
  = ghcjs_dom_html_element_click (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_html_element_set_title ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
htmlElementSetTitle ::
                    (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetTitle self val
  = ghcjs_dom_html_element_set_title
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_html_element_get_title ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
htmlElementGetTitle ::
                    (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetTitle self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_title
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;"
        ghcjs_dom_html_element_set_lang ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
htmlElementSetLang ::
                   (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetLang self val
  = ghcjs_dom_html_element_set_lang
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"lang\"]"
        ghcjs_dom_html_element_get_lang :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
htmlElementGetLang ::
                   (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetLang self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_lang
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"translate\"] = $2;"
        ghcjs_dom_html_element_set_translate ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
htmlElementSetTranslate ::
                        (IsHTMLElement self) => self -> Bool -> IO ()
htmlElementSetTranslate self val
  = ghcjs_dom_html_element_set_translate
      (unHTMLElement (toHTMLElement self))
      val
 
foreign import javascript unsafe "($1[\"translate\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_translate ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
htmlElementGetTranslate :: (IsHTMLElement self) => self -> IO Bool
htmlElementGetTranslate self
  = ghcjs_dom_html_element_get_translate
      (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;"
        ghcjs_dom_html_element_set_dir ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
htmlElementSetDir ::
                  (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetDir self val
  = ghcjs_dom_html_element_set_dir
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"dir\"]"
        ghcjs_dom_html_element_get_dir :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
htmlElementGetDir ::
                  (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetDir self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_dir
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        ghcjs_dom_html_element_set_tab_index ::
        JSRef HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
htmlElementSetTabIndex ::
                       (IsHTMLElement self) => self -> Int -> IO ()
htmlElementSetTabIndex self val
  = ghcjs_dom_html_element_set_tab_index
      (unHTMLElement (toHTMLElement self))
      val
 
foreign import javascript unsafe "$1[\"tabIndex\"]"
        ghcjs_dom_html_element_get_tab_index :: JSRef HTMLElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
htmlElementGetTabIndex :: (IsHTMLElement self) => self -> IO Int
htmlElementGetTabIndex self
  = ghcjs_dom_html_element_get_tab_index
      (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"draggable\"] = $2;"
        ghcjs_dom_html_element_set_draggable ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
htmlElementSetDraggable ::
                        (IsHTMLElement self) => self -> Bool -> IO ()
htmlElementSetDraggable self val
  = ghcjs_dom_html_element_set_draggable
      (unHTMLElement (toHTMLElement self))
      val
 
foreign import javascript unsafe "($1[\"draggable\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_draggable ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
htmlElementGetDraggable :: (IsHTMLElement self) => self -> IO Bool
htmlElementGetDraggable self
  = ghcjs_dom_html_element_get_draggable
      (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"] = $2;"
        ghcjs_dom_html_element_set_webkitdropzone ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
htmlElementSetWebkitdropzone ::
                             (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetWebkitdropzone self val
  = ghcjs_dom_html_element_set_webkitdropzone
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"webkitdropzone\"]"
        ghcjs_dom_html_element_get_webkitdropzone ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
htmlElementGetWebkitdropzone ::
                             (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetWebkitdropzone self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_webkitdropzone
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"hidden\"] = $2;"
        ghcjs_dom_html_element_set_hidden ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
htmlElementSetHidden ::
                     (IsHTMLElement self) => self -> Bool -> IO ()
htmlElementSetHidden self val
  = ghcjs_dom_html_element_set_hidden
      (unHTMLElement (toHTMLElement self))
      val
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_hidden :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
htmlElementGetHidden :: (IsHTMLElement self) => self -> IO Bool
htmlElementGetHidden self
  = ghcjs_dom_html_element_get_hidden
      (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"accessKey\"] = $2;"
        ghcjs_dom_html_element_set_access_key ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
htmlElementSetAccessKey ::
                        (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetAccessKey self val
  = ghcjs_dom_html_element_set_access_key
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"accessKey\"]"
        ghcjs_dom_html_element_get_access_key ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
htmlElementGetAccessKey ::
                        (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetAccessKey self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_access_key
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"innerHTML\"] = $2;"
        ghcjs_dom_html_element_set_inner_html ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerHTML Mozilla HTMLElement.innerHTML documentation> 
htmlElementSetInnerHTML ::
                        (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetInnerHTML self val
  = ghcjs_dom_html_element_set_inner_html
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        ghcjs_dom_html_element_get_inner_html ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerHTML Mozilla HTMLElement.innerHTML documentation> 
htmlElementGetInnerHTML ::
                        (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetInnerHTML self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_inner_html
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"innerText\"] = $2;"
        ghcjs_dom_html_element_set_inner_text ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
htmlElementSetInnerText ::
                        (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetInnerText self val
  = ghcjs_dom_html_element_set_inner_text
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"innerText\"]"
        ghcjs_dom_html_element_get_inner_text ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
htmlElementGetInnerText ::
                        (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetInnerText self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_inner_text
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"outerHTML\"] = $2;"
        ghcjs_dom_html_element_set_outer_html ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerHTML Mozilla HTMLElement.outerHTML documentation> 
htmlElementSetOuterHTML ::
                        (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetOuterHTML self val
  = ghcjs_dom_html_element_set_outer_html
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"outerHTML\"]"
        ghcjs_dom_html_element_get_outer_html ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerHTML Mozilla HTMLElement.outerHTML documentation> 
htmlElementGetOuterHTML ::
                        (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetOuterHTML self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_outer_html
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"outerText\"] = $2;"
        ghcjs_dom_html_element_set_outer_text ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
htmlElementSetOuterText ::
                        (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetOuterText self val
  = ghcjs_dom_html_element_set_outer_text
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"outerText\"]"
        ghcjs_dom_html_element_get_outer_text ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
htmlElementGetOuterText ::
                        (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetOuterText self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_outer_text
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"children\"]"
        ghcjs_dom_html_element_get_children ::
        JSRef HTMLElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.children Mozilla HTMLElement.children documentation> 
htmlElementGetChildren ::
                       (IsHTMLElement self) => self -> IO (Maybe HTMLCollection)
htmlElementGetChildren self
  = (ghcjs_dom_html_element_get_children
       (unHTMLElement (toHTMLElement self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"contentEditable\"] = $2;"
        ghcjs_dom_html_element_set_content_editable ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
htmlElementSetContentEditable ::
                              (IsHTMLElement self, ToJSString val) => self -> val -> IO ()
htmlElementSetContentEditable self val
  = ghcjs_dom_html_element_set_content_editable
      (unHTMLElement (toHTMLElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        ghcjs_dom_html_element_get_content_editable ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
htmlElementGetContentEditable ::
                              (IsHTMLElement self, FromJSString result) => self -> IO result
htmlElementGetContentEditable self
  = fromJSString <$>
      (ghcjs_dom_html_element_get_content_editable
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_is_content_editable ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
htmlElementGetIsContentEditable ::
                                (IsHTMLElement self) => self -> IO Bool
htmlElementGetIsContentEditable self
  = ghcjs_dom_html_element_get_is_content_editable
      (unHTMLElement (toHTMLElement self))
 
foreign import javascript unsafe "$1[\"spellcheck\"] = $2;"
        ghcjs_dom_html_element_set_spellcheck ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
htmlElementSetSpellcheck ::
                         (IsHTMLElement self) => self -> Bool -> IO ()
htmlElementSetSpellcheck self val
  = ghcjs_dom_html_element_set_spellcheck
      (unHTMLElement (toHTMLElement self))
      val
 
foreign import javascript unsafe "($1[\"spellcheck\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_spellcheck ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
htmlElementGetSpellcheck :: (IsHTMLElement self) => self -> IO Bool
htmlElementGetSpellcheck self
  = ghcjs_dom_html_element_get_spellcheck
      (unHTMLElement (toHTMLElement self))
#else
module GHCJS.DOM.HTMLElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLElement
#endif
