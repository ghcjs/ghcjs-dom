{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSPageRule
       (js_setSelectorText, setSelectorText, js_getSelectorText,
        getSelectorText, getSelectorTextUnsafe, getSelectorTextUnchecked,
        js_getStyle, getStyle, CSSPageRule(..), gTypeCSSPageRule)
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
 
foreign import javascript unsafe "$1[\"selectorText\"] = $2;"
        js_setSelectorText :: CSSPageRule -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
setSelectorText ::
                (MonadIO m, ToJSString val) => CSSPageRule -> Maybe val -> m ()
setSelectorText self val
  = liftIO (js_setSelectorText self (toOptionalJSString val))
 
foreign import javascript unsafe "$1[\"selectorText\"]"
        js_getSelectorText :: CSSPageRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorText ::
                (MonadIO m, FromJSString result) => CSSPageRule -> m (Maybe result)
getSelectorText self
  = liftIO (fromMaybeJSString <$> (js_getSelectorText self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorTextUnsafe ::
                      (MonadIO m, HasCallStack, FromJSString result) =>
                        CSSPageRule -> m result
getSelectorTextUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getSelectorText self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.selectorText Mozilla CSSPageRule.selectorText documentation> 
getSelectorTextUnchecked ::
                         (MonadIO m, FromJSString result) => CSSPageRule -> m result
getSelectorTextUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getSelectorText self))
 
foreign import javascript unsafe "$1[\"style\"]" js_getStyle ::
        CSSPageRule -> IO CSSStyleDeclaration

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSPageRule.style Mozilla CSSPageRule.style documentation> 
getStyle :: (MonadIO m) => CSSPageRule -> m CSSStyleDeclaration
getStyle self = liftIO (js_getStyle self)