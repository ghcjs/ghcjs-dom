{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CapabilityRange
       (js_getMax, getMax, js_getMin, getMin, js_getSupported,
        getSupported, CapabilityRange(..), gTypeCapabilityRange)
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
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        CapabilityRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.max Mozilla CapabilityRange.max documentation> 
getMax :: (MonadIO m) => CapabilityRange -> m JSVal
getMax self = liftIO (js_getMax (self))
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        CapabilityRange -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.min Mozilla CapabilityRange.min documentation> 
getMin :: (MonadIO m) => CapabilityRange -> m JSVal
getMin self = liftIO (js_getMin (self))
 
foreign import javascript unsafe "($1[\"supported\"] ? 1 : 0)"
        js_getSupported :: CapabilityRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.supported Mozilla CapabilityRange.supported documentation> 
getSupported :: (MonadIO m) => CapabilityRange -> m Bool
getSupported self = liftIO (js_getSupported (self))