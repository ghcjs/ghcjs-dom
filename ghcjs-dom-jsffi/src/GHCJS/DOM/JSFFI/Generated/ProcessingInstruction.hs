{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ProcessingInstruction
       (js_getTarget, getTarget, getTargetUnsafe, getTargetUnchecked,
        js_getSheet, getSheet, ProcessingInstruction(..),
        gTypeProcessingInstruction)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        ProcessingInstruction -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) =>
            ProcessingInstruction -> m (Maybe result)
getTarget self = liftIO (fromMaybeJSString <$> (js_getTarget self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnsafe ::
                (MonadIO m, HasCallStack, FromJSString result) =>
                  ProcessingInstruction -> m result
getTargetUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getTarget self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnchecked ::
                   (MonadIO m, FromJSString result) =>
                     ProcessingInstruction -> m result
getTargetUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getTarget self))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        ProcessingInstruction -> IO StyleSheet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet :: (MonadIO m) => ProcessingInstruction -> m StyleSheet
getSheet self = liftIO (js_getSheet self)