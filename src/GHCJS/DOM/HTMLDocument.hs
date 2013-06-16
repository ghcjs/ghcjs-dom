{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLDocument
       (webkit_dom_html_document_open, htmlDocumentOpen,
        webkit_dom_html_document_close, htmlDocumentClose,
        webkit_dom_html_document_clear, htmlDocumentClear,
        webkit_dom_html_document_capture_events, htmlDocumentCaptureEvents,
        webkit_dom_html_document_release_events, htmlDocumentReleaseEvents,
        webkit_dom_html_document_has_focus, htmlDocumentHasFocus,
        webkit_dom_html_document_get_embeds, htmlDocumentGetEmbeds,
        webkit_dom_html_document_get_plugins, htmlDocumentGetPlugins,
        webkit_dom_html_document_get_scripts, htmlDocumentGetScripts,
        webkit_dom_html_document_get_width, htmlDocumentGetWidth,
        webkit_dom_html_document_get_height, htmlDocumentGetHeight,
        webkit_dom_html_document_set_dir, htmlDocumentSetDir,
        webkit_dom_html_document_get_dir, htmlDocumentGetDir,
        webkit_dom_html_document_set_design_mode,
        htmlDocumentSetDesignMode,
        webkit_dom_html_document_get_design_mode,
        htmlDocumentGetDesignMode,
        webkit_dom_html_document_get_compat_mode,
        htmlDocumentGetCompatMode,
        webkit_dom_html_document_get_active_element,
        htmlDocumentGetActiveElement,
        webkit_dom_html_document_set_bg_color, htmlDocumentSetBgColor,
        webkit_dom_html_document_get_bg_color, htmlDocumentGetBgColor,
        webkit_dom_html_document_set_fg_color, htmlDocumentSetFgColor,
        webkit_dom_html_document_get_fg_color, htmlDocumentGetFgColor,
        webkit_dom_html_document_set_alink_color,
        htmlDocumentSetAlinkColor,
        webkit_dom_html_document_get_alink_color,
        htmlDocumentGetAlinkColor, webkit_dom_html_document_set_link_color,
        htmlDocumentSetLinkColor, webkit_dom_html_document_get_link_color,
        htmlDocumentGetLinkColor, webkit_dom_html_document_set_vlink_color,
        htmlDocumentSetVlinkColor,
        webkit_dom_html_document_get_vlink_color,
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
        webkit_dom_html_document_open :: JSRef HTMLDocument -> IO ()
#else 
webkit_dom_html_document_open :: JSRef HTMLDocument -> IO ()
webkit_dom_html_document_open = undefined
#endif
 
htmlDocumentOpen :: (HTMLDocumentClass self) => self -> IO ()
htmlDocumentOpen self
  = webkit_dom_html_document_open
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"close\"]()"
        webkit_dom_html_document_close :: JSRef HTMLDocument -> IO ()
#else 
webkit_dom_html_document_close :: JSRef HTMLDocument -> IO ()
webkit_dom_html_document_close = undefined
#endif
 
htmlDocumentClose :: (HTMLDocumentClass self) => self -> IO ()
htmlDocumentClose self
  = webkit_dom_html_document_close
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"clear\"]()"
        webkit_dom_html_document_clear :: JSRef HTMLDocument -> IO ()
#else 
webkit_dom_html_document_clear :: JSRef HTMLDocument -> IO ()
webkit_dom_html_document_clear = undefined
#endif
 
htmlDocumentClear :: (HTMLDocumentClass self) => self -> IO ()
htmlDocumentClear self
  = webkit_dom_html_document_clear
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        webkit_dom_html_document_capture_events ::
        JSRef HTMLDocument -> IO ()
#else 
webkit_dom_html_document_capture_events ::
                                          JSRef HTMLDocument -> IO ()
webkit_dom_html_document_capture_events = undefined
#endif
 
htmlDocumentCaptureEvents ::
                          (HTMLDocumentClass self) => self -> IO ()
htmlDocumentCaptureEvents self
  = webkit_dom_html_document_capture_events
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        webkit_dom_html_document_release_events ::
        JSRef HTMLDocument -> IO ()
#else 
webkit_dom_html_document_release_events ::
                                          JSRef HTMLDocument -> IO ()
webkit_dom_html_document_release_events = undefined
#endif
 
htmlDocumentReleaseEvents ::
                          (HTMLDocumentClass self) => self -> IO ()
htmlDocumentReleaseEvents self
  = webkit_dom_html_document_release_events
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"hasFocus\"]()"
        webkit_dom_html_document_has_focus ::
        JSRef HTMLDocument -> IO JSBool
#else 
webkit_dom_html_document_has_focus ::
                                     JSRef HTMLDocument -> IO JSBool
webkit_dom_html_document_has_focus = undefined
#endif
 
htmlDocumentHasFocus :: (HTMLDocumentClass self) => self -> IO Bool
htmlDocumentHasFocus self
  = fromJSBool <$>
      (webkit_dom_html_document_has_focus
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"embeds\"]"
        webkit_dom_html_document_get_embeds ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_document_get_embeds ::
                                      JSRef HTMLDocument -> IO (JSRef HTMLCollection)
webkit_dom_html_document_get_embeds = undefined
#endif
 
htmlDocumentGetEmbeds ::
                      (HTMLDocumentClass self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetEmbeds self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_document_get_embeds
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"plugins\"]"
        webkit_dom_html_document_get_plugins ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_document_get_plugins ::
                                       JSRef HTMLDocument -> IO (JSRef HTMLCollection)
webkit_dom_html_document_get_plugins = undefined
#endif
 
htmlDocumentGetPlugins ::
                       (HTMLDocumentClass self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetPlugins self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_document_get_plugins
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"scripts\"]"
        webkit_dom_html_document_get_scripts ::
        JSRef HTMLDocument -> IO (JSRef HTMLCollection)
#else 
webkit_dom_html_document_get_scripts ::
                                       JSRef HTMLDocument -> IO (JSRef HTMLCollection)
webkit_dom_html_document_get_scripts = undefined
#endif
 
htmlDocumentGetScripts ::
                       (HTMLDocumentClass self) => self -> IO (Maybe HTMLCollection)
htmlDocumentGetScripts self
  = fmap HTMLCollection . maybeJSNull <$>
      (webkit_dom_html_document_get_scripts
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"width\"]"
        webkit_dom_html_document_get_width :: JSRef HTMLDocument -> IO Int
#else 
webkit_dom_html_document_get_width :: JSRef HTMLDocument -> IO Int
webkit_dom_html_document_get_width = undefined
#endif
 
htmlDocumentGetWidth :: (HTMLDocumentClass self) => self -> IO Int
htmlDocumentGetWidth self
  = webkit_dom_html_document_get_width
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"height\"]"
        webkit_dom_html_document_get_height :: JSRef HTMLDocument -> IO Int
#else 
webkit_dom_html_document_get_height :: JSRef HTMLDocument -> IO Int
webkit_dom_html_document_get_height = undefined
#endif
 
htmlDocumentGetHeight :: (HTMLDocumentClass self) => self -> IO Int
htmlDocumentGetHeight self
  = webkit_dom_html_document_get_height
      (unHTMLDocument (toHTMLDocument self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"] = $2;"
        webkit_dom_html_document_set_dir ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_dir ::
                                   JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_dir = undefined
#endif
 
htmlDocumentSetDir ::
                   (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetDir self val
  = webkit_dom_html_document_set_dir
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"dir\"]"
        webkit_dom_html_document_get_dir ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_dir ::
                                   JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_dir = undefined
#endif
 
htmlDocumentGetDir ::
                   (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetDir self
  = fromJSString <$>
      (webkit_dom_html_document_get_dir
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"designMode\"] = $2;"
        webkit_dom_html_document_set_design_mode ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_design_mode ::
                                           JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_design_mode = undefined
#endif
 
htmlDocumentSetDesignMode ::
                          (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetDesignMode self val
  = webkit_dom_html_document_set_design_mode
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"designMode\"]"
        webkit_dom_html_document_get_design_mode ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_design_mode ::
                                           JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_design_mode = undefined
#endif
 
htmlDocumentGetDesignMode ::
                          (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetDesignMode self
  = fromJSString <$>
      (webkit_dom_html_document_get_design_mode
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"compatMode\"]"
        webkit_dom_html_document_get_compat_mode ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_compat_mode ::
                                           JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_compat_mode = undefined
#endif
 
htmlDocumentGetCompatMode ::
                          (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetCompatMode self
  = fromJSString <$>
      (webkit_dom_html_document_get_compat_mode
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"activeElement\"]"
        webkit_dom_html_document_get_active_element ::
        JSRef HTMLDocument -> IO (JSRef Element)
#else 
webkit_dom_html_document_get_active_element ::
                                              JSRef HTMLDocument -> IO (JSRef Element)
webkit_dom_html_document_get_active_element = undefined
#endif
 
htmlDocumentGetActiveElement ::
                             (HTMLDocumentClass self) => self -> IO (Maybe Element)
htmlDocumentGetActiveElement self
  = fmap Element . maybeJSNull <$>
      (webkit_dom_html_document_get_active_element
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        webkit_dom_html_document_set_bg_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_bg_color ::
                                        JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_bg_color = undefined
#endif
 
htmlDocumentSetBgColor ::
                       (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetBgColor self val
  = webkit_dom_html_document_set_bg_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"bgColor\"]"
        webkit_dom_html_document_get_bg_color ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_bg_color ::
                                        JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_bg_color = undefined
#endif
 
htmlDocumentGetBgColor ::
                       (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetBgColor self
  = fromJSString <$>
      (webkit_dom_html_document_get_bg_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fgColor\"] = $2;"
        webkit_dom_html_document_set_fg_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_fg_color ::
                                        JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_fg_color = undefined
#endif
 
htmlDocumentSetFgColor ::
                       (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetFgColor self val
  = webkit_dom_html_document_set_fg_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"fgColor\"]"
        webkit_dom_html_document_get_fg_color ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_fg_color ::
                                        JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_fg_color = undefined
#endif
 
htmlDocumentGetFgColor ::
                       (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetFgColor self
  = fromJSString <$>
      (webkit_dom_html_document_get_fg_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alinkColor\"] = $2;"
        webkit_dom_html_document_set_alink_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_alink_color ::
                                           JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_alink_color = undefined
#endif
 
htmlDocumentSetAlinkColor ::
                          (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetAlinkColor self val
  = webkit_dom_html_document_set_alink_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"alinkColor\"]"
        webkit_dom_html_document_get_alink_color ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_alink_color ::
                                           JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_alink_color = undefined
#endif
 
htmlDocumentGetAlinkColor ::
                          (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetAlinkColor self
  = fromJSString <$>
      (webkit_dom_html_document_get_alink_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"linkColor\"] = $2;"
        webkit_dom_html_document_set_link_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_link_color ::
                                          JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_link_color = undefined
#endif
 
htmlDocumentSetLinkColor ::
                         (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetLinkColor self val
  = webkit_dom_html_document_set_link_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"linkColor\"]"
        webkit_dom_html_document_get_link_color ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_link_color ::
                                          JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_link_color = undefined
#endif
 
htmlDocumentGetLinkColor ::
                         (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetLinkColor self
  = fromJSString <$>
      (webkit_dom_html_document_get_link_color
         (unHTMLDocument (toHTMLDocument self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vlinkColor\"] = $2;"
        webkit_dom_html_document_set_vlink_color ::
        JSRef HTMLDocument -> JSString -> IO ()
#else 
webkit_dom_html_document_set_vlink_color ::
                                           JSRef HTMLDocument -> JSString -> IO ()
webkit_dom_html_document_set_vlink_color = undefined
#endif
 
htmlDocumentSetVlinkColor ::
                          (HTMLDocumentClass self, ToJSString val) => self -> val -> IO ()
htmlDocumentSetVlinkColor self val
  = webkit_dom_html_document_set_vlink_color
      (unHTMLDocument (toHTMLDocument self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"vlinkColor\"]"
        webkit_dom_html_document_get_vlink_color ::
        JSRef HTMLDocument -> IO JSString
#else 
webkit_dom_html_document_get_vlink_color ::
                                           JSRef HTMLDocument -> IO JSString
webkit_dom_html_document_get_vlink_color = undefined
#endif
 
htmlDocumentGetVlinkColor ::
                          (HTMLDocumentClass self, FromJSString result) => self -> IO result
htmlDocumentGetVlinkColor self
  = fromJSString <$>
      (webkit_dom_html_document_get_vlink_color
         (unHTMLDocument (toHTMLDocument self)))