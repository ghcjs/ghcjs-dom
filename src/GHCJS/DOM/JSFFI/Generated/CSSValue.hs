{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSValue
       (pattern CSS_INHERIT, pattern CSS_PRIMITIVE_VALUE,
        pattern CSS_VALUE_LIST, pattern CSS_CUSTOM, js_setCssText,
        setCssText, js_getCssText, getCssText, js_getCssValueType,
        getCssValueType, CSSValue, castToCSSValue, gTypeCSSValue,
        IsCSSValue, toCSSValue)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
pattern CSS_INHERIT = 0
pattern CSS_PRIMITIVE_VALUE = 1
pattern CSS_VALUE_LIST = 2
pattern CSS_CUSTOM = 3
 
foreign import javascript unsafe "$1[\"cssText\"] = $2;"
        js_setCssText :: JSRef CSSValue -> JSRef (Maybe JSString) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
setCssText ::
           (MonadIO m, IsCSSValue self, ToJSString val) =>
             self -> Maybe val -> m ()
setCssText self val
  = liftIO
      (js_setCssText (unCSSValue (toCSSValue self))
         (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        JSRef CSSValue -> IO (JSRef (Maybe JSString))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
getCssText ::
           (MonadIO m, IsCSSValue self, FromJSString result) =>
             self -> m (Maybe result)
getCssText self
  = liftIO
      (fromMaybeJSString <$>
         (js_getCssText (unCSSValue (toCSSValue self))))
 
foreign import javascript unsafe "$1[\"cssValueType\"]"
        js_getCssValueType :: JSRef CSSValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssValueType Mozilla CSSValue.cssValueType documentation> 
getCssValueType :: (MonadIO m, IsCSSValue self) => self -> m Word
getCssValueType self
  = liftIO (js_getCssValueType (unCSSValue (toCSSValue self)))