{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSStyleSheet
       (js_insertRule, insertRule, js_deleteRule, deleteRule, js_addRule,
        addRule, js_removeRule, removeRule, js_getOwnerRule, getOwnerRule,
        js_getCssRules, getCssRules, js_getRules, getRules, CSSStyleSheet,
        castToCSSStyleSheet, gTypeCSSStyleSheet)
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

 
foreign import javascript unsafe "$1[\"insertRule\"]($2, $3)"
        js_insertRule :: JSRef CSSStyleSheet -> JSString -> Word -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.insertRule Mozilla CSSStyleSheet.insertRule documentation> 
insertRule ::
           (MonadIO m, ToJSString rule) =>
             CSSStyleSheet -> rule -> Word -> m Word
insertRule self rule index
  = liftIO
      (js_insertRule (unCSSStyleSheet self) (toJSString rule) index)
 
foreign import javascript unsafe "$1[\"deleteRule\"]($2)"
        js_deleteRule :: JSRef CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.deleteRule Mozilla CSSStyleSheet.deleteRule documentation> 
deleteRule :: (MonadIO m) => CSSStyleSheet -> Word -> m ()
deleteRule self index
  = liftIO (js_deleteRule (unCSSStyleSheet self) index)
 
foreign import javascript unsafe "$1[\"addRule\"]($2, $3, $4)"
        js_addRule ::
        JSRef CSSStyleSheet -> JSString -> JSString -> Word -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.addRule Mozilla CSSStyleSheet.addRule documentation> 
addRule ::
        (MonadIO m, ToJSString selector, ToJSString style) =>
          CSSStyleSheet -> selector -> style -> Word -> m Int
addRule self selector style index
  = liftIO
      (js_addRule (unCSSStyleSheet self) (toJSString selector)
         (toJSString style)
         index)
 
foreign import javascript unsafe "$1[\"removeRule\"]($2)"
        js_removeRule :: JSRef CSSStyleSheet -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.removeRule Mozilla CSSStyleSheet.removeRule documentation> 
removeRule :: (MonadIO m) => CSSStyleSheet -> Word -> m ()
removeRule self index
  = liftIO (js_removeRule (unCSSStyleSheet self) index)
 
foreign import javascript unsafe "$1[\"ownerRule\"]"
        js_getOwnerRule :: JSRef CSSStyleSheet -> IO (JSRef CSSRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.ownerRule Mozilla CSSStyleSheet.ownerRule documentation> 
getOwnerRule :: (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRule)
getOwnerRule self
  = liftIO ((js_getOwnerRule (unCSSStyleSheet self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"cssRules\"]" js_getCssRules
        :: JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.cssRules Mozilla CSSStyleSheet.cssRules documentation> 
getCssRules ::
            (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getCssRules self
  = liftIO ((js_getCssRules (unCSSStyleSheet self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"rules\"]" js_getRules ::
        JSRef CSSStyleSheet -> IO (JSRef CSSRuleList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleSheet.rules Mozilla CSSStyleSheet.rules documentation> 
getRules :: (MonadIO m) => CSSStyleSheet -> m (Maybe CSSRuleList)
getRules self
  = liftIO ((js_getRules (unCSSStyleSheet self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSStyleSheet (
  module Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
  ) where
import Graphics.UI.Gtk.WebKit.DOM.CSSStyleSheet
#endif
