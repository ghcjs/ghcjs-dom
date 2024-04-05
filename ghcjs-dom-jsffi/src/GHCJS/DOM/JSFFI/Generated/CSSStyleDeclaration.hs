{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleDeclaration
       (js_getPropertyValue, getPropertyValue, getPropertyValue_,
        js_getPropertyCSSValue, getPropertyCSSValue, getPropertyCSSValue_,
        getPropertyCSSValueUnsafe, getPropertyCSSValueUnchecked,
        js_removeProperty, removeProperty, removeProperty_,
        js_getPropertyPriority, getPropertyPriority, getPropertyPriority_,
        getPropertyPriorityUnsafe, getPropertyPriorityUnchecked,
        js_setProperty, setProperty, js_item, item, item_,
        js_getPropertyShorthand, getPropertyShorthand,
        getPropertyShorthand_, getPropertyShorthandUnsafe,
        getPropertyShorthandUnchecked, js_isPropertyImplicit,
        isPropertyImplicit, isPropertyImplicit_, js_setCssText, setCssText,
        js_getCssText, getCssText, js_getLength, getLength,
        js_getParentRule, getParentRule, getParentRuleUnsafe,
        getParentRuleUnchecked, CSSStyleDeclaration(..),
        gTypeCSSStyleDeclaration)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"getPropertyValue\"]($2)"
        js_getPropertyValue ::
        CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue ::
                 (MonadIO m, ToJSString propertyName, FromJSString result) =>
                   CSSStyleDeclaration -> propertyName -> m result
getPropertyValue self propertyName
  = liftIO
      (fromJSString <$>
         (js_getPropertyValue self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyValue Mozilla CSSStyleDeclaration.getPropertyValue documentation> 
getPropertyValue_ ::
                  (MonadIO m, ToJSString propertyName) =>
                    CSSStyleDeclaration -> propertyName -> m ()
getPropertyValue_ self propertyName
  = liftIO
      (void (js_getPropertyValue self (toJSString propertyName)))
 
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
         (js_getPropertyCSSValue self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValue_ ::
                     (MonadIO m, ToJSString propertyName) =>
                       CSSStyleDeclaration -> propertyName -> m ()
getPropertyCSSValue_ self propertyName
  = liftIO
      (void (js_getPropertyCSSValue self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValueUnsafe ::
                          (MonadIO m, ToJSString propertyName, HasCallStack) =>
                            CSSStyleDeclaration -> propertyName -> m CSSValue
getPropertyCSSValueUnsafe self propertyName
  = liftIO
      ((nullableToMaybe <$>
          (js_getPropertyCSSValue self (toJSString propertyName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyCSSValue Mozilla CSSStyleDeclaration.getPropertyCSSValue documentation> 
getPropertyCSSValueUnchecked ::
                             (MonadIO m, ToJSString propertyName) =>
                               CSSStyleDeclaration -> propertyName -> m CSSValue
getPropertyCSSValueUnchecked self propertyName
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getPropertyCSSValue self (toJSString propertyName)))
 
foreign import javascript safe "$1[\"removeProperty\"]($2)"
        js_removeProperty :: CSSStyleDeclaration -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty ::
               (MonadIO m, ToJSString propertyName, FromJSString result) =>
                 CSSStyleDeclaration -> propertyName -> m result
removeProperty self propertyName
  = liftIO
      (fromJSString <$>
         (js_removeProperty self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.removeProperty Mozilla CSSStyleDeclaration.removeProperty documentation> 
removeProperty_ ::
                (MonadIO m, ToJSString propertyName) =>
                  CSSStyleDeclaration -> propertyName -> m ()
removeProperty_ self propertyName
  = liftIO (void (js_removeProperty self (toJSString propertyName)))
 
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
         (js_getPropertyPriority self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriority_ ::
                     (MonadIO m, ToJSString propertyName) =>
                       CSSStyleDeclaration -> propertyName -> m ()
getPropertyPriority_ self propertyName
  = liftIO
      (void (js_getPropertyPriority self (toJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriorityUnsafe ::
                          (MonadIO m, ToJSString propertyName, HasCallStack,
                           FromJSString result) =>
                            CSSStyleDeclaration -> propertyName -> m result
getPropertyPriorityUnsafe self propertyName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getPropertyPriority self (toJSString propertyName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyPriority Mozilla CSSStyleDeclaration.getPropertyPriority documentation> 
getPropertyPriorityUnchecked ::
                             (MonadIO m, ToJSString propertyName, FromJSString result) =>
                               CSSStyleDeclaration -> propertyName -> m result
getPropertyPriorityUnchecked self propertyName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getPropertyPriority self (toJSString propertyName)))
 
foreign import javascript safe "$1[\"setProperty\"]($2, $3, $4)"
        js_setProperty ::
        CSSStyleDeclaration ->
          JSString -> JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.setProperty Mozilla CSSStyleDeclaration.setProperty documentation> 
setProperty ::
            (MonadIO m, ToJSString propertyName, ToJSString value,
             ToJSString priority) =>
              CSSStyleDeclaration ->
                propertyName -> value -> Maybe priority -> m ()
setProperty self propertyName value priority
  = liftIO
      (js_setProperty self (toJSString propertyName) (toJSString value)
         (toOptionalJSString priority))
 
foreign import javascript unsafe "$1[$2]" js_item ::
        CSSStyleDeclaration -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       CSSStyleDeclaration -> Word -> m result
item self index = liftIO (fromJSString <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.item Mozilla CSSStyleDeclaration.item documentation> 
item_ :: (MonadIO m) => CSSStyleDeclaration -> Word -> m ()
item_ self index = liftIO (void (js_item self index))
 
foreign import javascript unsafe "$1[\"getPropertyShorthand\"]($2)"
        js_getPropertyShorthand ::
        CSSStyleDeclaration -> Optional JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand ::
                     (MonadIO m, ToJSString propertyName, FromJSString result) =>
                       CSSStyleDeclaration -> Maybe propertyName -> m (Maybe result)
getPropertyShorthand self propertyName
  = liftIO
      (fromMaybeJSString <$>
         (js_getPropertyShorthand self (toOptionalJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthand_ ::
                      (MonadIO m, ToJSString propertyName) =>
                        CSSStyleDeclaration -> Maybe propertyName -> m ()
getPropertyShorthand_ self propertyName
  = liftIO
      (void
         (js_getPropertyShorthand self (toOptionalJSString propertyName)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthandUnsafe ::
                           (MonadIO m, ToJSString propertyName, HasCallStack,
                            FromJSString result) =>
                             CSSStyleDeclaration -> Maybe propertyName -> m result
getPropertyShorthandUnsafe self propertyName
  = liftIO
      ((fromMaybeJSString <$>
          (js_getPropertyShorthand self (toOptionalJSString propertyName)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.getPropertyShorthand Mozilla CSSStyleDeclaration.getPropertyShorthand documentation> 
getPropertyShorthandUnchecked ::
                              (MonadIO m, ToJSString propertyName, FromJSString result) =>
                                CSSStyleDeclaration -> Maybe propertyName -> m result
getPropertyShorthandUnchecked self propertyName
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getPropertyShorthand self (toOptionalJSString propertyName)))
 
foreign import javascript unsafe
        "($1[\"isPropertyImplicit\"]($2) ? 1 : 0)" js_isPropertyImplicit ::
        CSSStyleDeclaration -> Optional JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit ::
                   (MonadIO m, ToJSString propertyName) =>
                     CSSStyleDeclaration -> Maybe propertyName -> m Bool
isPropertyImplicit self propertyName
  = liftIO
      (js_isPropertyImplicit self (toOptionalJSString propertyName))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.isPropertyImplicit Mozilla CSSStyleDeclaration.isPropertyImplicit documentation> 
isPropertyImplicit_ ::
                    (MonadIO m, ToJSString propertyName) =>
                      CSSStyleDeclaration -> Maybe propertyName -> m ()
isPropertyImplicit_ self propertyName
  = liftIO
      (void
         (js_isPropertyImplicit self (toOptionalJSString propertyName)))
 
foreign import javascript safe "$1[\"cssText\"] = $2;"
        js_setCssText :: CSSStyleDeclaration -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
setCssText ::
           (MonadIO m, ToJSString val) => CSSStyleDeclaration -> val -> m ()
setCssText self val = liftIO (js_setCssText self (toJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        CSSStyleDeclaration -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.cssText Mozilla CSSStyleDeclaration.cssText documentation> 
getCssText ::
           (MonadIO m, FromJSString result) => CSSStyleDeclaration -> m result
getCssText self = liftIO (fromJSString <$> (js_getCssText self))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        CSSStyleDeclaration -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.length Mozilla CSSStyleDeclaration.length documentation> 
getLength :: (MonadIO m) => CSSStyleDeclaration -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript unsafe "$1[\"parentRule\"]"
        js_getParentRule :: CSSStyleDeclaration -> IO (Nullable CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRule ::
              (MonadIO m) => CSSStyleDeclaration -> m (Maybe CSSRule)
getParentRule self
  = liftIO (nullableToMaybe <$> (js_getParentRule self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRuleUnsafe ::
                    (MonadIO m, HasCallStack) => CSSStyleDeclaration -> m CSSRule
getParentRuleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getParentRule self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration.parentRule Mozilla CSSStyleDeclaration.parentRule documentation> 
getParentRuleUnchecked ::
                       (MonadIO m) => CSSStyleDeclaration -> m CSSRule
getParentRuleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getParentRule self))