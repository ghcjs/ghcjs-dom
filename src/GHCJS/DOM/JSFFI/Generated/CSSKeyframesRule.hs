{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSKeyframesRule
       (js_insertRule, insertRule, js_appendRule, appendRule,
        js_deleteRule, deleteRule, js_findRule, findRule, js__get, _get,
        js_setName, setName, js_getName, getName, js_getCssRules,
        getCssRules, CSSKeyframesRule, castToCSSKeyframesRule,
        gTypeCSSKeyframesRule)
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
 
foreign import javascript unsafe "$1[\"insertRule\"]($2)"
        js_insertRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.insertRule Mozilla CSSKeyframesRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
insertRule self rule
  = liftIO (js_insertRule (self) (toJSString rule))
 
foreign import javascript unsafe "$1[\"appendRule\"]($2)"
        js_appendRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.appendRule Mozilla CSSKeyframesRule.appendRule documentation> 
appendRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
appendRule self rule
  = liftIO (js_appendRule (self) (toJSString rule))
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.deleteRule Mozilla CSSKeyframesRule.deleteRule documentation> 
deleteRule ::
           (MonadIO m, ToJSString key) => CSSKeyframesRule -> key -> m ()
deleteRule self key
  = liftIO (js_deleteRule (self) (toJSString key))
 
foreign import javascript unsafe "$1[\"findRule\"]($2)" js_findRule
        :: CSSKeyframesRule -> JSString -> IO (Nullable CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRule ::
         (MonadIO m, ToJSString key) =>
           CSSKeyframesRule -> key -> m (Maybe CSSKeyframeRule)
findRule self key
  = liftIO
      (nullableToMaybe <$> (js_findRule (self) (toJSString key)))
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        CSSKeyframesRule -> Word -> IO (Nullable CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule._get Mozilla CSSKeyframesRule._get documentation> 
_get ::
     (MonadIO m) =>
       CSSKeyframesRule -> Word -> m (Maybe CSSKeyframeRule)
_get self index
  = liftIO (nullableToMaybe <$> (js__get (self) index))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        CSSKeyframesRule -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
setName ::
        (MonadIO m, ToJSString val) =>
          CSSKeyframesRule -> Maybe val -> m ()
setName self val = liftIO (js_setName (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        CSSKeyframesRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
getName ::
        (MonadIO m, FromJSString result) =>
          CSSKeyframesRule -> m (Maybe result)
getName self = liftIO (fromMaybeJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: CSSKeyframesRule -> IO (Nullable CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.cssRules Mozilla CSSKeyframesRule.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSKeyframesRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO (nullableToMaybe <$> (js_getCssRules (self)))