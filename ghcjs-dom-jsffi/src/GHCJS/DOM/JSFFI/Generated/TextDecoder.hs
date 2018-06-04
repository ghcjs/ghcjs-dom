{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TextDecoder
       (js_newTextDecoder, newTextDecoder, js_decode, decode, decode_,
        js_getEncoding, getEncoding, js_getFatal, getFatal,
        js_getIgnoreBOM, getIgnoreBOM, TextDecoder(..), gTypeTextDecoder)
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
 
foreign import javascript safe
        "new window[\"TextDecoder\"]($1,\n$2)" js_newTextDecoder ::
        Optional JSString -> Optional TextDecoderOptions -> IO TextDecoder

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder Mozilla TextDecoder documentation> 
newTextDecoder ::
               (MonadIO m, ToJSString label) =>
                 Maybe label -> Maybe TextDecoderOptions -> m TextDecoder
newTextDecoder label options
  = liftIO
      (js_newTextDecoder (toOptionalJSString label)
         (maybeToOptional options))
 
foreign import javascript safe "$1[\"decode\"]($2, $3)" js_decode
        ::
        TextDecoder ->
          Optional BufferSource -> Optional TextDecodeOptions -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.decode Mozilla TextDecoder.decode documentation> 
decode ::
       (MonadIO m, IsBufferSource input, FromJSString result) =>
         TextDecoder -> Maybe input -> Maybe TextDecodeOptions -> m result
decode self input options
  = liftIO
      (fromJSString <$>
         (js_decode self (maybeToOptional (fmap toBufferSource input))
            (maybeToOptional options)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.decode Mozilla TextDecoder.decode documentation> 
decode_ ::
        (MonadIO m, IsBufferSource input) =>
          TextDecoder -> Maybe input -> Maybe TextDecodeOptions -> m ()
decode_ self input options
  = liftIO
      (void
         (js_decode self (maybeToOptional (fmap toBufferSource input))
            (maybeToOptional options)))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: TextDecoder -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.encoding Mozilla TextDecoder.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) => TextDecoder -> m result
getEncoding self = liftIO (fromJSString <$> (js_getEncoding self))
 
foreign import javascript unsafe "($1[\"fatal\"] ? 1 : 0)"
        js_getFatal :: TextDecoder -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.fatal Mozilla TextDecoder.fatal documentation> 
getFatal :: (MonadIO m) => TextDecoder -> m Bool
getFatal self = liftIO (js_getFatal self)
 
foreign import javascript unsafe "($1[\"ignoreBOM\"] ? 1 : 0)"
        js_getIgnoreBOM :: TextDecoder -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder.ignoreBOM Mozilla TextDecoder.ignoreBOM documentation> 
getIgnoreBOM :: (MonadIO m) => TextDecoder -> m Bool
getIgnoreBOM self = liftIO (js_getIgnoreBOM self)