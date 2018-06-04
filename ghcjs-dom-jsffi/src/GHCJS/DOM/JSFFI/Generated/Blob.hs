{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Blob
       (js_newBlob, newBlob, js_slice, slice, slice_, js_getSize, getSize,
        js_getType, getType, Blob(..), gTypeBlob, IsBlob, toBlob)
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
 
foreign import javascript unsafe "new window[\"Blob\"]($1, $2)"
        js_newBlob :: JSVal -> Optional BlobPropertyBag -> IO Blob

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob ::
        (MonadIO m, IsBlobPart blobParts, IsBlobPropertyBag options) =>
          [blobParts] -> Maybe options -> m Blob
newBlob blobParts options
  = liftIO
      (toJSVal blobParts >>= \ blobParts' -> js_newBlob blobParts'
         (maybeToOptional (fmap toBlobPropertyBag options)))
 
foreign import javascript unsafe "$1[\"slice\"]($2, $3, $4)"
        js_slice ::
        Blob ->
          Optional Double -> Optional Double -> Optional JSString -> IO Blob

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice ::
      (MonadIO m, IsBlob self, ToJSString contentType) =>
        self -> Maybe Int64 -> Maybe Int64 -> Maybe contentType -> m Blob
slice self start end contentType
  = liftIO
      (js_slice (toBlob self) (maybeToOptional (fmap fromIntegral start))
         (maybeToOptional (fmap fromIntegral end))
         (toOptionalJSString contentType))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice_ ::
       (MonadIO m, IsBlob self, ToJSString contentType) =>
         self -> Maybe Int64 -> Maybe Int64 -> Maybe contentType -> m ()
slice_ self start end contentType
  = liftIO
      (void
         (js_slice (toBlob self) (maybeToOptional (fmap fromIntegral start))
            (maybeToOptional (fmap fromIntegral end))
            (toOptionalJSString contentType)))
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        Blob -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.size Mozilla Blob.size documentation> 
getSize :: (MonadIO m, IsBlob self) => self -> m Word64
getSize self = liftIO (round <$> (js_getSize (toBlob self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.type Mozilla Blob.type documentation> 
getType ::
        (MonadIO m, IsBlob self, FromJSString result) => self -> m result
getType self = liftIO (fromJSString <$> (js_getType (toBlob self)))