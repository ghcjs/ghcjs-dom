{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.DOMSecurityPolicy
       (ghcjs_dom_dom_security_policy_is_active,
        domSecurityPolicyIsActive,
        ghcjs_dom_dom_security_policy_allows_connection_to,
        domSecurityPolicyAllowsConnectionTo,
        ghcjs_dom_dom_security_policy_allows_font_from,
        domSecurityPolicyAllowsFontFrom,
        ghcjs_dom_dom_security_policy_allows_form_action,
        domSecurityPolicyAllowsFormAction,
        ghcjs_dom_dom_security_policy_allows_frame_from,
        domSecurityPolicyAllowsFrameFrom,
        ghcjs_dom_dom_security_policy_allows_image_from,
        domSecurityPolicyAllowsImageFrom,
        ghcjs_dom_dom_security_policy_allows_media_from,
        domSecurityPolicyAllowsMediaFrom,
        ghcjs_dom_dom_security_policy_allows_object_from,
        domSecurityPolicyAllowsObjectFrom,
        ghcjs_dom_dom_security_policy_allows_plugin_type,
        domSecurityPolicyAllowsPluginType,
        ghcjs_dom_dom_security_policy_allows_script_from,
        domSecurityPolicyAllowsScriptFrom,
        ghcjs_dom_dom_security_policy_allows_style_from,
        domSecurityPolicyAllowsStyleFrom,
        ghcjs_dom_dom_security_policy_allows_eval,
        domSecurityPolicyAllowsEval,
        ghcjs_dom_dom_security_policy_allows_inline_script,
        domSecurityPolicyAllowsInlineScript,
        ghcjs_dom_dom_security_policy_allows_inline_style,
        domSecurityPolicyAllowsInlineStyle,
        ghcjs_dom_dom_security_policy_get_report_ur_is,
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
foreign import javascript unsafe "($1[\"isActive\"]() ? 1 : 0)"
        ghcjs_dom_dom_security_policy_is_active ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_is_active ::
                                          JSRef DOMSecurityPolicy -> IO JSBool
ghcjs_dom_dom_security_policy_is_active = undefined
#endif
 
domSecurityPolicyIsActive ::
                          (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyIsActive self
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_is_active
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsConnectionTo\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_connection_to ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_connection_to ::
                                                     JSRef DOMSecurityPolicy ->
                                                       JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_connection_to = undefined
#endif
 
domSecurityPolicyAllowsConnectionTo ::
                                    (IsDOMSecurityPolicy self, ToJSString url) =>
                                      self -> url -> IO Bool
domSecurityPolicyAllowsConnectionTo self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_connection_to
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_font_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_font_from ::
                                                 JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_font_from = undefined
#endif
 
domSecurityPolicyAllowsFontFrom ::
                                (IsDOMSecurityPolicy self, ToJSString url) =>
                                  self -> url -> IO Bool
domSecurityPolicyAllowsFontFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_font_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_form_action ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_form_action ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_form_action = undefined
#endif
 
domSecurityPolicyAllowsFormAction ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsFormAction self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_form_action
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_frame_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_frame_from ::
                                                  JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_frame_from = undefined
#endif
 
domSecurityPolicyAllowsFrameFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsFrameFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_frame_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_image_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_image_from ::
                                                  JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_image_from = undefined
#endif
 
domSecurityPolicyAllowsImageFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsImageFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_image_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_media_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_media_from ::
                                                  JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_media_from = undefined
#endif
 
domSecurityPolicyAllowsMediaFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsMediaFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_media_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_object_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_object_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_object_from = undefined
#endif
 
domSecurityPolicyAllowsObjectFrom ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsObjectFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_object_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_plugin_type ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_plugin_type ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_plugin_type = undefined
#endif
 
domSecurityPolicyAllowsPluginType ::
                                  (IsDOMSecurityPolicy self, ToJSString type') =>
                                    self -> type' -> IO Bool
domSecurityPolicyAllowsPluginType self type'
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_plugin_type
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString type'))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_script_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_script_from ::
                                                   JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_script_from = undefined
#endif
 
domSecurityPolicyAllowsScriptFrom ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsScriptFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_script_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_style_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_style_from ::
                                                  JSRef DOMSecurityPolicy -> JSString -> IO JSBool
ghcjs_dom_dom_security_policy_allows_style_from = undefined
#endif
 
domSecurityPolicyAllowsStyleFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsStyleFrom self url
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_style_from
         (unDOMSecurityPolicy (toDOMSecurityPolicy self))
         (toJSString url))


#ifdef __GHCJS__ 
foreign import javascript unsafe "($1[\"allowsEval\"]() ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_eval ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_eval ::
                                            JSRef DOMSecurityPolicy -> IO JSBool
ghcjs_dom_dom_security_policy_allows_eval = undefined
#endif
 
domSecurityPolicyAllowsEval ::
                            (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyAllowsEval self
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_eval
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"]() ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_inline_script ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_inline_script ::
                                                     JSRef DOMSecurityPolicy -> IO JSBool
ghcjs_dom_dom_security_policy_allows_inline_script = undefined
#endif
 
domSecurityPolicyAllowsInlineScript ::
                                    (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyAllowsInlineScript self
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_inline_script
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"]() ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_inline_style ::
        JSRef DOMSecurityPolicy -> IO JSBool
#else 
ghcjs_dom_dom_security_policy_allows_inline_style ::
                                                    JSRef DOMSecurityPolicy -> IO JSBool
ghcjs_dom_dom_security_policy_allows_inline_style = undefined
#endif
 
domSecurityPolicyAllowsInlineStyle ::
                                   (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyAllowsInlineStyle self
  = fromJSBool <$>
      (ghcjs_dom_dom_security_policy_allows_inline_style
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        ghcjs_dom_dom_security_policy_get_report_ur_is ::
        JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)
#else 
ghcjs_dom_dom_security_policy_get_report_ur_is ::
                                                 JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)
ghcjs_dom_dom_security_policy_get_report_ur_is = undefined
#endif
 
domSecurityPolicyGetReportURIs ::
                               (IsDOMSecurityPolicy self) => self -> IO (Maybe DOMStringList)
domSecurityPolicyGetReportURIs self
  = fmap DOMStringList . maybeJSNull <$>
      (ghcjs_dom_dom_security_policy_get_report_ur_is
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))