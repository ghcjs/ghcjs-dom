{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.CSSStyleDeclaration
       (ghcjs_dom_css_style_declaration_get_property_value,
        cssStyleDeclarationGetPropertyValue,
        ghcjs_dom_css_style_declaration_get_property_css_value,
        cssStyleDeclarationGetPropertyCSSValue,
        ghcjs_dom_css_style_declaration_remove_property,
        cssStyleDeclarationRemoveProperty,
        ghcjs_dom_css_style_declaration_get_property_priority,
        cssStyleDeclarationGetPropertyPriority,
        ghcjs_dom_css_style_declaration_set_property,
        cssStyleDeclarationSetProperty,
        ghcjs_dom_css_style_declaration_item, cssStyleDeclarationItem,
        ghcjs_dom_css_style_declaration_get_property_shorthand,
        cssStyleDeclarationGetPropertyShorthand,
        ghcjs_dom_css_style_declaration_is_property_implicit,
        cssStyleDeclarationIsPropertyImplicit,
        ghcjs_dom_css_style_declaration_set_css_text,
        cssStyleDeclarationSetCssText,
        ghcjs_dom_css_style_declaration_get_css_text,
        cssStyleDeclarationGetCssText,
        ghcjs_dom_css_style_declaration_get_length,
        cssStyleDeclarationGetLength,
        ghcjs_dom_css_style_declaration_get_parent_rule,
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
        ghcjs_dom_css_style_declaration_get_property_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
ghcjs_dom_css_style_declaration_get_property_value ::
                                                     JSRef CSSStyleDeclaration ->
                                                       JSString -> IO JSString
ghcjs_dom_css_style_declaration_get_property_value = undefined
#endif
 
cssStyleDeclarationGetPropertyValue ::
                                    (IsCSSStyleDeclaration self, ToJSString propertyName,
                                     FromJSString result) =>
                                      self -> propertyName -> IO result
cssStyleDeclarationGetPropertyValue self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_value
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyCSSValue\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_css_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO (JSRef CSSValue)
#else 
ghcjs_dom_css_style_declaration_get_property_css_value ::
                                                         JSRef CSSStyleDeclaration ->
                                                           JSString -> IO (JSRef CSSValue)
ghcjs_dom_css_style_declaration_get_property_css_value = undefined
#endif
 
cssStyleDeclarationGetPropertyCSSValue ::
                                       (IsCSSStyleDeclaration self, ToJSString propertyName) =>
                                         self -> propertyName -> IO (Maybe CSSValue)
cssStyleDeclarationGetPropertyCSSValue self propertyName
  = fmap CSSValue . maybeJSNull <$>
      (ghcjs_dom_css_style_declaration_get_property_css_value
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"removeProperty\"]($2)"
        ghcjs_dom_css_style_declaration_remove_property ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
ghcjs_dom_css_style_declaration_remove_property ::
                                                  JSRef CSSStyleDeclaration ->
                                                    JSString -> IO JSString
ghcjs_dom_css_style_declaration_remove_property = undefined
#endif
 
cssStyleDeclarationRemoveProperty ::
                                  (IsCSSStyleDeclaration self, ToJSString propertyName,
                                   FromJSString result) =>
                                    self -> propertyName -> IO result
cssStyleDeclarationRemoveProperty self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_remove_property
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyPriority\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_priority ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
ghcjs_dom_css_style_declaration_get_property_priority ::
                                                        JSRef CSSStyleDeclaration ->
                                                          JSString -> IO JSString
ghcjs_dom_css_style_declaration_get_property_priority = undefined
#endif
 
cssStyleDeclarationGetPropertyPriority ::
                                       (IsCSSStyleDeclaration self, ToJSString propertyName,
                                        FromJSString result) =>
                                         self -> propertyName -> IO result
cssStyleDeclarationGetPropertyPriority self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_priority
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"setProperty\"]($2, $3, $4)"
        ghcjs_dom_css_style_declaration_set_property ::
        JSRef CSSStyleDeclaration ->
          JSString -> JSString -> JSString -> IO ()
#else 
ghcjs_dom_css_style_declaration_set_property ::
                                               JSRef CSSStyleDeclaration ->
                                                 JSString -> JSString -> JSString -> IO ()
ghcjs_dom_css_style_declaration_set_property = undefined
#endif
 
cssStyleDeclarationSetProperty ::
                               (IsCSSStyleDeclaration self, ToJSString propertyName,
                                ToJSString value, ToJSString priority) =>
                                 self -> propertyName -> value -> priority -> IO ()
cssStyleDeclarationSetProperty self propertyName value priority
  = ghcjs_dom_css_style_declaration_set_property
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString propertyName)
      (toJSString value)
      (toJSString priority)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_css_style_declaration_item ::
        JSRef CSSStyleDeclaration -> Word -> IO JSString
#else 
ghcjs_dom_css_style_declaration_item ::
                                       JSRef CSSStyleDeclaration -> Word -> IO JSString
ghcjs_dom_css_style_declaration_item = undefined
#endif
 
cssStyleDeclarationItem ::
                        (IsCSSStyleDeclaration self, FromJSString result) =>
                          self -> Word -> IO result
cssStyleDeclarationItem self index
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_item
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         index)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_shorthand ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString
#else 
ghcjs_dom_css_style_declaration_get_property_shorthand ::
                                                         JSRef CSSStyleDeclaration ->
                                                           JSString -> IO JSString
ghcjs_dom_css_style_declaration_get_property_shorthand = undefined
#endif
 
cssStyleDeclarationGetPropertyShorthand ::
                                        (IsCSSStyleDeclaration self, ToJSString propertyName,
                                         FromJSString result) =>
                                          self -> propertyName -> IO result
cssStyleDeclarationGetPropertyShorthand self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_shorthand
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))


#ifdef __GHCJS__ 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)"
        ghcjs_dom_css_style_declaration_is_property_implicit ::
        JSRef CSSStyleDeclaration -> JSString -> IO Bool
#else 
ghcjs_dom_css_style_declaration_is_property_implicit ::
                                                       JSRef CSSStyleDeclaration ->
                                                         JSString -> IO Bool
ghcjs_dom_css_style_declaration_is_property_implicit = undefined
#endif
 
cssStyleDeclarationIsPropertyImplicit ::
                                      (IsCSSStyleDeclaration self, ToJSString propertyName) =>
                                        self -> propertyName -> IO Bool
cssStyleDeclarationIsPropertyImplicit self propertyName
  = ghcjs_dom_css_style_declaration_is_property_implicit
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString propertyName)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_style_declaration_set_css_text ::
        JSRef CSSStyleDeclaration -> JSString -> IO ()
#else 
ghcjs_dom_css_style_declaration_set_css_text ::
                                               JSRef CSSStyleDeclaration -> JSString -> IO ()
ghcjs_dom_css_style_declaration_set_css_text = undefined
#endif
 
cssStyleDeclarationSetCssText ::
                              (IsCSSStyleDeclaration self, ToJSString val) =>
                                self -> val -> IO ()
cssStyleDeclarationSetCssText self val
  = ghcjs_dom_css_style_declaration_set_css_text
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_style_declaration_get_css_text ::
        JSRef CSSStyleDeclaration -> IO JSString
#else 
ghcjs_dom_css_style_declaration_get_css_text ::
                                               JSRef CSSStyleDeclaration -> IO JSString
ghcjs_dom_css_style_declaration_get_css_text = undefined
#endif
 
cssStyleDeclarationGetCssText ::
                              (IsCSSStyleDeclaration self, FromJSString result) =>
                                self -> IO result
cssStyleDeclarationGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_css_text
         (unCSSStyleDeclaration (toCSSStyleDeclaration self)))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_style_declaration_get_length ::
        JSRef CSSStyleDeclaration -> IO Word
#else 
ghcjs_dom_css_style_declaration_get_length ::
                                             JSRef CSSStyleDeclaration -> IO Word
ghcjs_dom_css_style_declaration_get_length = undefined
#endif
 
cssStyleDeclarationGetLength ::
                             (IsCSSStyleDeclaration self) => self -> IO Word
cssStyleDeclarationGetLength self
  = ghcjs_dom_css_style_declaration_get_length
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"parentRule\"]"
        ghcjs_dom_css_style_declaration_get_parent_rule ::
        JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)
#else 
ghcjs_dom_css_style_declaration_get_parent_rule ::
                                                  JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)
ghcjs_dom_css_style_declaration_get_parent_rule = undefined
#endif
 
cssStyleDeclarationGetParentRule ::
                                 (IsCSSStyleDeclaration self) => self -> IO (Maybe CSSRule)
cssStyleDeclarationGetParentRule self
  = fmap CSSRule . maybeJSNull <$>
      (ghcjs_dom_css_style_declaration_get_parent_rule
         (unCSSStyleDeclaration (toCSSStyleDeclaration self)))