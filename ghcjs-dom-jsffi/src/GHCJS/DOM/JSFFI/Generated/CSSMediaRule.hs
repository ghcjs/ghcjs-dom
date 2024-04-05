{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSMediaRule
       (js_insertRule, insertRule, insertRule_, js_deleteRule, deleteRule,
        js_getMedia, getMedia, js_getCssRules, getCssRules,
        CSSMediaRule(..), gTypeCSSMediaRule)
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
        js_insertRule ::
        CSSMediaRule -> Optional JSString -> Optional Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSMediaRule -> Maybe rule -> Maybe Word -> m Word
insertRule self rule index
  = liftIO
      (js_insertRule self (toOptionalJSString rule)
         (maybeToOptional index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule_ ::
            (MonadIO m, ToJSString rule) =>
              CSSMediaRule -> Maybe rule -> Maybe Word -> m ()
insertRule_ self rule index
  = liftIO
      (void
         (js_insertRule self (toOptionalJSString rule)
            (maybeToOptional index)))
 
foreign import javascript safe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSMediaRule -> Optional Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSMediaRule -> Maybe Word -> m ()
deleteRule self index
  = liftIO (js_deleteRule self (maybeToOptional index))
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        CSSMediaRule -> IO MediaList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMedia :: (MonadIO m) => CSSMediaRule -> m MediaList
getMedia self = liftIO (js_getMedia self)
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSMediaRule -> IO CSSRuleList

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRules :: (MonadIO m) => CSSMediaRule -> m CSSRuleList
getCssRules self = liftIO (js_getCssRules self)