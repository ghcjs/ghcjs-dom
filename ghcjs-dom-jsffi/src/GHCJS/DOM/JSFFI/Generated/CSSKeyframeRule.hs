{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSKeyframeRule
       (js_setKeyText, setKeyText, js_getKeyText, getKeyText, js_getStyle,
        getStyle, getStyleUnsafe, getStyleUnchecked, CSSKeyframeRule(..),
        gTypeCSSKeyframeRule)
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
 
foreign import javascript unsafe "$1[\"keyText\"] = $2;"
        js_setKeyText :: CSSKeyframeRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
setKeyText ::
           (MonadIO m, ToJSString val) => CSSKeyframeRule -> val -> m ()
setKeyText self val
  = liftIO (js_setKeyText (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"keyText\"]" js_getKeyText ::
        CSSKeyframeRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.keyText Mozilla CSSKeyframeRule.keyText documentation> 
getKeyText ::
           (MonadIO m, FromJSString result) => CSSKeyframeRule -> m result
getKeyText self = liftIO (fromJSString <$> (js_getKeyText (self)))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        CSSKeyframeRule -> IO (Nullable CSSStyleDeclaration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyle ::
         (MonadIO m) => CSSKeyframeRule -> m (Maybe CSSStyleDeclaration)
getStyle self = liftIO (nullableToMaybe <$> (js_getStyle (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyleUnsafe ::
               (MonadIO m, HasCallStack) =>
                 CSSKeyframeRule -> m CSSStyleDeclaration
getStyleUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getStyle (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSKeyframeRule.style Mozilla CSSKeyframeRule.style documentation> 
getStyleUnchecked ::
                  (MonadIO m) => CSSKeyframeRule -> m CSSStyleDeclaration
getStyleUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getStyle (self)))