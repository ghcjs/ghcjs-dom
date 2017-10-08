{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSValue
       (pattern CSS_INHERIT, pattern CSS_PRIMITIVE_VALUE,
        pattern CSS_VALUE_LIST, pattern CSS_CUSTOM, js_setCssText,
        setCssText, js_getCssText, getCssText, getCssTextUnsafe,
        getCssTextUnchecked, js_getCssValueType, getCssValueType,
        CSSValue(..), gTypeCSSValue, IsCSSValue, toCSSValue)
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
pattern CSS_INHERIT = 0
pattern CSS_PRIMITIVE_VALUE = 1
pattern CSS_VALUE_LIST = 2
pattern CSS_CUSTOM = 3
 
foreign import javascript safe "$1[\"cssText\"] = $2;"
        js_setCssText :: CSSValue -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
setCssText ::
           (MonadIO m, IsCSSValue self, ToJSString val) =>
             self -> Maybe val -> m ()
setCssText self val
  = liftIO (js_setCssText (toCSSValue self) (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"cssText\"]" js_getCssText ::
        CSSValue -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
getCssText ::
           (MonadIO m, IsCSSValue self, FromJSString result) =>
             self -> m (Maybe result)
getCssText self
  = liftIO (fromMaybeJSString <$> (js_getCssText (toCSSValue self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
getCssTextUnsafe ::
                 (MonadIO m, IsCSSValue self, HasCallStack, FromJSString result) =>
                   self -> m result
getCssTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getCssText (toCSSValue self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssText Mozilla CSSValue.cssText documentation> 
getCssTextUnchecked ::
                    (MonadIO m, IsCSSValue self, FromJSString result) =>
                      self -> m result
getCssTextUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getCssText (toCSSValue self)))
 
foreign import javascript unsafe "$1[\"cssValueType\"]"
        js_getCssValueType :: CSSValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValue.cssValueType Mozilla CSSValue.cssValueType documentation> 
getCssValueType :: (MonadIO m, IsCSSValue self) => self -> m Word
getCssValueType self
  = liftIO (js_getCssValueType (toCSSValue self))