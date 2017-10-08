{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleSheet
       (js_insertRuleDeprecated, insertRuleDeprecated,
        insertRuleDeprecated_, js_insertRule, insertRule, insertRule_,
        js_deleteRule, deleteRule, js_addRule, addRule, addRule_,
        js_removeRule, removeRule, js_getOwnerRule, getOwnerRule,
        js_getCssRules, getCssRules, js_getRules, getRules,
        CSSStyleSheet(..), gTypeCSSStyleSheet)
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
 
foreign import javascript safe "$1[\"insertRule\"]($2, $3)"
        js_insertRuleDeprecated ::
        CSSStyleSheet -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRuleDeprecated ::
                     (MonadIO m, ToJSString rule) =>
                       CSSStyleSheet -> rule -> Word -> m Word
insertRuleDeprecated self rule index
  = liftIO (js_insertRuleDeprecated self (toJSString rule) index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRuleDeprecated_ ::
                      (MonadIO m, ToJSString rule) =>
                        CSSStyleSheet -> rule -> Word -> m ()
insertRuleDeprecated_ self rule index
  = liftIO
      (void (js_insertRuleDeprecated self (toJSString rule) index))
 
foreign import javascript safe "$1[\"insertRule\"]($2)"
        js_insertRule :: CSSStyleSheet -> JSString -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) => CSSStyleSheet -> rule -> m Word
insertRule self rule
  = liftIO (js_insertRule self (toJSString rule))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule_ ::
            (MonadIO m, ToJSString rule) => CSSStyleSheet -> rule -> m ()
insertRule_ self rule
  = liftIO (void (js_insertRule self (toJSString rule)))
 
foreign import javascript safe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.deleteRule Mozilla CSSStyleSheet.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSStyleSheet -> Word -> m ()
deleteRule self index = liftIO (js_deleteRule self index)
 
foreign import javascript safe "$1[\"addRule\"]($2, $3, $4)"
        js_addRule ::
        CSSStyleSheet ->
          Optional JSString -> Optional JSString -> Optional Word -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule ::
        (MonadIO m, ToJSString selector, ToJSString style) =>
          CSSStyleSheet ->
            Maybe selector -> Maybe style -> Maybe Word -> m Int
addRule self selector style index
  = liftIO
      (js_addRule self (toOptionalJSString selector)
         (toOptionalJSString style)
         (maybeToOptional index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule_ ::
         (MonadIO m, ToJSString selector, ToJSString style) =>
           CSSStyleSheet ->
             Maybe selector -> Maybe style -> Maybe Word -> m ()
addRule_ self selector style index
  = liftIO
      (void
         (js_addRule self (toOptionalJSString selector)
            (toOptionalJSString style)
            (maybeToOptional index)))
 
foreign import javascript safe "$1[\"removeRule\"]($2)"
        js_removeRule :: CSSStyleSheet -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.removeRule Mozilla CSSStyleSheet.removeRule documentation> 
removeRule :: (MonadIO m) => CSSStyleSheet -> Maybe Word -> m ()
removeRule self index
  = liftIO (js_removeRule self (maybeToOptional index))
 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        js_getOwnerRule :: CSSStyleSheet -> IO CSSRule

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRule :: (MonadIO m) => CSSStyleSheet -> m CSSRule
getOwnerRule self = liftIO (js_getOwnerRule self)
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSStyleSheet -> IO CSSRuleList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRules :: (MonadIO m) => CSSStyleSheet -> m CSSRuleList
getCssRules self = liftIO (js_getCssRules self)
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        CSSStyleSheet -> IO CSSRuleList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRules :: (MonadIO m) => CSSStyleSheet -> m CSSRuleList
getRules self = liftIO (js_getRules self)