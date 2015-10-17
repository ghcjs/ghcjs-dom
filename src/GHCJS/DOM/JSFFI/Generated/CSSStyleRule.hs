{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleRule
       (js_setSelectorText, setSelectorText, js_getSelectorText,
        getSelectorText, js_getStyle, getStyle, CSSStyleRule,
        castToCSSStyleRule, gTypeCSSStyleRule)
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
 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        js_setSelectorText :: CSSStyleRule -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
setSelectorText ::
                (MonadIO m, ToJSString val) => CSSStyleRule -> Maybe val -> m ()
setSelectorText self val
  = liftIO (js_setSelectorText (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        js_getSelectorText :: CSSStyleRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorText ::
                (MonadIO m, FromJSString result) =>
                  CSSStyleRule -> m (Maybe result)
getSelectorText self
  = liftIO (fromMaybeJSString <$> (js_getSelectorText (self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        CSSStyleRule -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSStyleRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftIO (nullableToMaybe <$> (js_getStyle (self)))