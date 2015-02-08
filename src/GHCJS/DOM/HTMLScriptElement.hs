{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLScriptElement
       (ghcjs_dom_html_script_element_set_text, htmlScriptElementSetText,
        ghcjs_dom_html_script_element_get_text, htmlScriptElementGetText,
        ghcjs_dom_html_script_element_set_html_for,
        htmlScriptElementSetHtmlFor,
        ghcjs_dom_html_script_element_get_html_for,
        htmlScriptElementGetHtmlFor,
        ghcjs_dom_html_script_element_set_event, htmlScriptElementSetEvent,
        ghcjs_dom_html_script_element_get_event, htmlScriptElementGetEvent,
        ghcjs_dom_html_script_element_set_charset,
        htmlScriptElementSetCharset,
        ghcjs_dom_html_script_element_get_charset,
        htmlScriptElementGetCharset,
        ghcjs_dom_html_script_element_set_async, htmlScriptElementSetAsync,
        ghcjs_dom_html_script_element_get_async, htmlScriptElementGetAsync,
        ghcjs_dom_html_script_element_set_defer, htmlScriptElementSetDefer,
        ghcjs_dom_html_script_element_get_defer, htmlScriptElementGetDefer,
        ghcjs_dom_html_script_element_set_src, htmlScriptElementSetSrc,
        ghcjs_dom_html_script_element_get_src, htmlScriptElementGetSrc,
        ghcjs_dom_html_script_element_set_cross_origin,
        htmlScriptElementSetCrossOrigin,
        ghcjs_dom_html_script_element_get_cross_origin,
        htmlScriptElementGetCrossOrigin,
        ghcjs_dom_html_script_element_set_nonce, htmlScriptElementSetNonce,
        ghcjs_dom_html_script_element_get_nonce, htmlScriptElementGetNonce,
        HTMLScriptElement, IsHTMLScriptElement, castToHTMLScriptElement,
        gTypeHTMLScriptElement, toHTMLScriptElement)
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

 
foreign import javascript unsafe "$1[\"text\"] = $2;"
        ghcjs_dom_html_script_element_set_text ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
htmlScriptElementSetText ::
                         (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                           self -> val -> m ()
htmlScriptElementSetText self val
  = liftIO
      (ghcjs_dom_html_script_element_set_text
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]"
        ghcjs_dom_html_script_element_get_text ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.text Mozilla HTMLScriptElement.text documentation> 
htmlScriptElementGetText ::
                         (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                           self -> m result
htmlScriptElementGetText self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_text
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"htmlFor\"] = $2;"
        ghcjs_dom_html_script_element_set_html_for ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
htmlScriptElementSetHtmlFor ::
                            (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                              self -> val -> m ()
htmlScriptElementSetHtmlFor self val
  = liftIO
      (ghcjs_dom_html_script_element_set_html_for
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"htmlFor\"]"
        ghcjs_dom_html_script_element_get_html_for ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.htmlFor Mozilla HTMLScriptElement.htmlFor documentation> 
htmlScriptElementGetHtmlFor ::
                            (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                              self -> m result
htmlScriptElementGetHtmlFor self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_html_for
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"event\"] = $2;"
        ghcjs_dom_html_script_element_set_event ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
htmlScriptElementSetEvent ::
                          (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                            self -> val -> m ()
htmlScriptElementSetEvent self val
  = liftIO
      (ghcjs_dom_html_script_element_set_event
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"event\"]"
        ghcjs_dom_html_script_element_get_event ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.event Mozilla HTMLScriptElement.event documentation> 
htmlScriptElementGetEvent ::
                          (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                            self -> m result
htmlScriptElementGetEvent self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_event
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"charset\"] = $2;"
        ghcjs_dom_html_script_element_set_charset ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
htmlScriptElementSetCharset ::
                            (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                              self -> val -> m ()
htmlScriptElementSetCharset self val
  = liftIO
      (ghcjs_dom_html_script_element_set_charset
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"charset\"]"
        ghcjs_dom_html_script_element_get_charset ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.charset Mozilla HTMLScriptElement.charset documentation> 
htmlScriptElementGetCharset ::
                            (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                              self -> m result
htmlScriptElementGetCharset self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_charset
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"async\"] = $2;"
        ghcjs_dom_html_script_element_set_async ::
        JSRef HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
htmlScriptElementSetAsync ::
                          (MonadIO m, IsHTMLScriptElement self) => self -> Bool -> m ()
htmlScriptElementSetAsync self val
  = liftIO
      (ghcjs_dom_html_script_element_set_async
         (unHTMLScriptElement (toHTMLScriptElement self))
         val)
 
foreign import javascript unsafe "($1[\"async\"] ? 1 : 0)"
        ghcjs_dom_html_script_element_get_async ::
        JSRef HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.async Mozilla HTMLScriptElement.async documentation> 
htmlScriptElementGetAsync ::
                          (MonadIO m, IsHTMLScriptElement self) => self -> m Bool
htmlScriptElementGetAsync self
  = liftIO
      (ghcjs_dom_html_script_element_get_async
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"defer\"] = $2;"
        ghcjs_dom_html_script_element_set_defer ::
        JSRef HTMLScriptElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
htmlScriptElementSetDefer ::
                          (MonadIO m, IsHTMLScriptElement self) => self -> Bool -> m ()
htmlScriptElementSetDefer self val
  = liftIO
      (ghcjs_dom_html_script_element_set_defer
         (unHTMLScriptElement (toHTMLScriptElement self))
         val)
 
foreign import javascript unsafe "($1[\"defer\"] ? 1 : 0)"
        ghcjs_dom_html_script_element_get_defer ::
        JSRef HTMLScriptElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.defer Mozilla HTMLScriptElement.defer documentation> 
htmlScriptElementGetDefer ::
                          (MonadIO m, IsHTMLScriptElement self) => self -> m Bool
htmlScriptElementGetDefer self
  = liftIO
      (ghcjs_dom_html_script_element_get_defer
         (unHTMLScriptElement (toHTMLScriptElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;"
        ghcjs_dom_html_script_element_set_src ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
htmlScriptElementSetSrc ::
                        (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                          self -> val -> m ()
htmlScriptElementSetSrc self val
  = liftIO
      (ghcjs_dom_html_script_element_set_src
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]"
        ghcjs_dom_html_script_element_get_src ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.src Mozilla HTMLScriptElement.src documentation> 
htmlScriptElementGetSrc ::
                        (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                          self -> m result
htmlScriptElementGetSrc self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_src
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"crossOrigin\"] = $2;"
        ghcjs_dom_html_script_element_set_cross_origin ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
htmlScriptElementSetCrossOrigin ::
                                (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                                  self -> val -> m ()
htmlScriptElementSetCrossOrigin self val
  = liftIO
      (ghcjs_dom_html_script_element_set_cross_origin
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"crossOrigin\"]"
        ghcjs_dom_html_script_element_get_cross_origin ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.crossOrigin Mozilla HTMLScriptElement.crossOrigin documentation> 
htmlScriptElementGetCrossOrigin ::
                                (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                                  self -> m result
htmlScriptElementGetCrossOrigin self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_cross_origin
            (unHTMLScriptElement (toHTMLScriptElement self))))
 
foreign import javascript unsafe "$1[\"nonce\"] = $2;"
        ghcjs_dom_html_script_element_set_nonce ::
        JSRef HTMLScriptElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
htmlScriptElementSetNonce ::
                          (MonadIO m, IsHTMLScriptElement self, ToJSString val) =>
                            self -> val -> m ()
htmlScriptElementSetNonce self val
  = liftIO
      (ghcjs_dom_html_script_element_set_nonce
         (unHTMLScriptElement (toHTMLScriptElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"nonce\"]"
        ghcjs_dom_html_script_element_get_nonce ::
        JSRef HTMLScriptElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLScriptElement.nonce Mozilla HTMLScriptElement.nonce documentation> 
htmlScriptElementGetNonce ::
                          (MonadIO m, IsHTMLScriptElement self, FromJSString result) =>
                            self -> m result
htmlScriptElementGetNonce self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_script_element_get_nonce
            (unHTMLScriptElement (toHTMLScriptElement self))))
#else
module GHCJS.DOM.HTMLScriptElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLScriptElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLScriptElement
#endif
