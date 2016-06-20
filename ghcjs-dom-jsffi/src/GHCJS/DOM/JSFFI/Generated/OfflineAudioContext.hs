{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.OfflineAudioContext
       (js_newOfflineAudioContext, newOfflineAudioContext,
        OfflineAudioContext, castToOfflineAudioContext,
        gTypeOfflineAudioContext)
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
 
foreign import javascript unsafe
        "new window[\"OfflineAudioContext\"]($1,\n$2, $3)"
        js_newOfflineAudioContext ::
        Word -> Word -> Float -> IO OfflineAudioContext

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OfflineAudioContext Mozilla OfflineAudioContext documentation> 
newOfflineAudioContext ::
                       (MonadIO m) => Word -> Word -> Float -> m OfflineAudioContext
newOfflineAudioContext numberOfChannels numberOfFrames sampleRate
  = liftIO
      (js_newOfflineAudioContext numberOfChannels numberOfFrames
         sampleRate)