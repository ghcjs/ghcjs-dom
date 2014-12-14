{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSecurityPolicy
       (ghcjs_dom_dom_security_policy_allows_connection_to,
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
        ghcjs_dom_dom_security_policy_get_allows_eval,
        domSecurityPolicyGetAllowsEval,
        ghcjs_dom_dom_security_policy_get_allows_inline_script,
        domSecurityPolicyGetAllowsInlineScript,
        ghcjs_dom_dom_security_policy_get_allows_inline_style,
        domSecurityPolicyGetAllowsInlineStyle,
        ghcjs_dom_dom_security_policy_get_is_active,
        domSecurityPolicyGetIsActive,
        ghcjs_dom_dom_security_policy_get_report_ur_is,
        domSecurityPolicyGetReportURIs, DOMSecurityPolicy,
        IsDOMSecurityPolicy, castToDOMSecurityPolicy,
        gTypeDOMSecurityPolicy, toDOMSecurityPolicy)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal.Pure
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"allowsConnectionTo\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_connection_to ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsConnectionTo ::
                                    (IsDOMSecurityPolicy self, ToJSString url) =>
                                      self -> url -> IO Bool
domSecurityPolicyAllowsConnectionTo self url
  = ghcjs_dom_dom_security_policy_allows_connection_to
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsFontFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_font_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsFontFrom ::
                                (IsDOMSecurityPolicy self, ToJSString url) =>
                                  self -> url -> IO Bool
domSecurityPolicyAllowsFontFrom self url
  = ghcjs_dom_dom_security_policy_allows_font_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsFormAction\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_form_action ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsFormAction ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsFormAction self url
  = ghcjs_dom_dom_security_policy_allows_form_action
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsFrameFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_frame_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsFrameFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsFrameFrom self url
  = ghcjs_dom_dom_security_policy_allows_frame_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsImageFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_image_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsImageFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsImageFrom self url
  = ghcjs_dom_dom_security_policy_allows_image_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsMediaFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_media_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsMediaFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsMediaFrom self url
  = ghcjs_dom_dom_security_policy_allows_media_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsObjectFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_object_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsObjectFrom ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsObjectFrom self url
  = ghcjs_dom_dom_security_policy_allows_object_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsPluginType\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_plugin_type ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsPluginType ::
                                  (IsDOMSecurityPolicy self, ToJSString type') =>
                                    self -> type' -> IO Bool
domSecurityPolicyAllowsPluginType self type'
  = ghcjs_dom_dom_security_policy_allows_plugin_type
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString type')
 
foreign import javascript unsafe
        "($1[\"allowsScriptFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_script_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsScriptFrom ::
                                  (IsDOMSecurityPolicy self, ToJSString url) =>
                                    self -> url -> IO Bool
domSecurityPolicyAllowsScriptFrom self url
  = ghcjs_dom_dom_security_policy_allows_script_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe
        "($1[\"allowsStyleFrom\"]($2) ? 1 : 0)"
        ghcjs_dom_dom_security_policy_allows_style_from ::
        JSRef DOMSecurityPolicy -> JSString -> IO Bool
 
domSecurityPolicyAllowsStyleFrom ::
                                 (IsDOMSecurityPolicy self, ToJSString url) =>
                                   self -> url -> IO Bool
domSecurityPolicyAllowsStyleFrom self url
  = ghcjs_dom_dom_security_policy_allows_style_from
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
      (toJSString url)
 
foreign import javascript unsafe "($1[\"allowsEval\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_eval ::
        JSRef DOMSecurityPolicy -> IO Bool
 
domSecurityPolicyGetAllowsEval ::
                               (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyGetAllowsEval self
  = ghcjs_dom_dom_security_policy_get_allows_eval
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineScript\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_inline_script ::
        JSRef DOMSecurityPolicy -> IO Bool
 
domSecurityPolicyGetAllowsInlineScript ::
                                       (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyGetAllowsInlineScript self
  = ghcjs_dom_dom_security_policy_get_allows_inline_script
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
 
foreign import javascript unsafe
        "($1[\"allowsInlineStyle\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_allows_inline_style ::
        JSRef DOMSecurityPolicy -> IO Bool
 
domSecurityPolicyGetAllowsInlineStyle ::
                                      (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyGetAllowsInlineStyle self
  = ghcjs_dom_dom_security_policy_get_allows_inline_style
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
 
foreign import javascript unsafe "($1[\"isActive\"] ? 1 : 0)"
        ghcjs_dom_dom_security_policy_get_is_active ::
        JSRef DOMSecurityPolicy -> IO Bool
 
domSecurityPolicyGetIsActive ::
                             (IsDOMSecurityPolicy self) => self -> IO Bool
domSecurityPolicyGetIsActive self
  = ghcjs_dom_dom_security_policy_get_is_active
      (unDOMSecurityPolicy (toDOMSecurityPolicy self))
 
foreign import javascript unsafe "$1[\"reportURIs\"]"
        ghcjs_dom_dom_security_policy_get_report_ur_is ::
        JSRef DOMSecurityPolicy -> IO (JSRef DOMStringList)
 
domSecurityPolicyGetReportURIs ::
                               (IsDOMSecurityPolicy self) => self -> IO (Maybe DOMStringList)
domSecurityPolicyGetReportURIs self
  = fmap DOMStringList . maybeJSNull <$>
      (ghcjs_dom_dom_security_policy_get_report_ur_is
         (unDOMSecurityPolicy (toDOMSecurityPolicy self)))
#else
module GHCJS.DOM.DOMSecurityPolicy (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSecurityPolicy
#endif
