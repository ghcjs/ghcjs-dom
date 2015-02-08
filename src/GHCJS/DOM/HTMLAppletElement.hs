{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLAppletElement
       (ghcjs_dom_html_applet_element_set_align,
        htmlAppletElementSetAlign, ghcjs_dom_html_applet_element_get_align,
        htmlAppletElementGetAlign, ghcjs_dom_html_applet_element_set_alt,
        htmlAppletElementSetAlt, ghcjs_dom_html_applet_element_get_alt,
        htmlAppletElementGetAlt, ghcjs_dom_html_applet_element_set_archive,
        htmlAppletElementSetArchive,
        ghcjs_dom_html_applet_element_get_archive,
        htmlAppletElementGetArchive,
        ghcjs_dom_html_applet_element_set_code, htmlAppletElementSetCode,
        ghcjs_dom_html_applet_element_get_code, htmlAppletElementGetCode,
        ghcjs_dom_html_applet_element_set_code_base,
        htmlAppletElementSetCodeBase,
        ghcjs_dom_html_applet_element_get_code_base,
        htmlAppletElementGetCodeBase,
        ghcjs_dom_html_applet_element_set_height,
        htmlAppletElementSetHeight,
        ghcjs_dom_html_applet_element_get_height,
        htmlAppletElementGetHeight,
        ghcjs_dom_html_applet_element_set_hspace,
        htmlAppletElementSetHspace,
        ghcjs_dom_html_applet_element_get_hspace,
        htmlAppletElementGetHspace, ghcjs_dom_html_applet_element_set_name,
        htmlAppletElementSetName, ghcjs_dom_html_applet_element_get_name,
        htmlAppletElementGetName, ghcjs_dom_html_applet_element_set_object,
        htmlAppletElementSetObject,
        ghcjs_dom_html_applet_element_get_object,
        htmlAppletElementGetObject,
        ghcjs_dom_html_applet_element_set_vspace,
        htmlAppletElementSetVspace,
        ghcjs_dom_html_applet_element_get_vspace,
        htmlAppletElementGetVspace,
        ghcjs_dom_html_applet_element_set_width, htmlAppletElementSetWidth,
        ghcjs_dom_html_applet_element_get_width, htmlAppletElementGetWidth,
        HTMLAppletElement, IsHTMLAppletElement, castToHTMLAppletElement,
        gTypeHTMLAppletElement, toHTMLAppletElement)
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
        ghcjs_dom_html_applet_element_set_align ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
htmlAppletElementSetAlign ::
                          (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                            self -> val -> m ()
htmlAppletElementSetAlign self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_align
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_applet_element_get_align ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.align Mozilla HTMLAppletElement.align documentation> 
htmlAppletElementGetAlign ::
                          (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                            self -> m result
htmlAppletElementGetAlign self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_align
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"alt\"] = $2;"
        ghcjs_dom_html_applet_element_set_alt ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
htmlAppletElementSetAlt ::
                        (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                          self -> val -> m ()
htmlAppletElementSetAlt self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_alt
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"alt\"]"
        ghcjs_dom_html_applet_element_get_alt ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.alt Mozilla HTMLAppletElement.alt documentation> 
htmlAppletElementGetAlt ::
                        (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                          self -> m result
htmlAppletElementGetAlt self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_alt
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"archive\"] = $2;"
        ghcjs_dom_html_applet_element_set_archive ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
htmlAppletElementSetArchive ::
                            (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                              self -> val -> m ()
htmlAppletElementSetArchive self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_archive
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"archive\"]"
        ghcjs_dom_html_applet_element_get_archive ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.archive Mozilla HTMLAppletElement.archive documentation> 
htmlAppletElementGetArchive ::
                            (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                              self -> m result
htmlAppletElementGetArchive self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_archive
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"code\"] = $2;"
        ghcjs_dom_html_applet_element_set_code ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
htmlAppletElementSetCode ::
                         (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAppletElementSetCode self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_code
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_html_applet_element_get_code ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.code Mozilla HTMLAppletElement.code documentation> 
htmlAppletElementGetCode ::
                         (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                           self -> m result
htmlAppletElementGetCode self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_code
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"codeBase\"] = $2;"
        ghcjs_dom_html_applet_element_set_code_base ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
htmlAppletElementSetCodeBase ::
                             (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                               self -> val -> m ()
htmlAppletElementSetCodeBase self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_code_base
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"codeBase\"]"
        ghcjs_dom_html_applet_element_get_code_base ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.codeBase Mozilla HTMLAppletElement.codeBase documentation> 
htmlAppletElementGetCodeBase ::
                             (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                               self -> m result
htmlAppletElementGetCodeBase self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_code_base
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        ghcjs_dom_html_applet_element_set_height ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
htmlAppletElementSetHeight ::
                           (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                             self -> val -> m ()
htmlAppletElementSetHeight self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_height
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_applet_element_get_height ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.height Mozilla HTMLAppletElement.height documentation> 
htmlAppletElementGetHeight ::
                           (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                             self -> m result
htmlAppletElementGetHeight self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_height
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"hspace\"] = $2;"
        ghcjs_dom_html_applet_element_set_hspace ::
        JSRef HTMLAppletElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
htmlAppletElementSetHspace ::
                           (MonadIO m, IsHTMLAppletElement self) => self -> Int -> m ()
htmlAppletElementSetHspace self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_hspace
         (unHTMLAppletElement (toHTMLAppletElement self))
         val)
 
foreign import javascript unsafe "$1[\"hspace\"]"
        ghcjs_dom_html_applet_element_get_hspace ::
        JSRef HTMLAppletElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.hspace Mozilla HTMLAppletElement.hspace documentation> 
htmlAppletElementGetHspace ::
                           (MonadIO m, IsHTMLAppletElement self) => self -> m Int
htmlAppletElementGetHspace self
  = liftIO
      (ghcjs_dom_html_applet_element_get_hspace
         (unHTMLAppletElement (toHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;"
        ghcjs_dom_html_applet_element_set_name ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
htmlAppletElementSetName ::
                         (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                           self -> val -> m ()
htmlAppletElementSetName self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_name
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_html_applet_element_get_name ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.name Mozilla HTMLAppletElement.name documentation> 
htmlAppletElementGetName ::
                         (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                           self -> m result
htmlAppletElementGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_name
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"object\"] = $2;"
        ghcjs_dom_html_applet_element_set_object ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
htmlAppletElementSetObject ::
                           (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                             self -> val -> m ()
htmlAppletElementSetObject self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_object
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"object\"]"
        ghcjs_dom_html_applet_element_get_object ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.object Mozilla HTMLAppletElement.object documentation> 
htmlAppletElementGetObject ::
                           (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                             self -> m result
htmlAppletElementGetObject self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_object
            (unHTMLAppletElement (toHTMLAppletElement self))))
 
foreign import javascript unsafe "$1[\"vspace\"] = $2;"
        ghcjs_dom_html_applet_element_set_vspace ::
        JSRef HTMLAppletElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
htmlAppletElementSetVspace ::
                           (MonadIO m, IsHTMLAppletElement self) => self -> Int -> m ()
htmlAppletElementSetVspace self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_vspace
         (unHTMLAppletElement (toHTMLAppletElement self))
         val)
 
foreign import javascript unsafe "$1[\"vspace\"]"
        ghcjs_dom_html_applet_element_get_vspace ::
        JSRef HTMLAppletElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.vspace Mozilla HTMLAppletElement.vspace documentation> 
htmlAppletElementGetVspace ::
                           (MonadIO m, IsHTMLAppletElement self) => self -> m Int
htmlAppletElementGetVspace self
  = liftIO
      (ghcjs_dom_html_applet_element_get_vspace
         (unHTMLAppletElement (toHTMLAppletElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_html_applet_element_set_width ::
        JSRef HTMLAppletElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
htmlAppletElementSetWidth ::
                          (MonadIO m, IsHTMLAppletElement self, ToJSString val) =>
                            self -> val -> m ()
htmlAppletElementSetWidth self val
  = liftIO
      (ghcjs_dom_html_applet_element_set_width
         (unHTMLAppletElement (toHTMLAppletElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_applet_element_get_width ::
        JSRef HTMLAppletElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLAppletElement.width Mozilla HTMLAppletElement.width documentation> 
htmlAppletElementGetWidth ::
                          (MonadIO m, IsHTMLAppletElement self, FromJSString result) =>
                            self -> m result
htmlAppletElementGetWidth self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_html_applet_element_get_width
            (unHTMLAppletElement (toHTMLAppletElement self))))
#else
module GHCJS.DOM.HTMLAppletElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLAppletElement
#endif
