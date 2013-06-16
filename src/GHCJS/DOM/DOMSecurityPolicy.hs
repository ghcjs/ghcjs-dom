{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMSecurityPolicy
       (webkit_dom_dom_security_policy_is_active,
        domSecurityPolicyIsActive,
        webkit_dom_dom_security_policy_allows_connection_to,
        domSecurityPolicyAllowsConnectionTo,
        webkit_dom_dom_security_policy_allows_font_from,
        domSecurityPolicyAllowsFontFrom,
        webkit_dom_dom_security_policy_allows_form_action,
        domSecurityPolicyAllowsFormAction,
        webkit_dom_dom_security_policy_allows_frame_from,
        domSecurityPolicyAllowsFrameFrom,
        webkit_dom_dom_security_policy_allows_image_from,
        domSecurityPolicyAllowsImageFrom,
        webkit_dom_dom_security_policy_allows_media_from,
        domSecurityPolicyAllowsMediaFrom,
        webkit_dom_dom_security_policy_allows_object_from,
        domSecurityPolicyAllowsObjectFrom,
        webkit_dom_dom_security_policy_allows_plugin_type,
        domSecurityPolicyAllowsPluginType,
        webkit_dom_dom_security_policy_allows_script_from,
        domSecurityPolicyAllowsScriptFrom,
        webkit_dom_dom_security_policy_allows_style_from,
        domSecurityPolicyAllowsStyleFrom,
        webkit_dom_dom_security_policy_allows_eval,
        domSecurityPolicyAllowsEval,
        webkit_dom_dom_security_policy_allows_inline_script,
        domSecurityPolicyAllowsInlineScript,
        webkit_dom_dom_security_policy_allows_inline_style,
        domSecurityPolicyAllowsInlineStyle,
        webkit_dom_dom_security_policy_get_report_ur_is,
        domSecurityPolicyGetReportURIs)
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
foreign import javascript unsafe "$1[\"isActive\"]()"
        webkit_dom_dom_security_policy_is_active ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
webkit_dom_dom_security_policy_is_active ::
                                           JSRef DOMSecurityPolicy -> IO JSBool
webkit_dom_dom_security_policy_is_active = undefined
#endif
 
domSecurityPolicyIsActive ::
                          (DOMSecurityPolicyClass self) => self -> IO Bool
domSecurityPolicyIsActive self
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_is_active
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsConnectionTo\"]($2)"
        webkit_dom_dom_security_policy_allows_connection_to ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_connection_to ::
                                                      JSRef DOMSecurityPolicy ->
                                                        JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_connection_to = undefined
#endif
 
domSecurityPolicyAllowsConnectionTo ::
                                    (DOMSecurityPolicyClass self, ToJSString url) =>
                                      self -> url -> IO Bool
domSecurityPolicyAllowsConnectionTo self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_connection_to
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsFontFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_font_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_font_from ::
                                                  JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_font_from = undefined
#endif
 
domSecurityPolicyAllowsFontFrom ::
                                (DOMSecurityPolicyClass self, ToJSString url) =>
                                  self -> url -> IO Bool
domSecurityPolicyAllowsFontFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_font_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsFormAction\"]($2)"
        webkit_dom_dom_security_policy_allows_form_action ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_form_action ::
                                                    JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_form_action = undefined
#endif
 
domSecurityPolicyAllowsFormAction ::
                                  (DOMSecurityPolicyClass self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsFormAction self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_form_action
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsFrameFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_frame_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_frame_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_frame_from = undefined
#endif
 
domSecurityPolicyAllowsFrameFrom ::
                                 (DOMSecurityPolicyClass self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsFrameFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_frame_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsImageFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_image_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_image_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_image_from = undefined
#endif
 
domSecurityPolicyAllowsImageFrom ::
                                 (DOMSecurityPolicyClass self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsImageFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_image_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsMediaFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_media_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_media_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_media_from = undefined
#endif
 
domSecurityPolicyAllowsMediaFrom ::
                                 (DOMSecurityPolicyClass self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsMediaFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_media_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsObjectFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_object_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_object_from ::
                                                    JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_object_from = undefined
#endif
 
domSecurityPolicyAllowsObjectFrom ::
                                  (DOMSecurityPolicyClass self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsObjectFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_object_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsPluginType\"]($2)"
        webkit_dom_dom_security_policy_allows_plugin_type ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_plugin_type ::
                                                    JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_plugin_type = undefined
#endif
 
domSecurityPolicyAllowsPluginType ::
                                  (DOMSecurityPolicyClass self, ToJSString type') =>
                                    self -> type' -> IO Bool
domSecurityPolicyAllowsPluginType self type'
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_plugin_type
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString type'))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsScriptFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_script_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_script_from ::
                                                    JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_script_from = undefined
#endif
 
domSecurityPolicyAllowsScriptFrom ::
                                  (DOMSecurityPolicyClass self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsScriptFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_script_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsStyleFrom\"]($2)"
        webkit_dom_dom_security_policy_allows_style_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_style_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
webkit_dom_dom_security_policy_allows_style_from = undefined
#endif
 
domSecurityPolicyAllowsStyleFrom ::
                                 (DOMSecurityPolicyClass self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsStyleFrom self url
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_style_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsEval\"]()"
        webkit_dom_dom_security_policy_allows_eval ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_eval ::
                                             JSRef DOMSecurityPolicy -> IO JSBool
webkit_dom_dom_security_policy_allows_eval = undefined
#endif
 
domSecurityPolicyAllowsEval ::
                            (DOMSecurityPolicyClass self) => self -> IO Bool
domSecurityPolicyAllowsEval self
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_eval
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsInlineScript\"]()"
        webkit_dom_dom_security_policy_allows_inline_script ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_inline_script ::
                                                      JSRef DOMSecurityPolicy -> IO JSBool
webkit_dom_dom_security_policy_allows_inline_script = undefined
#endif
 
domSecurityPolicyAllowsInlineScript ::
                                    (DOMSecurityPolicyClass self) => self -> IO Bool
domSecurityPolicyAllowsInlineScript self
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_inline_script
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"allowsInlineStyle\"]()"
        webkit_dom_dom_security_policy_allows_inline_style ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
webkit_dom_dom_security_policy_allows_inline_style ::
                                                     JSRef DOMSecurityPolicy -> IO JSBool
webkit_dom_dom_security_policy_allows_inline_style = undefined
#endif
 
domSecurityPolicyAllowsInlineStyle ::
                                   (DOMSecurityPolicyClass self) => self -> IO Bool
domSecurityPolicyAllowsInlineStyle self
  = fromJSBool <$>
      (webkit_dom_dom_security_policy_allows_inline_style
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        webkit_dom_dom_security_policy_get_report_ur_is ::
        JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)
#else 
webkit_dom_dom_security_policy_get_report_ur_is ::
                                                  JSRef DOMSecurityPolicy ->
                                                    IO (JSRef DOMStringList)
webkit_dom_dom_security_policy_get_report_ur_is = undefined
#endif
 
domSecurityPolicyGetReportURIs ::
                               (DOMSecurityPolicyClass self) => self -> IO (Maybe DOMStringList)
domSecurityPolicyGetReportURIs self
  = fmap DOMStringList . maybeJSNull <$>
      (webkit_dom_dom_security_policy_get_report_ur_is
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))