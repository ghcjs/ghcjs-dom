{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.RTCDTMFToneChangeEvent
       (js_getTone, getTone, RTCDTMFToneChangeEvent,
        castToRTCDTMFToneChangeEvent, gTypeRTCDTMFToneChangeEvent)
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
 
foreign import javascript unsafe "$1[\"tone\"]" js_getTone ::
        RTCDTMFToneChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent.tone Mozilla RTCDTMFToneChangeEvent.tone documentation> 
getTone ::
        (MonadIO m, FromJSString result) =>
          RTCDTMFToneChangeEvent -> m result
getTone self = liftIO (fromJSString <$> (js_getTone (self)))