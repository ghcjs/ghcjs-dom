{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.Blob
       (js_newBlob, newBlob, js_newBlob', newBlob', js_slice, slice,
        js_getSize, getSize, js_getType, getType, Blob, castToBlob,
        gTypeBlob, IsBlob, toBlob)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "new window[\"Blob\"]()"
        js_newBlob :: IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob :: (MonadIO m) => m Blob
newBlob = liftIO (js_newBlob >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"Blob\"]($1, $2)"
        js_newBlob' ::
        JSRef [JSRef a] -> JSRef BlobPropertyBag -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob Mozilla Blob documentation> 
newBlob' ::
         (MonadIO m, IsBlobPropertyBag options) =>
           [JSRef a] -> Maybe options -> m Blob
newBlob' blobParts options
  = liftIO
      (toJSRef blobParts >>= \ blobParts' -> js_newBlob' blobParts'
         (maybe jsNull (unBlobPropertyBag . toBlobPropertyBag) options)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"slice\"]($2, $3, $4)"
        js_slice ::
        JSRef Blob ->
          Double -> Double -> JSRef (Maybe JSString) -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.slice Mozilla Blob.slice documentation> 
slice ::
      (MonadIO m, IsBlob self, ToJSString contentType) =>
        self -> Int64 -> Int64 -> Maybe contentType -> m (Maybe Blob)
slice self start end contentType
  = liftIO
      ((js_slice (unBlob (toBlob self)) (fromIntegral start)
          (fromIntegral end)
          (toMaybeJSString contentType))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef Blob -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.size Mozilla Blob.size documentation> 
getSize :: (MonadIO m, IsBlob self) => self -> m Word64
getSize self
  = liftIO (round <$> (js_getSize (unBlob (toBlob self))))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Blob.type Mozilla Blob.type documentation> 
getType ::
        (MonadIO m, IsBlob self, FromJSString result) => self -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unBlob (toBlob self))))