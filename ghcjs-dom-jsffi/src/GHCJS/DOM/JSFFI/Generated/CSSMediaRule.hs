{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSMediaRule
       (js_insertRule, insertRule, js_deleteRule, deleteRule, js_getMedia,
        getMedia, js_getCssRules, getCssRules, CSSMediaRule,
        castToCSSMediaRule, gTypeCSSMediaRule)
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
 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule :: CSSMediaRule -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.insertRule Mozilla CSSMediaRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSMediaRule -> rule -> Word -> m Word
insertRule self rule index
  = liftIO (js_insertRule (self) (toJSString rule) index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSMediaRule -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.deleteRule Mozilla CSSMediaRule.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSMediaRule -> Word -> m ()
deleteRule self index = liftIO (js_deleteRule (self) index)
 
foreign import javascript unsafe "$1[\"media\"]" js_getMedia ::
        CSSMediaRule -> IO (Nullable MediaList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.media Mozilla CSSMediaRule.media documentation> 
getMedia :: (MonadIO m) => CSSMediaRule -> m (Maybe MediaList)
getMedia self = liftIO (nullableToMaybe <$> (js_getMedia (self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSMediaRule -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSMediaRule.cssRules Mozilla CSSMediaRule.cssRules documentation> 
getCssRules :: (MonadIO m) => CSSMediaRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))