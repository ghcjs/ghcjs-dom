{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSPageRule
       (js_setSelectorText, setSelectorText, js_getSelectorText,
        getSelectorText, js_getStyle, getStyle, CSSPageRule,
        castToCSSPageRule, gTypeCSSPageRule)
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

 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        js_setSelectorText :: JSRef CSSPageRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
setSelectorText ::
                (MonadIO m, ToJSString val) => CSSPageRule -> val -> m ()
setSelectorText self val
  = liftIO (js_setSelectorText (unCSSPageRule self) (toJSString val))
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        js_getSelectorText :: JSRef CSSPageRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorText ::
                (MonadIO m, FromJSString result) => CSSPageRule -> m result
getSelectorText self
  = liftIO
      (fromJSString <$> (js_getSelectorText (unCSSPageRule self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        JSRef CSSPageRule -> IO (JSRef CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSPageRule -> m (Maybe CSSStyleDeclaration)
getStyle self
  = liftIO ((js_getStyle (unCSSPageRule self)) >>= fromJSRef)
#else
module GHCJS.DOM.CSSPageRule (
  ) where
#endif
