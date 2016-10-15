{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebKitCSSRegionRule
       (js_getCssRules, getCssRules, getCssRulesUnchecked,
        WebKitCSSRegionRule(..), gTypeWebKitCSSRegionRule)
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
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: WebKitCSSRegionRule -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule.cssRules Mozilla WebKitCSSRegionRule.cssRules documentation> 
getCssRules ::
            (MonadIO m) => WebKitCSSRegionRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSRegionRule.cssRules Mozilla WebKitCSSRegionRule.cssRules documentation> 
getCssRulesUnchecked ::
                     (MonadIO m) => WebKitCSSRegionRule -> m CSSRuleList
getCssRulesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getCssRules (self)))