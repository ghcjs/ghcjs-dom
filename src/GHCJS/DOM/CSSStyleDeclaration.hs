{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSStyleDeclaration
       (js_getPropertyValue, getPropertyValue, js_getPropertyCSSValue,
        getPropertyCSSValue, js_removeProperty, removeProperty,
        js_getPropertyPriority, getPropertyPriority, js_setProperty,
        setProperty, js_item, item, js_getPropertyShorthand,
        getPropertyShorthand, js_isPropertyImplicit, isPropertyImplicit,
        js_setCssText, setCssText, js_getCssText, getCssText, js_getLength,
        getLength, js_getParentRule, getParentRule, CSSStyleDeclaration,
        castToCSSStyleDeclaration, gTypeCSSStyleDeclaration)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"getPropertyValue\"]($2)"
        js_getPropertyValue ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue ::
                 (MonadIO m, ToJSString propertyName, FromJSString result) =>
                   CSSStyleDeclaration -> propertyName -> m result
getPropertyValue self propertyName
  = liftIO
      (fromJSString <$>
         (js_getPropertyValue (unCSSStyleDeclaration self)
            (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"getPropertyCSSValue\"]($2)"
        js_getPropertyCSSValue ::
        JSRef CSSStyleDeclaration -> JSString -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue ::
                    (MonadIO m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe CSSValue)
getPropertyCSSValue self propertyName
  = liftIO
      ((js_getPropertyCSSValue (unCSSStyleDeclaration self)
          (toJSString propertyName))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"removeProperty\"]($2)"
        js_removeProperty ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty ::
               (MonadIO m, ToJSString propertyName, FromJSString result) =>
                 CSSStyleDeclaration -> propertyName -> m result
removeProperty self propertyName
  = liftIO
      (fromJSString <$>
         (js_removeProperty (unCSSStyleDeclaration self)
            (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"getPropertyPriority\"]($2)"
        js_getPropertyPriority ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority ::
                    (MonadIO m, ToJSString propertyName, FromJSString result) =>
                      CSSStyleDeclaration -> propertyName -> m result
getPropertyPriority self propertyName
  = liftIO
      (fromJSString <$>
         (js_getPropertyPriority (unCSSStyleDeclaration self)
            (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"setProperty\"]($2, $3, $4)"
        js_setProperty ::
        JSRef CSSStyleDeclaration ->
          JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.setProperty Mozilla CSSStyleDeclaration.setProperty documentation> 
setProperty ::
            (MonadIO m, ToJSString propertyName, ToJSString value,
             ToJSString priority) =>
              CSSStyleDeclaration -> propertyName -> value -> priority -> m ()
setProperty self propertyName value priority
  = liftIO
      (js_setProperty (unCSSStyleDeclaration self)
         (toJSString propertyName)
         (toJSString value)
         (toJSString priority))
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef CSSStyleDeclaration -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       CSSStyleDeclaration -> Word -> m result
item self index
  = liftIO
      (fromJSString <$> (js_item (unCSSStyleDeclaration self) index))
 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        js_getPropertyShorthand ::
        JSRef CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand ::
                     (MonadIO m, ToJSString propertyName, FromJSString result) =>
                       CSSStyleDeclaration -> propertyName -> m result
getPropertyShorthand self propertyName
  = liftIO
      (fromJSString <$>
         (js_getPropertyShorthand (unCSSStyleDeclaration self)
            (toJSString propertyName)))
 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)" js_isPropertyImplicit ::
        JSRef CSSStyleDeclaration -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit ::
                   (MonadIO m, ToJSString propertyName) =>
                     CSSStyleDeclaration -> propertyName -> m Bool
isPropertyImplicit self propertyName
  = liftIO
      (js_isPropertyImplicit (unCSSStyleDeclaration self)
         (toJSString propertyName))
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        js_setCssText :: JSRef CSSStyleDeclaration -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
setCssText ::
           (MonadIO m, ToJSString val) => CSSStyleDeclaration -> val -> m ()
setCssText self val
  = liftIO
      (js_setCssText (unCSSStyleDeclaration self) (toJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        JSRef CSSStyleDeclaration -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
getCssText ::
           (MonadIO m, FromJSString result) => CSSStyleDeclaration -> m result
getCssText self
  = liftIO
      (fromJSString <$> (js_getCssText (unCSSStyleDeclaration self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef CSSStyleDeclaration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
getLength :: (MonadIO m) => CSSStyleDeclaration -> m Word
getLength self = liftIO (js_getLength (unCSSStyleDeclaration self))
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        js_getParentRule :: JSRef CSSStyleDeclaration -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRule ::
              (MonadIO m) => CSSStyleDeclaration -> m (Maybe CSSRule)
getParentRule self
  = liftIO
      ((js_getParentRule (unCSSStyleDeclaration self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSStyleDeclaration (
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleDeclaration
#endif
