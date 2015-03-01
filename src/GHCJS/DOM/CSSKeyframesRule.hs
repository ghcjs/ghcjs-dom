{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSKeyframesRule
       (js_insertRule, insertRule, js_appendRule, appendRule,
        js_deleteRule, deleteRule, js_findRule, findRule, js__get, _get,
        js_setName, setName, js_getName, getName, js_getCssRules,
        getCssRules, CSSKeyframesRule, castToCSSKeyframesRule,
        gTypeCSSKeyframesRule)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"insertRule\"]($2)"
        js_insertRule :: JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.insertRule Mozilla CSSKeyframesRule.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
insertRule self rule
  = liftIO
      (js_insertRule (unCSSKeyframesRule self) (toJSString rule))
 
foreign import javascript unsafe "$1[\"appendRule\"]($2)"
        js_appendRule :: JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.appendRule Mozilla CSSKeyframesRule.appendRule documentation> 
appendRule ::
           (MonadIO m, ToJSString rule) => CSSKeyframesRule -> rule -> m ()
appendRule self rule
  = liftIO
      (js_appendRule (unCSSKeyframesRule self) (toJSString rule))
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.deleteRule Mozilla CSSKeyframesRule.deleteRule documentation> 
deleteRule ::
           (MonadIO m, ToJSString key) => CSSKeyframesRule -> key -> m ()
deleteRule self key
  = liftIO (js_deleteRule (unCSSKeyframesRule self) (toJSString key))
 
foreign import javascript unsafe "$1[\"findRule\"]($2)" js_findRule
        :: JSRef CSSKeyframesRule -> JSString -> IO (JSRef CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.findRule Mozilla CSSKeyframesRule.findRule documentation> 
findRule ::
         (MonadIO m, ToJSString key) =>
           CSSKeyframesRule -> key -> m (Maybe CSSKeyframeRule)
findRule self key
  = liftIO
      ((js_findRule (unCSSKeyframesRule self) (toJSString key)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef CSSKeyframesRule -> Word -> IO (JSRef CSSKeyframeRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule._get Mozilla CSSKeyframesRule._get documentation> 
_get ::
     (MonadIO m) =>
       CSSKeyframesRule -> Word -> m (Maybe CSSKeyframeRule)
_get self index
  = liftIO ((js__get (unCSSKeyframesRule self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef CSSKeyframesRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => CSSKeyframesRule -> val -> m ()
setName self val
  = liftIO (js_setName (unCSSKeyframesRule self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef CSSKeyframesRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.name Mozilla CSSKeyframesRule.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => CSSKeyframesRule -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unCSSKeyframesRule self)))
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: JSRef CSSKeyframesRule -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframesRule.cssRules Mozilla CSSKeyframesRule.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSKeyframesRule -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO ((js_getCssRules (unCSSKeyframesRule self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSKeyframesRule (
  ) where
#endif
