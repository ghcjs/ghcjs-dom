{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RTCDTMFToneChangeEvent
       (js_newRTCDTMFToneChangeEvent, newRTCDTMFToneChangeEvent,
        js_getTone, getTone, RTCDTMFToneChangeEvent(..),
        gTypeRTCDTMFToneChangeEvent)
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
 
foreign import javascript unsafe
        "new window[\"RTCDTMFToneChangeEvent\"]($1,\n$2)"
        js_newRTCDTMFToneChangeEvent ::
        JSString ->
          Optional RTCDTMFToneChangeEventInit -> IO RTCDTMFToneChangeEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent Mozilla RTCDTMFToneChangeEvent documentation> 
newRTCDTMFToneChangeEvent ::
                          (MonadIO m, ToJSString type') =>
                            type' ->
                              Maybe RTCDTMFToneChangeEventInit -> m RTCDTMFToneChangeEvent
newRTCDTMFToneChangeEvent type' eventInitDict
  = liftIO
      (js_newRTCDTMFToneChangeEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"tone\"]" js_getTone ::
        RTCDTMFToneChangeEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RTCDTMFToneChangeEvent.tone Mozilla RTCDTMFToneChangeEvent.tone documentation> 
getTone ::
        (MonadIO m, FromJSString result) =>
          RTCDTMFToneChangeEvent -> m result
getTone self = liftIO (fromJSString <$> (js_getTone self))