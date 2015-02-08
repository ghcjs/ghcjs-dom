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
import Control.Monad.IO.Class (MonadIO(..))
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
                                 (MonadIO m, IsHTMLElement self, ToJSString where',
                                  IsElement element) =>
                                   self -> where' -> Maybe element -> m (Maybe Element)
htmlElementInsertAdjacentElement self where' element
  = liftIO
      ((ghcjs_dom_html_element_insert_adjacent_element
          (unHTMLElement (toHTMLElement self))
          (toJSString where')
          (maybe jsNull (unElement . toElement) element))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"insertAdjacentHTML\"]($2, $3)"
        ghcjs_dom_html_element_insert_adjacent_html ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentHTML Mozilla HTMLElement.insertAdjacentHTML documentation> 
htmlElementInsertAdjacentHTML ::
                              (MonadIO m, IsHTMLElement self, ToJSString where',
                               ToJSString html) =>
                                self -> where' -> html -> m ()
htmlElementInsertAdjacentHTML self where' html
  = liftIO
      (ghcjs_dom_html_element_insert_adjacent_html
         (unHTMLElement (toHTMLElement self))
         (toJSString where')
         (toJSString html))
 
foreign import javascript unsafe
        "$1[\"insertAdjacentText\"]($2, $3)"
        ghcjs_dom_html_element_insert_adjacent_text ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentText Mozilla HTMLElement.insertAdjacentText documentation> 
htmlElementInsertAdjacentText ::
                              (MonadIO m, IsHTMLElement self, ToJSString where',
                               ToJSString text) =>
                                self -> where' -> text -> m ()
htmlElementInsertAdjacentText self where' text
  = liftIO
      (ghcjs_dom_html_element_insert_adjacent_text
         (unHTMLElement (toHTMLElement self))
         (toJSString where')
         (toJSString text))
 
foreign import javascript unsafe "$1[\"click\"]()"
        ghcjs_dom_html_element_click :: JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
htmlElementClick :: (MonadIO m, IsHTMLElement self) => self -> m ()
htmlElementClick self
  = liftIO
      (ghcjs_dom_html_element_click (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_html_element_set_title ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
htmlElementSetTitle ::
                    (MonadIO m, IsHTMLElement self, ToJSString val) =>
                      self -> val -> m ()
htmlElementSetTitle self val
  = liftIO
      (ghcjs_dom_html_element_set_title
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_html_element_get_title ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
htmlElementGetTitle ::
                    (MonadIO m, IsHTMLElement self, FromJSString result) =>
                      self -> m result
htmlElementGetTitle self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_title
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;"
        ghcjs_dom_html_element_set_lang ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
htmlElementSetLang ::
                   (MonadIO m, IsHTMLElement self, ToJSString val) =>
                     self -> val -> m ()
htmlElementSetLang self val
  = liftIO
      (ghcjs_dom_html_element_set_lang
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"lang\"]"
        ghcjs_dom_html_element_get_lang :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
htmlElementGetLang ::
                   (MonadIO m, IsHTMLElement self, FromJSString result) =>
                     self -> m result
htmlElementGetLang self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_lang
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"translate\"] = $2;"
        ghcjs_dom_html_element_set_translate ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
htmlElementSetTranslate ::
                        (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
htmlElementSetTranslate self val
  = liftIO
      (ghcjs_dom_html_element_set_translate
         (unHTMLElement (toHTMLElement self))
         val)
 
foreign import javascript unsafe "($1[\"translate\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_translate ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
htmlElementGetTranslate ::
                        (MonadIO m, IsHTMLElement self) => self -> m Bool
htmlElementGetTranslate self
  = liftIO
      (ghcjs_dom_html_element_get_translate
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;"
        ghcjs_dom_html_element_set_dir ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
htmlElementSetDir ::
                  (MonadIO m, IsHTMLElement self, ToJSString val) =>
                    self -> val -> m ()
htmlElementSetDir self val
  = liftIO
      (ghcjs_dom_html_element_set_dir
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]"
        ghcjs_dom_html_element_get_dir :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
htmlElementGetDir ::
                  (MonadIO m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
htmlElementGetDir self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_dir
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        ghcjs_dom_html_element_set_tab_index ::
        JSRef HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
htmlElementSetTabIndex ::
                       (MonadIO m, IsHTMLElement self) => self -> Int -> m ()
htmlElementSetTabIndex self val
  = liftIO
      (ghcjs_dom_html_element_set_tab_index
         (unHTMLElement (toHTMLElement self))
         val)
 
foreign import javascript unsafe "$1[\"tabIndex\"]"
        ghcjs_dom_html_element_get_tab_index :: JSRef HTMLElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
htmlElementGetTabIndex ::
                       (MonadIO m, IsHTMLElement self) => self -> m Int
htmlElementGetTabIndex self
  = liftIO
      (ghcjs_dom_html_element_get_tab_index
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"draggable\"] = $2;"
        ghcjs_dom_html_element_set_draggable ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
htmlElementSetDraggable ::
                        (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
htmlElementSetDraggable self val
  = liftIO
      (ghcjs_dom_html_element_set_draggable
         (unHTMLElement (toHTMLElement self))
         val)
 
foreign import javascript unsafe "($1[\"draggable\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_draggable ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
htmlElementGetDraggable ::
                        (MonadIO m, IsHTMLElement self) => self -> m Bool
htmlElementGetDraggable self
  = liftIO
      (ghcjs_dom_html_element_get_draggable
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"] = $2;"
        ghcjs_dom_html_element_set_webkitdropzone ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
htmlElementSetWebkitdropzone ::
                             (MonadIO m, IsHTMLElement self, ToJSString val) =>
                               self -> val -> m ()
htmlElementSetWebkitdropzone self val
  = liftIO
      (ghcjs_dom_html_element_set_webkitdropzone
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"]"
        ghcjs_dom_html_element_get_webkitdropzone ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
htmlElementGetWebkitdropzone ::
                             (MonadIO m, IsHTMLElement self, FromJSString result) =>
                               self -> m result
htmlElementGetWebkitdropzone self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_webkitdropzone
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"hidden\"] = $2;"
        ghcjs_dom_html_element_set_hidden ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
htmlElementSetHidden ::
                     (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
htmlElementSetHidden self val
  = liftIO
      (ghcjs_dom_html_element_set_hidden
         (unHTMLElement (toHTMLElement self))
         val)
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_hidden :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
htmlElementGetHidden ::
                     (MonadIO m, IsHTMLElement self) => self -> m Bool
htmlElementGetHidden self
  = liftIO
      (ghcjs_dom_html_element_get_hidden
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"accessKey\"] = $2;"
        ghcjs_dom_html_element_set_access_key ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
htmlElementSetAccessKey ::
                        (MonadIO m, IsHTMLElement self, ToJSString val) =>
                          self -> val -> m ()
htmlElementSetAccessKey self val
  = liftIO
      (ghcjs_dom_html_element_set_access_key
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"accessKey\"]"
        ghcjs_dom_html_element_get_access_key ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
htmlElementGetAccessKey ::
                        (MonadIO m, IsHTMLElement self, FromJSString result) =>
                          self -> m result
htmlElementGetAccessKey self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_access_key
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"innerHTML\"] = $2;"
        ghcjs_dom_html_element_set_inner_html ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerHTML Mozilla HTMLElement.innerHTML documentation> 
htmlElementSetInnerHTML ::
                        (MonadIO m, IsHTMLElement self, ToJSString val) =>
                          self -> val -> m ()
htmlElementSetInnerHTML self val
  = liftIO
      (ghcjs_dom_html_element_set_inner_html
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"innerHTML\"]"
        ghcjs_dom_html_element_get_inner_html ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerHTML Mozilla HTMLElement.innerHTML documentation> 
htmlElementGetInnerHTML ::
                        (MonadIO m, IsHTMLElement self, FromJSString result) =>
                          self -> m result
htmlElementGetInnerHTML self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_inner_html
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"innerText\"] = $2;"
        ghcjs_dom_html_element_set_inner_text ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
htmlElementSetInnerText ::
                        (MonadIO m, IsHTMLElement self, ToJSString val) =>
                          self -> val -> m ()
htmlElementSetInnerText self val
  = liftIO
      (ghcjs_dom_html_element_set_inner_text
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"innerText\"]"
        ghcjs_dom_html_element_get_inner_text ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
htmlElementGetInnerText ::
                        (MonadIO m, IsHTMLElement self, FromJSString result) =>
                          self -> m result
htmlElementGetInnerText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_inner_text
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"outerHTML\"] = $2;"
        ghcjs_dom_html_element_set_outer_html ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerHTML Mozilla HTMLElement.outerHTML documentation> 
htmlElementSetOuterHTML ::
                        (MonadIO m, IsHTMLElement self, ToJSString val) =>
                          self -> val -> m ()
htmlElementSetOuterHTML self val
  = liftIO
      (ghcjs_dom_html_element_set_outer_html
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"outerHTML\"]"
        ghcjs_dom_html_element_get_outer_html ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerHTML Mozilla HTMLElement.outerHTML documentation> 
htmlElementGetOuterHTML ::
                        (MonadIO m, IsHTMLElement self, FromJSString result) =>
                          self -> m result
htmlElementGetOuterHTML self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_outer_html
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"outerText\"] = $2;"
        ghcjs_dom_html_element_set_outer_text ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
htmlElementSetOuterText ::
                        (MonadIO m, IsHTMLElement self, ToJSString val) =>
                          self -> val -> m ()
htmlElementSetOuterText self val
  = liftIO
      (ghcjs_dom_html_element_set_outer_text
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"outerText\"]"
        ghcjs_dom_html_element_get_outer_text ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
htmlElementGetOuterText ::
                        (MonadIO m, IsHTMLElement self, FromJSString result) =>
                          self -> m result
htmlElementGetOuterText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_outer_text
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"children\"]"
        ghcjs_dom_html_element_get_children ::
        JSRef HTMLElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.children Mozilla HTMLElement.children documentation> 
htmlElementGetChildren ::
                       (MonadIO m, IsHTMLElement self) => self -> m (Maybe HTMLCollection)
htmlElementGetChildren self
  = liftIO
      ((ghcjs_dom_html_element_get_children
          (unHTMLElement (toHTMLElement self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentEditable\"] = $2;"
        ghcjs_dom_html_element_set_content_editable ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
htmlElementSetContentEditable ::
                              (MonadIO m, IsHTMLElement self, ToJSString val) =>
                                self -> val -> m ()
htmlElementSetContentEditable self val
  = liftIO
      (ghcjs_dom_html_element_set_content_editable
         (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        ghcjs_dom_html_element_get_content_editable ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
htmlElementGetContentEditable ::
                              (MonadIO m, IsHTMLElement self, FromJSString result) =>
                                self -> m result
htmlElementGetContentEditable self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_element_get_content_editable
            (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_is_content_editable ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
htmlElementGetIsContentEditable ::
                                (MonadIO m, IsHTMLElement self) => self -> m Bool
htmlElementGetIsContentEditable self
  = liftIO
      (ghcjs_dom_html_element_get_is_content_editable
         (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"spellcheck\"] = $2;"
        ghcjs_dom_html_element_set_spellcheck ::
        JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
htmlElementSetSpellcheck ::
                         (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
htmlElementSetSpellcheck self val
  = liftIO
      (ghcjs_dom_html_element_set_spellcheck
         (unHTMLElement (toHTMLElement self))
         val)
 
foreign import javascript unsafe "($1[\"spellcheck\"] ? 1 : 0)"
        ghcjs_dom_html_element_get_spellcheck ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
htmlElementGetSpellcheck ::
                         (MonadIO m, IsHTMLElement self) => self -> m Bool
htmlElementGetSpellcheck self
  = liftIO
      (ghcjs_dom_html_element_get_spellcheck
         (unHTMLElement (toHTMLElement self)))
#else
module GHCJS.DOM.HTMLElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLElement
#endif
