{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
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
        cssStyleDeclarationGetParentRule, CSSStyleDeclaration,
        IsCSSStyleDeclaration, castToCSSStyleDeclaration,
        gTypeCSSStyleDeclaration, toCSSStyleDeclaration)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getPropertyValue\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.propertyValue Mozilla CSSStyleDeclaration.propertyValue documentation> 
cssStyleDeclarationGetPropertyValue ::
                                    (IsCSSStyleDeclaration self, ToJSString propertyName,
                                     FromJSString result) =>
                                      self -> propertyName -> IO result
cssStyleDeclarationGetPropertyValue self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_value
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))
 
foreign import javascript unsafe "$1[\"getPropertyCSSValue\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_css_value ::
        JSRef CSSStyleDeclaration -> JSString -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.propertyCSSValue Mozilla CSSStyleDeclaration.propertyCSSValue documentation> 
cssStyleDeclarationGetPropertyCSSValue ::
                                       (IsCSSStyleDeclaration self, ToJSString propertyName) =>
                                         self -> propertyName -> IO (Maybe CSSValue)
cssStyleDeclarationGetPropertyCSSValue self propertyName
  = (ghcjs_dom_css_style_declaration_get_property_css_value
       (unCSSStyleDeclaration (toCSSStyleDeclaration self))
       (toJSString propertyName))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"removeProperty\"]($2)"
        ghcjs_dom_css_style_declaration_remove_property ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
cssStyleDeclarationRemoveProperty ::
                                  (IsCSSStyleDeclaration self, ToJSString propertyName,
                                   FromJSString result) =>
                                    self -> propertyName -> IO result
cssStyleDeclarationRemoveProperty self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_remove_property
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))
 
foreign import javascript unsafe "$1[\"getPropertyPriority\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_priority ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.propertyPriority Mozilla CSSStyleDeclaration.propertyPriority documentation> 
cssStyleDeclarationGetPropertyPriority ::
                                       (IsCSSStyleDeclaration self, ToJSString propertyName,
                                        FromJSString result) =>
                                         self -> propertyName -> IO result
cssStyleDeclarationGetPropertyPriority self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_priority
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))
 
foreign import javascript unsafe "$1[\"setProperty\"]($2, $3, $4)"
        ghcjs_dom_css_style_declaration_set_property ::
        JSRef CSSStyleDeclaration ->
          JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.property Mozilla CSSStyleDeclaration.property documentation> 
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
 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_css_style_declaration_item ::
        JSRef CSSStyleDeclaration -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
cssStyleDeclarationItem ::
                        (IsCSSStyleDeclaration self, FromJSString result) =>
                          self -> Word -> IO result
cssStyleDeclarationItem self index
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_item
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         index)
 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        ghcjs_dom_css_style_declaration_get_property_shorthand ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.propertyShorthand Mozilla CSSStyleDeclaration.propertyShorthand documentation> 
cssStyleDeclarationGetPropertyShorthand ::
                                        (IsCSSStyleDeclaration self, ToJSString propertyName,
                                         FromJSString result) =>
                                          self -> propertyName -> IO result
cssStyleDeclarationGetPropertyShorthand self propertyName
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_property_shorthand
         (unCSSStyleDeclaration (toCSSStyleDeclaration self))
         (toJSString propertyName))
 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)"
        ghcjs_dom_css_style_declaration_is_property_implicit ::
        JSRef CSSStyleDeclaration -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
cssStyleDeclarationIsPropertyImplicit ::
                                      (IsCSSStyleDeclaration self, ToJSString propertyName) =>
                                        self -> propertyName -> IO Bool
cssStyleDeclarationIsPropertyImplicit self propertyName
  = ghcjs_dom_css_style_declaration_is_property_implicit
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString propertyName)
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        ghcjs_dom_css_style_declaration_set_css_text ::
        JSRef CSSStyleDeclaration -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
cssStyleDeclarationSetCssText ::
                              (IsCSSStyleDeclaration self, ToJSString val) =>
                                self -> val -> IO ()
cssStyleDeclarationSetCssText self val
  = ghcjs_dom_css_style_declaration_set_css_text
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"cssText\"]"
        ghcjs_dom_css_style_declaration_get_css_text ::
        JSRef CSSStyleDeclaration -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
cssStyleDeclarationGetCssText ::
                              (IsCSSStyleDeclaration self, FromJSString result) =>
                                self -> IO result
cssStyleDeclarationGetCssText self
  = fromJSString <$>
      (ghcjs_dom_css_style_declaration_get_css_text
         (unCSSStyleDeclaration (toCSSStyleDeclaration self)))
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_css_style_declaration_get_length ::
        JSRef CSSStyleDeclaration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
cssStyleDeclarationGetLength ::
                             (IsCSSStyleDeclaration self) => self -> IO Word
cssStyleDeclarationGetLength self
  = ghcjs_dom_css_style_declaration_get_length
      (unCSSStyleDeclaration (toCSSStyleDeclaration self))
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        ghcjs_dom_css_style_declaration_get_parent_rule ::
        JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
cssStyleDeclarationGetParentRule ::
                                 (IsCSSStyleDeclaration self) => self -> IO (Maybe CSSRule)
cssStyleDeclarationGetParentRule self
  = (ghcjs_dom_css_style_declaration_get_parent_rule
       (unCSSStyleDeclaration (toCSSStyleDeclaration self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CSSStyleDeclaration (
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
#endif
