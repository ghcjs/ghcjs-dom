{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSStyleDeclaration
       (webkit_dom_css_style_declaration_get_property_value,
        cssStyleDeclarationGetPropertyValue,
        webkit_dom_css_style_declaration_get_property_css_value,
        cssStyleDeclarationGetPropertyCSSValue,
        webkit_dom_css_style_declaration_remove_property,
        cssStyleDeclarationRemoveProperty,
        webkit_dom_css_style_declaration_get_property_priority,
        cssStyleDeclarationGetPropertyPriority,
        webkit_dom_css_style_declaration_set_property,
        cssStyleDeclarationSetProperty,
        webkit_dom_css_style_declaration_item, cssStyleDeclarationItem,
        webkit_dom_css_style_declaration_get_property_shorthand,
        cssStyleDeclarationGetPropertyShorthand,
        webkit_dom_css_style_declaration_is_property_implicit,
        cssStyleDeclarationIsPropertyImplicit,
        webkit_dom_css_style_declaration_set_css_text,
        cssStyleDeclarationSetCssText,
        webkit_dom_css_style_declaration_get_css_text,
        cssStyleDeclarationGetCssText,
        webkit_dom_css_style_declaration_get_length,
        cssStyleDeclarationGetLength,
        webkit_dom_css_style_declaration_get_parent_rule,
        cssStyleDeclarationGetParentRule)
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
foreign import javascript unsafe "$1[\"getPropertyValue\"]($2)"
        webkit_dom_css_style_declaration_get_property_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
webkit_dom_css_style_declaration_get_property_value ::
                                                      JSRef CSSStyleDeclaration ->
                                                        JSString -> IO JSString
webkit_dom_css_style_declaration_get_property_value = undefined
#endif
 
cssStyleDeclarationGetPropertyValue ::
                                    (CSSStyleDeclarationClass self, ToJSString propertyName,
                                     FromJSString result) =>
                                      self -> propertyName -> IO result
cssStyleDeclarationGetPropertyValue self propertyName
  = fromJSString <$>
      (webkit_dom_css_style_declaration_get_property_value
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyCSSValue\"]($2)"
        webkit_dom_css_style_declaration_get_property_css_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO (JSRef CSSValue)
#else 
webkit_dom_css_style_declaration_get_property_css_value ::
                                                          JSRef CSSStyleDeclaration ->
                                                            JSString -> IO (JSRef CSSValue)
webkit_dom_css_style_declaration_get_property_css_value = undefined
#endif
 
cssStyleDeclarationGetPropertyCSSValue ::
                                       (CSSStyleDeclarationClass self, ToJSString propertyName) =>
                                         self -> propertyName -> IO (Maybe CSSValue)
cssStyleDeclarationGetPropertyCSSValue self propertyName
  = fmap CSSValue . maybeJSNull <$>
      (webkit_dom_css_style_declaration_get_property_css_value
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeProperty\"]($2)"
        webkit_dom_css_style_declaration_remove_property ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
webkit_dom_css_style_declaration_remove_property ::
                                                   JSRef CSSStyleDeclaration ->
                                                     JSString -> IO JSString
webkit_dom_css_style_declaration_remove_property = undefined
#endif
 
cssStyleDeclarationRemoveProperty ::
                                  (CSSStyleDeclarationClass self, ToJSString propertyName,
                                   FromJSString result) =>
                                    self -> propertyName -> IO result
cssStyleDeclarationRemoveProperty self propertyName
  = fromJSString <$>
      (webkit_dom_css_style_declaration_remove_property
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyPriority\"]($2)"
        webkit_dom_css_style_declaration_get_property_priority ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
webkit_dom_css_style_declaration_get_property_priority ::
                                                         JSRef CSSStyleDeclaration ->
                                                           JSString -> IO JSString
webkit_dom_css_style_declaration_get_property_priority = undefined
#endif
 
cssStyleDeclarationGetPropertyPriority ::
                                       (CSSStyleDeclarationClass self, ToJSString propertyName,
                                        FromJSString result) =>
                                         self -> propertyName -> IO result
cssStyleDeclarationGetPropertyPriority self propertyName
  = fromJSString <$>
      (webkit_dom_css_style_declaration_get_property_priority
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setProperty\"]($2, $3, $4)"
        webkit_dom_css_style_declaration_set_property ::
        JSRef CSSStyleDeclaration ->
          JSString -> JSString -> JSString -> IO ()
#else 
webkit_dom_css_style_declaration_set_property ::
                                                JSRef CSSStyleDeclaration ->
                                                  JSString -> JSString -> JSString -> IO ()
webkit_dom_css_style_declaration_set_property = undefined
#endif
 
cssStyleDeclarationSetProperty ::
                               (CSSStyleDeclarationClass self, ToJSString propertyName,
                                ToJSString value, ToJSString priority) =>
                                 self -> propertyName -> value -> priority -> IO ()
cssStyleDeclarationSetProperty self propertyName value priority
  = webkit_dom_css_style_declaration_set_property
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString propertyName)
      (toJSString value)
      (toJSString priority)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        webkit_dom_css_style_declaration_item ::
        JSRef CSSStyleDeclaration -> Word -> IO JSString
#else 
webkit_dom_css_style_declaration_item ::
                                        JSRef CSSStyleDeclaration -> Word -> IO JSString
webkit_dom_css_style_declaration_item = undefined
#endif
 
cssStyleDeclarationItem ::
                        (CSSStyleDeclarationClass self, FromJSString result) =>
                          self -> Word -> IO result
cssStyleDeclarationItem self index
  = fromJSString <$>
      (webkit_dom_css_style_declaration_item
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        webkit_dom_css_style_declaration_get_property_shorthand ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
webkit_dom_css_style_declaration_get_property_shorthand ::
                                                          JSRef CSSStyleDeclaration ->
                                                            JSString -> IO JSString
webkit_dom_css_style_declaration_get_property_shorthand = undefined
#endif
 
cssStyleDeclarationGetPropertyShorthand ::
                                        (CSSStyleDeclarationClass self, ToJSString propertyName,
                                         FromJSString result) =>
                                          self -> propertyName -> IO result
cssStyleDeclarationGetPropertyShorthand self propertyName
  = fromJSString <$>
      (webkit_dom_css_style_declaration_get_property_shorthand
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)"
        webkit_dom_css_style_declaration_is_property_implicit ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSBool
#else 
webkit_dom_css_style_declaration_is_property_implicit ::
                                                        JSRef CSSStyleDeclaration ->
                                                          JSString -> IO JSBool
webkit_dom_css_style_declaration_is_property_implicit = undefined
#endif
 
cssStyleDeclarationIsPropertyImplicit ::
                                      (CSSStyleDeclarationClass self, ToJSString propertyName) =>
                                        self -> propertyName -> IO Bool
cssStyleDeclarationIsPropertyImplicit self propertyName
  = fromJSBool <$>
      (webkit_dom_css_style_declaration_is_property_implicit
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        webkit_dom_css_style_declaration_set_css_text ::
        JSRef CSSStyleDeclaration -> JSString -> IO ()
#else 
webkit_dom_css_style_declaration_set_css_text ::
                                                JSRef CSSStyleDeclaration -> JSString -> IO ()
webkit_dom_css_style_declaration_set_css_text = undefined
#endif
 
cssStyleDeclarationSetCssText ::
                              (CSSStyleDeclarationClass self, ToJSString val) =>
                                self -> val -> IO ()
cssStyleDeclarationSetCssText self val
  = webkit_dom_css_style_declaration_set_css_text
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        webkit_dom_css_style_declaration_get_css_text ::
        JSRef CSSStyleDeclaration -> IO JSString
#else 
webkit_dom_css_style_declaration_get_css_text ::
                                                JSRef CSSStyleDeclaration -> IO JSString
webkit_dom_css_style_declaration_get_css_text = undefined
#endif
 
cssStyleDeclarationGetCssText ::
                              (CSSStyleDeclarationClass self, FromJSString result) =>
                                self -> IO result
cssStyleDeclarationGetCssText self
  = fromJSString <$>
      (webkit_dom_css_style_declaration_get_css_text
         (unCSSStyleDeclaration (toCSSStyleDeclaration self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        webkit_dom_css_style_declaration_get_length ::
        JSRef CSSStyleDeclaration -> IO Word
#else 
webkit_dom_css_style_declaration_get_length ::
                                              JSRef CSSStyleDeclaration -> IO Word
webkit_dom_css_style_declaration_get_length = undefined
#endif
 
cssStyleDeclarationGetLength ::
                             (CSSStyleDeclarationClass self) => self -> IO Word
cssStyleDeclarationGetLength self
  = webkit_dom_css_style_declaration_get_length
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentRule\"]"
        webkit_dom_css_style_declaration_get_parent_rule ::
        JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)
#else 
webkit_dom_css_style_declaration_get_parent_rule ::
                                                   JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)
webkit_dom_css_style_declaration_get_parent_rule = undefined
#endif
 
cssStyleDeclarationGetParentRule ::
                                 (CSSStyleDeclarationClass self) => self -> IO (Maybe CSSRule)
cssStyleDeclarationGetParentRule self
  = fmap CSSRule . maybeJSNull <$>
      (webkit_dom_css_style_declaration_get_parent_rule
         (unCSSStyleDeclaration (toCSSStyleDeclaration self)))