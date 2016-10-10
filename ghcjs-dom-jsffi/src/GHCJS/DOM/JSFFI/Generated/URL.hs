{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.URL
       (js_newURL, newURL, js_newURL', newURL', js_newURL'', newURL'',
        js_createObjectURL, createObjectURL, createObjectURL_,
        createObjectURLUnchecked, js_revokeObjectURL, revokeObjectURL,
        js_createObjectURLSource, createObjectURLSource,
        createObjectURLSource_, createObjectURLSourceUnchecked,
        js_createObjectURLStream, createObjectURLStream,
        createObjectURLStream_, createObjectURLStreamUnchecked, URL,
        castToURL, gTypeURL)
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
 
foreign import javascript unsafe "new window[\"URL\"]($1)"
        js_newURL :: JSString -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL :: (MonadIO m, ToJSString url) => url -> m URL
newURL url = liftIO (js_newURL (toJSString url))
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newURL' :: JSString -> JSString -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL' ::
        (MonadIO m, ToJSString url, ToJSString base) =>
          url -> base -> m URL
newURL' url base
  = liftIO (js_newURL' (toJSString url) (toJSString base))
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newURL'' :: JSString -> Nullable URL -> IO URL

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL'' ::
         (MonadIO m, ToJSString url) => url -> Maybe URL -> m URL
newURL'' url base
  = liftIO (js_newURL'' (toJSString url) (maybeToNullable base))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURL ::
        URL -> Nullable Blob -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadIO m, IsBlob blob, FromJSString result) =>
                  URL -> Maybe blob -> m (Maybe result)
createObjectURL self blob
  = liftIO
      (fromMaybeJSString <$>
         (js_createObjectURL (self) (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL_ ::
                 (MonadIO m, IsBlob blob) => URL -> Maybe blob -> m ()
createObjectURL_ self blob
  = liftIO
      (void
         (js_createObjectURL (self) (maybeToNullable (fmap toBlob blob))))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLUnchecked ::
                         (MonadIO m, IsBlob blob, FromJSString result) =>
                           URL -> Maybe blob -> m result
createObjectURLUnchecked self blob
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_createObjectURL (self) (maybeToNullable (fmap toBlob blob))))
 
foreign import javascript unsafe "$1[\"revokeObjectURL\"]($2)"
        js_revokeObjectURL :: URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL ::
                (MonadIO m, ToJSString url) => URL -> url -> m ()
revokeObjectURL self url
  = liftIO (js_revokeObjectURL (self) (toJSString url))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLSource ::
        URL -> Nullable MediaSource -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadIO m, FromJSString result) =>
                        URL -> Maybe MediaSource -> m (Maybe result)
createObjectURLSource self source
  = liftIO
      (fromMaybeJSString <$>
         (js_createObjectURLSource (self) (maybeToNullable source)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource_ ::
                       (MonadIO m) => URL -> Maybe MediaSource -> m ()
createObjectURLSource_ self source
  = liftIO
      (void (js_createObjectURLSource (self) (maybeToNullable source)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSourceUnchecked ::
                               (MonadIO m, FromJSString result) =>
                                 URL -> Maybe MediaSource -> m result
createObjectURLSourceUnchecked self source
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_createObjectURLSource (self) (maybeToNullable source)))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLStream ::
        URL -> Nullable MediaStream -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream ::
                      (MonadIO m, FromJSString result) =>
                        URL -> Maybe MediaStream -> m (Maybe result)
createObjectURLStream self stream
  = liftIO
      (fromMaybeJSString <$>
         (js_createObjectURLStream (self) (maybeToNullable stream)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream_ ::
                       (MonadIO m) => URL -> Maybe MediaStream -> m ()
createObjectURLStream_ self stream
  = liftIO
      (void (js_createObjectURLStream (self) (maybeToNullable stream)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStreamUnchecked ::
                               (MonadIO m, FromJSString result) =>
                                 URL -> Maybe MediaStream -> m result
createObjectURLStreamUnchecked self stream
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_createObjectURLStream (self) (maybeToNullable stream)))