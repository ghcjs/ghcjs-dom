{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableColElement
       (ghcjs_dom_html_table_col_element_set_align,
        htmlTableColElementSetAlign,
        ghcjs_dom_html_table_col_element_get_align,
        htmlTableColElementGetAlign,
        ghcjs_dom_html_table_col_element_set_ch, htmlTableColElementSetCh,
        ghcjs_dom_html_table_col_element_get_ch, htmlTableColElementGetCh,
        ghcjs_dom_html_table_col_element_set_ch_off,
        htmlTableColElementSetChOff,
        ghcjs_dom_html_table_col_element_get_ch_off,
        htmlTableColElementGetChOff,
        ghcjs_dom_html_table_col_element_set_span,
        htmlTableColElementSetSpan,
        ghcjs_dom_html_table_col_element_get_span,
        htmlTableColElementGetSpan,
        ghcjs_dom_html_table_col_element_set_v_align,
        htmlTableColElementSetVAlign,
        ghcjs_dom_html_table_col_element_get_v_align,
        htmlTableColElementGetVAlign,
        ghcjs_dom_html_table_col_element_set_width,
        htmlTableColElementSetWidth,
        ghcjs_dom_html_table_col_element_get_width,
        htmlTableColElementGetWidth, HTMLTableColElement,
        IsHTMLTableColElement, castToHTMLTableColElement,
        gTypeHTMLTableColElement, toHTMLTableColElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_col_element_set_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
htmlTableColElementSetAlign ::
                            (MonadIO m, IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> m ()
htmlTableColElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_align
         (unHTMLTableColElement (toHTMLTableColElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_col_element_get_align ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
htmlTableColElementGetAlign ::
                            (MonadIO m, IsHTMLTableColElement self, FromJSString result) =>
                              self -> m result
htmlTableColElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_col_element_get_align
            (unHTMLTableColElement (toHTMLTableColElement self))))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;"
        ghcjs_dom_html_table_col_element_set_ch ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
htmlTableColElementSetCh ::
                         (MonadIO m, IsHTMLTableColElement self, ToJSString val) =>
                           self -> val -> m ()
htmlTableColElementSetCh self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_ch
         (unHTMLTableColElement (toHTMLTableColElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]"
        ghcjs_dom_html_table_col_element_get_ch ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
htmlTableColElementGetCh ::
                         (MonadIO m, IsHTMLTableColElement self, FromJSString result) =>
                           self -> m result
htmlTableColElementGetCh self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_col_element_get_ch
            (unHTMLTableColElement (toHTMLTableColElement self))))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;"
        ghcjs_dom_html_table_col_element_set_ch_off ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
htmlTableColElementSetChOff ::
                            (MonadIO m, IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> m ()
htmlTableColElementSetChOff self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_ch_off
         (unHTMLTableColElement (toHTMLTableColElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]"
        ghcjs_dom_html_table_col_element_get_ch_off ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
htmlTableColElementGetChOff ::
                            (MonadIO m, IsHTMLTableColElement self, FromJSString result) =>
                              self -> m result
htmlTableColElementGetChOff self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_col_element_get_ch_off
            (unHTMLTableColElement (toHTMLTableColElement self))))
 
foreign import javascript unsafe "$1[\"span\"] = $2;"
        ghcjs_dom_html_table_col_element_set_span ::
        JSRef HTMLTableColElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
htmlTableColElementSetSpan ::
                           (MonadIO m, IsHTMLTableColElement self) => self -> Int -> m ()
htmlTableColElementSetSpan self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_span
         (unHTMLTableColElement (toHTMLTableColElement self))
         val)
 
foreign import javascript unsafe "$1[\"span\"]"
        ghcjs_dom_html_table_col_element_get_span ::
        JSRef HTMLTableColElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
htmlTableColElementGetSpan ::
                           (MonadIO m, IsHTMLTableColElement self) => self -> m Int
htmlTableColElementGetSpan self
  = liftIO
      (ghcjs_dom_html_table_col_element_get_span
         (unHTMLTableColElement (toHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        ghcjs_dom_html_table_col_element_set_v_align ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
htmlTableColElementSetVAlign ::
                             (MonadIO m, IsHTMLTableColElement self, ToJSString val) =>
                               self -> val -> m ()
htmlTableColElementSetVAlign self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_v_align
         (unHTMLTableColElement (toHTMLTableColElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]"
        ghcjs_dom_html_table_col_element_get_v_align ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
htmlTableColElementGetVAlign ::
                             (MonadIO m, IsHTMLTableColElement self, FromJSString result) =>
                               self -> m result
htmlTableColElementGetVAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_col_element_get_v_align
            (unHTMLTableColElement (toHTMLTableColElement self))))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_table_col_element_set_width ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
htmlTableColElementSetWidth ::
                            (MonadIO m, IsHTMLTableColElement self, ToJSString val) =>
                              self -> val -> m ()
htmlTableColElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_table_col_element_set_width
         (unHTMLTableColElement (toHTMLTableColElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_table_col_element_get_width ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
htmlTableColElementGetWidth ::
                            (MonadIO m, IsHTMLTableColElement self, FromJSString result) =>
                              self -> m result
htmlTableColElementGetWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_table_col_element_get_width
            (unHTMLTableColElement (toHTMLTableColElement self))))
#else
module GHCJS.DOM.HTMLTableColElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
#endif
