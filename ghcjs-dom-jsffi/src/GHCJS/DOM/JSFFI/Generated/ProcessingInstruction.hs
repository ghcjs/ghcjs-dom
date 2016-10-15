{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ProcessingInstruction
       (js_getTarget, getTarget, getTargetUnchecked, js_getSheet,
        getSheet, getSheetUnchecked, ProcessingInstruction(..),
        gTypeProcessingInstruction)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        ProcessingInstruction -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) =>
            ProcessingInstruction -> m (Maybe result)
getTarget self
  = liftIO (fromMaybeJSString <$> (js_getTarget (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTargetUnchecked ::
                   (MonadIO m, FromJSString result) =>
                     ProcessingInstruction -> m result
getTargetUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getTarget (self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        ProcessingInstruction -> IO (Nullable StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet ::
         (MonadIO m) => ProcessingInstruction -> m (Maybe StyleSheet)
getSheet self = liftIO (nullableToMaybe <$> (js_getSheet (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheetUnchecked ::
                  (MonadIO m) => ProcessingInstruction -> m StyleSheet
getSheetUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getSheet (self)))