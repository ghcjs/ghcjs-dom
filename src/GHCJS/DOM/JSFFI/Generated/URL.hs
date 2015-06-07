{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.URL
       (js_newURL, newURL, js_newURL', newURL', js_newURL'', newURL'',
        js_createObjectURL, createObjectURL, js_revokeObjectURL,
        revokeObjectURL, js_createObjectURLSource, createObjectURLSource,
        js_createObjectURLStream, createObjectURLStream, URL, castToURL,
        gTypeURL)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
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
 
foreign import javascript unsafe "new window[\"URL\"]($1)"
        js_newURL :: JSString -> IO (JSRef URL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL :: (MonadIO m, ToJSString url) => url -> m URL
newURL url
  = liftIO (js_newURL (toJSString url) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newURL' :: JSString -> JSString -> IO (JSRef URL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL' ::
        (MonadIO m, ToJSString url, ToJSString base) =>
          url -> base -> m URL
newURL' url base
  = liftIO
      (js_newURL' (toJSString url) (toJSString base) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newURL'' :: JSString -> JSRef URL -> IO (JSRef URL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newURL'' ::
         (MonadIO m, ToJSString url) => url -> Maybe URL -> m URL
newURL'' url base
  = liftIO
      (js_newURL'' (toJSString url) (maybe jsNull pToJSRef base) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURL :: JSRef URL -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadIO m, IsBlob blob, FromJSString result) =>
                  URL -> Maybe blob -> m result
createObjectURL self blob
  = liftIO
      (fromJSString <$>
         (js_createObjectURL (unURL self)
            (maybe jsNull (unBlob . toBlob) blob)))
 
foreign import javascript unsafe "$1[\"revokeObjectURL\"]($2)"
        js_revokeObjectURL :: JSRef URL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL ::
                (MonadIO m, ToJSString url) => URL -> url -> m ()
revokeObjectURL self url
  = liftIO (js_revokeObjectURL (unURL self) (toJSString url))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLSource ::
        JSRef URL -> JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadIO m, FromJSString result) =>
                        URL -> Maybe MediaSource -> m result
createObjectURLSource self source
  = liftIO
      (fromJSString <$>
         (js_createObjectURLSource (unURL self)
            (maybe jsNull pToJSRef source)))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLStream ::
        JSRef URL -> JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream ::
                      (MonadIO m, FromJSString result) =>
                        URL -> Maybe MediaStream -> m result
createObjectURLStream self stream
  = liftIO
      (fromJSString <$>
         (js_createObjectURLStream (unURL self)
            (maybe jsNull pToJSRef stream)))