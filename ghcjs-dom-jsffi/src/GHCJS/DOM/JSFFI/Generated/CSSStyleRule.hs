{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSStyleRule
       (js_setSelectorText, setSelectorText, js_getSelectorText,
        getSelectorText, getSelectorTextUnsafe, getSelectorTextUnchecked,
        js_getStyle, getStyle, getStyleUnsafe, getStyleUnchecked,
        CSSStyleRule(..), gTypeCSSStyleRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorTextUnsafe ::
                      (MonadIO m, HasCallStack, FromJSString result) =>
                        CSSStyleRule -> m result
getSelectorTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getSelectorText (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.selectorText Mozilla CSSStyleRule.selectorText documentation> 
getSelectorTextUnchecked ::
                         (MonadIO m, FromJSString result) => CSSStyleRule -> m result
getSelectorTextUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getSelectorText (self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        CSSStyleRule -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSStyleRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftIO (nullableToMaybe <$> (js_getStyle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyleUnsafe ::
               (MonadIO m, HasCallStack) => CSSStyleRule -> m CSSStyleDeclaration
getStyleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStyle (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleRule.style Mozilla CSSStyleRule.style documentation> 
getStyleUnchecked ::
                  (MonadIO m) => CSSStyleRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyle (self)))