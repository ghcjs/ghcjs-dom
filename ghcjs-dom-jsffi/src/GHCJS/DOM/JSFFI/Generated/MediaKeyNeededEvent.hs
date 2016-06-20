{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyNeededEvent
       (js_getInitData, getInitData, MediaKeyNeededEvent,
        castToMediaKeyNeededEvent, gTypeMediaKeyNeededEvent)
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
 
foreign import javascript unsafe "$1[\"initData\"]" js_getInitData
        :: MediaKeyNeededEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyNeededEvent.initData Mozilla MediaKeyNeededEvent.initData documentation> 
getInitData ::
            (MonadIO m) => MediaKeyNeededEvent -> m (Maybe Uint8Array)
getInitData self
  = liftIO (nullableToMaybe <$> (js_getInitData (self)))