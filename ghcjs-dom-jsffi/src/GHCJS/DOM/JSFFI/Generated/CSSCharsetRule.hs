{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CSSCharsetRule
       (js_setEncoding, setEncoding, js_getEncoding, getEncoding,
        getEncodingUnsafe, getEncodingUnchecked, CSSCharsetRule(..),
        gTypeCSSCharsetRule)
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
 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: CSSCharsetRule -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => CSSCharsetRule -> Maybe val -> m ()
setEncoding self val
  = liftIO (js_setEncoding (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: CSSCharsetRule -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) =>
              CSSCharsetRule -> m (Maybe result)
getEncoding self
  = liftIO (fromMaybeJSString <$> (js_getEncoding (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
getEncodingUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    CSSCharsetRule -> m result
getEncodingUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getEncoding (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
getEncodingUnchecked ::
                     (MonadIO m, FromJSString result) => CSSCharsetRule -> m result
getEncodingUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getEncoding (self)))