{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleRule
       (js_setSelectorText, setSelectorText, js_getSelectorText,
        getSelectorText, js_getStyle, getStyle, CSSStyleRule,
        castToCSSStyleRule, gTypeCSSStyleRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        js_setSelectorText :: JSRef CSSStyleRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
setSelectorText ::
                (MonadIO m, ToJSString val) => CSSStyleRule -> val -> m ()
setSelectorText self val
  = liftIO
      (js_setSelectorText (unCSSStyleRule self) (toJSString val))
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        js_getSelectorText :: JSRef CSSStyleRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorText ::
                (MonadIO m, FromJSString result) => CSSStyleRule -> m result
getSelectorText self
  = liftIO
      (fromJSString <$> (js_getSelectorText (unCSSStyleRule self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        JSRef CSSStyleRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSStyleRule -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO ((js_getStyle (unCSSStyleRule self)) >>= fromJSRef)