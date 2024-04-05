{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TextEncoder
       (js_newTextEncoder, newTextEncoder, js_encode, encode, encode_,
        js_getEncoding, getEncoding, TextEncoder(..), gTypeTextEncoder)
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
 
foreign import javascript unsafe "new window[\"TextEncoder\"]()"
        js_newTextEncoder :: IO TextEncoder

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder Mozilla TextEncoder documentation> 
newTextEncoder :: (MonadIO m) => m TextEncoder
newTextEncoder = liftIO (js_newTextEncoder)
 
foreign import javascript unsafe "$1[\"encode\"]($2)" js_encode ::
        TextEncoder -> Optional JSString -> IO Uint8Array

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encode Mozilla TextEncoder.encode documentation> 
encode ::
       (MonadIO m, ToJSString input) =>
         TextEncoder -> Maybe input -> m Uint8Array
encode self input
  = liftIO (js_encode self (toOptionalJSString input))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encode Mozilla TextEncoder.encode documentation> 
encode_ ::
        (MonadIO m, ToJSString input) => TextEncoder -> Maybe input -> m ()
encode_ self input
  = liftIO (void (js_encode self (toOptionalJSString input)))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: TextEncoder -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder.encoding Mozilla TextEncoder.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) => TextEncoder -> m result
getEncoding self = liftIO (fromJSString <$> (js_getEncoding self))