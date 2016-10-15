{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleSheet
       (js_insertRule, insertRule, insertRule_, js_deleteRule, deleteRule,
        js_addRule, addRule, addRule_, js_removeRule, removeRule,
        js_getOwnerRule, getOwnerRule, getOwnerRuleUnchecked,
        js_getCssRules, getCssRules, getCssRulesUnchecked, js_getRules,
        getRules, getRulesUnchecked, CSSStyleSheet(..), gTypeCSSStyleSheet)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule :: CSSStyleSheet -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSStyleSheet -> rule -> Word -> m Word
insertRule self rule index
  = liftIO (js_insertRule (self) (toJSString rule) index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule_ ::
            (MonadIO m, ToJSString rule) =>
              CSSStyleSheet -> rule -> Word -> m ()
insertRule_ self rule index
  = liftIO (void (js_insertRule (self) (toJSString rule) index))
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.deleteRule Mozilla CSSStyleSheet.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSStyleSheet -> Word -> m ()
deleteRule self index = liftIO (js_deleteRule (self) index)
 
foreign import javascript unsafe "$1[\"addRule\"]($2, $3, $4)"
        js_addRule ::
        CSSStyleSheet -> JSString -> JSString -> Word -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule ::
        (MonadIO m, ToJSString selector, ToJSString style) =>
          CSSStyleSheet -> selector -> style -> Word -> m Int
addRule self selector style index
  = liftIO
      (js_addRule (self) (toJSString selector) (toJSString style) index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule_ ::
         (MonadIO m, ToJSString selector, ToJSString style) =>
           CSSStyleSheet -> selector -> style -> Word -> m ()
addRule_ self selector style index
  = liftIO
      (void
         (js_addRule (self) (toJSString selector) (toJSString style) index))
 
foreign import javascript unsafe "$1[\"removeRule\"]($2)"
        js_removeRule :: CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.removeRule Mozilla CSSStyleSheet.removeRule documentation> 
removeRule :: (MonadIO m) => CSSStyleSheet -> Word -> m ()
removeRule self index = liftIO (js_removeRule (self) index)
 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        js_getOwnerRule :: CSSStyleSheet -> IO (Nullable CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRule :: (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRule)
getOwnerRule self
  = liftIO (nullableToMaybe <$> (js_getOwnerRule (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRuleUnchecked :: (MonadIO m) => CSSStyleSheet -> m CSSRule
getOwnerRuleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOwnerRule (self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSStyleSheet -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRulesUnchecked ::
                     (MonadIO m) => CSSStyleSheet -> m CSSRuleList
getCssRulesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCssRules (self)))
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        CSSStyleSheet -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRules :: (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getRules self = liftIO (nullableToMaybe <$> (js_getRules (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRulesUnchecked :: (MonadIO m) => CSSStyleSheet -> m CSSRuleList
getRulesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRules (self)))