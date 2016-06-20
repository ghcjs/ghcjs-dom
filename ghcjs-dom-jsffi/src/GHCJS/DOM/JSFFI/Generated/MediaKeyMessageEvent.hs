{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyMessageEvent
       (js_getMessage, getMessage, js_getDestinationURL,
        getDestinationURL, MediaKeyMessageEvent,
        castToMediaKeyMessageEvent, gTypeMediaKeyMessageEvent)
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
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        MediaKeyMessageEvent -> IO (Nullable Uint8Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadIO m) => MediaKeyMessageEvent -> m (Maybe Uint8Array)
getMessage self
  = liftIO (nullableToMaybe <$> (js_getMessage (self)))
 
foreign import javascript unsafe "$1[\"destinationURL\"]"
        js_getDestinationURL :: MediaKeyMessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadIO m, FromJSString result) =>
                    MediaKeyMessageEvent -> m result
getDestinationURL self
  = liftIO (fromJSString <$> (js_getDestinationURL (self)))