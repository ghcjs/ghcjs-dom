{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleDeclaration
       (js_getPropertyValue, getPropertyValue, js_getPropertyCSSValue,
        getPropertyCSSValue, js_removeProperty, removeProperty,
        js_getPropertyPriority, getPropertyPriority, js_setProperty,
        setProperty, js_item, item, js_getPropertyShorthand,
        getPropertyShorthand, js_isPropertyImplicit, isPropertyImplicit,
        js_setCssText, setCssText, js_getCssText, getCssText, js_getLength,
        getLength, js_getParentRule, getParentRule, CSSStyleDeclaration,
        castToCSSStyleDeclaration, gTypeCSSStyleDeclaration)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"getPropertyValue\"]($2)"
        js_getPropertyValue ::
        CSSStyleDeclaration -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue ::
                 (MonadIO m, ToJSString propertyName, FromJSString result) =>
                   CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyValue self propertyName
  = liftIO
      (fromMaybeJSString <$>
         (js_getPropertyValue (self) (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"getPropertyCSSValue\"]($2)"
        js_getPropertyCSSValue ::
        CSSStyleDeclaration -> JSString -> IO (Nullable CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue ::
                    (MonadIO m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe CSSValue)
getPropertyCSSValue self propertyName
  = liftIO
      (nullableToMaybe <$>
         (js_getPropertyCSSValue (self) (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"removeProperty\"]($2)"
        js_removeProperty ::
        CSSStyleDeclaration -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty ::
               (MonadIO m, ToJSString propertyName, FromJSString result) =>
                 CSSStyleDeclaration -> propertyName -> m (Maybe result)
removeProperty self propertyName
  = liftIO
      (fromMaybeJSString <$>
         (js_removeProperty (self) (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"getPropertyPriority\"]($2)"
        js_getPropertyPriority ::
        CSSStyleDeclaration -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority ::
                    (MonadIO m, ToJSString propertyName, FromJSString result) =>
                      CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyPriority self propertyName
  = liftIO
      (fromMaybeJSString <$>
         (js_getPropertyPriority (self) (toJSString propertyName)))
 
foreign import javascript unsafe "$1[\"setProperty\"]($2, $3, $4)"
        js_setProperty ::
        CSSStyleDeclaration ->
          JSString -> Nullable JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.setProperty Mozilla CSSStyleDeclaration.setProperty documentation> 
setProperty ::
            (MonadIO m, ToJSString propertyName, ToJSString value,
             ToJSString priority) =>
              CSSStyleDeclaration ->
                propertyName -> Maybe value -> priority -> m ()
setProperty self propertyName value priority
  = liftIO
      (js_setProperty (self) (toJSString propertyName)
         (toMaybeJSString value)
         (toJSString priority))
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        CSSStyleDeclaration -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       CSSStyleDeclaration -> Word -> m result
item self index = liftIO (fromJSString <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        js_getPropertyShorthand ::
        CSSStyleDeclaration -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand ::
                     (MonadIO m, ToJSString propertyName, FromJSString result) =>
                       CSSStyleDeclaration -> propertyName -> m (Maybe result)
getPropertyShorthand self propertyName
  = liftIO
      (fromMaybeJSString <$>
         (js_getPropertyShorthand (self) (toJSString propertyName)))
 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)" js_isPropertyImplicit ::
        CSSStyleDeclaration -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit ::
                   (MonadIO m, ToJSString propertyName) =>
                     CSSStyleDeclaration -> propertyName -> m Bool
isPropertyImplicit self propertyName
  = liftIO (js_isPropertyImplicit (self) (toJSString propertyName))
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        js_setCssText :: CSSStyleDeclaration -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
setCssText ::
           (MonadIO m, ToJSString val) =>
             CSSStyleDeclaration -> Maybe val -> m ()
setCssText self val
  = liftIO (js_setCssText (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        CSSStyleDeclaration -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
getCssText ::
           (MonadIO m, FromJSString result) =>
             CSSStyleDeclaration -> m (Maybe result)
getCssText self
  = liftIO (fromMaybeJSString <$> (js_getCssText (self)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        CSSStyleDeclaration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
getLength :: (MonadIO m) => CSSStyleDeclaration -> m Word
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        js_getParentRule :: CSSStyleDeclaration -> IO (Nullable CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRule ::
              (MonadIO m) => CSSStyleDeclaration -> m (Maybe CSSRule)
getParentRule self
  = liftIO (nullableToMaybe <$> (js_getParentRule (self)))