{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDocument
       (ghcjs_dom_html_document_open, htmlDocumentOpen,
        ghcjs_dom_html_document_close, htmlDocumentClose,
        ghcjs_dom_html_document_clear, htmlDocumentClear,
        ghcjs_dom_html_document_capture_events, htmlDocumentCaptureEvents,
        ghcjs_dom_html_document_release_events, htmlDocumentReleaseEvents,
        ghcjs_dom_html_document_has_focus, htmlDocumentHasFocus,
        ghcjs_dom_html_document_get_embeds, htmlDocumentGetEmbeds,
        ghcjs_dom_html_document_get_plugins, htmlDocumentGetPlugins,
        ghcjs_dom_html_document_get_scripts, htmlDocumentGetScripts,
        ghcjs_dom_html_document_get_width, htmlDocumentGetWidth,
        ghcjs_dom_html_document_get_height, htmlDocumentGetHeight,
        ghcjs_dom_html_document_set_dir, htmlDocumentSetDir,
        ghcjs_dom_html_document_get_dir, htmlDocumentGetDir,
        ghcjs_dom_html_document_set_design_mode, htmlDocumentSetDesignMode,
        ghcjs_dom_html_document_get_design_mode, htmlDocumentGetDesignMode,
        ghcjs_dom_html_document_get_compat_mode, htmlDocumentGetCompatMode,
        ghcjs_dom_html_document_get_active_element,
        htmlDocumentGetActiveElement, ghcjs_dom_html_document_set_bg_color,
        htmlDocumentSetBgColor, ghcjs_dom_html_document_get_bg_color,
        htmlDocumentGetBgColor, ghcjs_dom_html_document_set_fg_color,
        htmlDocumentSetFgColor, ghcjs_dom_html_document_get_fg_color,
        htmlDocumentGetFgColor, ghcjs_dom_html_document_set_alink_color,
        htmlDocumentSetAlinkColor, ghcjs_dom_html_document_get_alink_color,
        htmlDocumentGetAlinkColor, ghcjs_dom_html_document_set_link_color,
        htmlDocumentSetLinkColor, ghcjs_dom_html_document_get_link_color,
        htmlDocumentGetLinkColor, ghcjs_dom_html_document_set_vlink_color,
        htmlDocumentSetVlinkColor, ghcjs_dom_html_document_get_vlink_color,
        htmlDocumentGetVlinkColor)
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
foreign import javascript unsafe "$1[\"open\"]()"
        ghcjs_dom_html_document_open :: JSRef HTMLDocument -> IO ()
#else 
ghcjs_dom_html_document_open :: JSRef HTMLDocument -> IO ()
ghcjs_dom_html_document_open = undefined
#endif
 
htmlDocumentOpen :: (IsHTMLDocument self) => self -> IO ()
htmlDocumentOpen self
  = ghcjs_dom_html_document_open
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"close\"]()"
        ghcjs_dom_html_document_close :: JSRef HTMLDocument -> IO ()
#else 
ghcjs_dom_html_document_close :: JSRef HTMLDocument -> IO ()
ghcjs_dom_html_document_close = undefined
#endif
 
htmlDocumentClose :: (IsHTMLDocument self) => self -> IO ()
htmlDocumentClose self
  = ghcjs_dom_html_document_close
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]()"
        ghcjs_dom_html_document_clear :: JSRef HTMLDocument -> IO ()
#else 
ghcjs_dom_html_document_clear :: JSRef HTMLDocument -> IO ()
ghcjs_dom_html_document_clear = undefined
#endif
 
htmlDocumentClear :: (IsHTMLDocument self) => self -> IO ()
htmlDocumentClear self
  = ghcjs_dom_html_document_clear
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        ghcjs_dom_html_document_capture_events ::
        JSRef HTMLDocument -> IO ()
#else 
ghcjs_dom_html_document_capture_events ::
                                         JSRef HTMLDocument -> IO ()
ghcjs_dom_html_document_capture_events = undefined
#endif
 
htmlDocumentCaptureEvents :: (IsHTMLDocument self) => self -> IO ()
htmlDocumentCaptureEvents self
  = ghcjs_dom_html_document_capture_events
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        ghcjs_dom_html_document_release_events ::
        JSRef HTMLDocument -> IO ()
#else 
ghcjs_dom_html_document_release_events ::
                                         JSRef HTMLDocument -> IO ()
ghcjs_dom_html_document_release_events = undefined
#endif
 
htmlDocumentReleaseEvents :: (IsHTMLDocument self) => self -> IO ()
htmlDocumentReleaseEvents self
  = ghcjs_dom_html_document_release_events
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"hasFocus\"]() ? 1 : 0)"
        ghcjs_dom_html_document_has_focus :: JSRef HTMLDocument -> IO Bool
#else 
ghcjs_dom_html_document_has_focus :: JSRef HTMLDocument -> IO Bool
ghcjs_dom_html_document_has_focus = undefined
#endif
 
htmlDocumentHasFocus :: (IsHTMLDocument self) => self -> IO Bool
htmlDocumentHasFocus self
  = ghcjs_dom_html_document_has_focus
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"embeds\"]"
        ghcjs_dom_html_document_get_embeds ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_document_get_embeds ::
                                     JSRef HTMLDocument -> IO (JSRef HTMLCollection)
ghcjs_dom_html_document_get_embeds = undefined
#endif
 
htmlDocumentGetEmbeds ::
                      (IsHTMLDocument self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetEmbeds self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_document_get_embeds
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"plugins\"]"
        ghcjs_dom_html_document_get_plugins ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_document_get_plugins ::
                                      JSRef HTMLDocument -> IO (JSRef HTMLCollection)
ghcjs_dom_html_document_get_plugins = undefined
#endif
 
htmlDocumentGetPlugins ::
                       (IsHTMLDocument self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetPlugins self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_document_get_plugins
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scripts\"]"
        ghcjs_dom_html_document_get_scripts ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
ghcjs_dom_html_document_get_scripts ::
                                      JSRef HTMLDocument -> IO (JSRef HTMLCollection)
ghcjs_dom_html_document_get_scripts = undefined
#endif
 
htmlDocumentGetScripts ::
                       (IsHTMLDocument self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetScripts self
  = fmap HTMLCollection . maybeJSNull <$>
      (ghcjs_dom_html_document_get_scripts
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_html_document_get_width :: JSRef HTMLDocument -> IO Int
#else 
ghcjs_dom_html_document_get_width :: JSRef HTMLDocument -> IO Int
ghcjs_dom_html_document_get_width = undefined
#endif
 
htmlDocumentGetWidth :: (IsHTMLDocument self) => self -> IO Int
htmlDocumentGetWidth self
  = ghcjs_dom_html_document_get_width
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        ghcjs_dom_html_document_get_height :: JSRef HTMLDocument -> IO Int
#else 
ghcjs_dom_html_document_get_height :: JSRef HTMLDocument -> IO Int
ghcjs_dom_html_document_get_height = undefined
#endif
 
htmlDocumentGetHeight :: (IsHTMLDocument self) => self -> IO Int
htmlDocumentGetHeight self
  = ghcjs_dom_html_document_get_height
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"] = $2;"
        ghcjs_dom_html_document_set_dir ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_dir ::
                                  JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_dir = undefined
#endif
 
htmlDocumentSetDir ::
                   (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetDir self val
  = ghcjs_dom_html_document_set_dir
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"]"
        ghcjs_dom_html_document_get_dir ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_dir ::
                                  JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_dir = undefined
#endif
 
htmlDocumentGetDir ::
                   (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetDir self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_dir
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"designMode\"] = $2;"
        ghcjs_dom_html_document_set_design_mode ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_design_mode ::
                                          JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_design_mode = undefined
#endif
 
htmlDocumentSetDesignMode ::
                          (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetDesignMode self val
  = ghcjs_dom_html_document_set_design_mode
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"designMode\"]"
        ghcjs_dom_html_document_get_design_mode ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_design_mode ::
                                          JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_design_mode = undefined
#endif
 
htmlDocumentGetDesignMode ::
                          (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetDesignMode self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_design_mode
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compatMode\"]"
        ghcjs_dom_html_document_get_compat_mode ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_compat_mode ::
                                          JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_compat_mode = undefined
#endif
 
htmlDocumentGetCompatMode ::
                          (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetCompatMode self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_compat_mode
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"activeElement\"]"
        ghcjs_dom_html_document_get_active_element ::
        JSRef HTMLDocument -> IO (JSRef Element)
#else 
ghcjs_dom_html_document_get_active_element ::
                                             JSRef HTMLDocument -> IO (JSRef Element)
ghcjs_dom_html_document_get_active_element = undefined
#endif
 
htmlDocumentGetActiveElement ::
                             (IsHTMLDocument self) => self -> IO (Maybe Element)
htmlDocumentGetActiveElement self
  = fmap Element . maybeJSNull <$>
      (ghcjs_dom_html_document_get_active_element
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        ghcjs_dom_html_document_set_bg_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_bg_color ::
                                       JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_bg_color = undefined
#endif
 
htmlDocumentSetBgColor ::
                       (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetBgColor self val
  = ghcjs_dom_html_document_set_bg_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        ghcjs_dom_html_document_get_bg_color ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_bg_color ::
                                       JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_bg_color = undefined
#endif
 
htmlDocumentGetBgColor ::
                       (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetBgColor self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_bg_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fgColor\"] = $2;"
        ghcjs_dom_html_document_set_fg_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_fg_color ::
                                       JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_fg_color = undefined
#endif
 
htmlDocumentSetFgColor ::
                       (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetFgColor self val
  = ghcjs_dom_html_document_set_fg_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fgColor\"]"
        ghcjs_dom_html_document_get_fg_color ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_fg_color ::
                                       JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_fg_color = undefined
#endif
 
htmlDocumentGetFgColor ::
                       (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetFgColor self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_fg_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alinkColor\"] = $2;"
        ghcjs_dom_html_document_set_alink_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_alink_color ::
                                          JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_alink_color = undefined
#endif
 
htmlDocumentSetAlinkColor ::
                          (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetAlinkColor self val
  = ghcjs_dom_html_document_set_alink_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alinkColor\"]"
        ghcjs_dom_html_document_get_alink_color ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_alink_color ::
                                          JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_alink_color = undefined
#endif
 
htmlDocumentGetAlinkColor ::
                          (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetAlinkColor self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_alink_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"linkColor\"] = $2;"
        ghcjs_dom_html_document_set_link_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_link_color ::
                                         JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_link_color = undefined
#endif
 
htmlDocumentSetLinkColor ::
                         (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetLinkColor self val
  = ghcjs_dom_html_document_set_link_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"linkColor\"]"
        ghcjs_dom_html_document_get_link_color ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_link_color ::
                                         JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_link_color = undefined
#endif
 
htmlDocumentGetLinkColor ::
                         (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetLinkColor self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_link_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vlinkColor\"] = $2;"
        ghcjs_dom_html_document_set_vlink_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
ghcjs_dom_html_document_set_vlink_color ::
                                          JSRef HTMLDocument -> JSString -> IO ()
ghcjs_dom_html_document_set_vlink_color = undefined
#endif
 
htmlDocumentSetVlinkColor ::
                          (IsHTMLDocument self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetVlinkColor self val
  = ghcjs_dom_html_document_set_vlink_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vlinkColor\"]"
        ghcjs_dom_html_document_get_vlink_color ::
        JSRef HTMLDocument -> IO JSString
#else 
ghcjs_dom_html_document_get_vlink_color ::
                                          JSRef HTMLDocument -> IO JSString
ghcjs_dom_html_document_get_vlink_color = undefined
#endif
 
htmlDocumentGetVlinkColor ::
                          (IsHTMLDocument self, FromJSString result) => self -> IO result
htmlDocumentGetVlinkColor self
  = fromJSString <$>
      (ghcjs_dom_html_document_get_vlink_color
         (unHTMLDocument (toHTMLDocument self)))