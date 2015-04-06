{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMURL
       (js_newDOMURL, newDOMURL, js_newDOMURL', newDOMURL',
        js_newDOMURL'', newDOMURL'', js_createObjectURL, createObjectURL,
        js_revokeObjectURL, revokeObjectURL, js_createObjectURLSource,
        createObjectURLSource, js_createObjectURLStream,
        createObjectURLStream, DOMURL, castToDOMURL, gTypeDOMURL)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
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
        js_newDOMURL :: JSString -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newDOMURL :: (MonadIO m, ToJSString url) => url -> m DOMURL
newDOMURL url
  = liftIO (js_newDOMURL (toJSString url) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newDOMURL' :: JSString -> JSString -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newDOMURL' ::
           (MonadIO m, ToJSString url, ToJSString base) =>
             url -> base -> m DOMURL
newDOMURL' url base
  = liftIO
      (js_newDOMURL' (toJSString url) (toJSString base) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        js_newDOMURL'' :: JSString -> JSRef DOMURL -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
newDOMURL'' ::
            (MonadIO m, ToJSString url) => url -> Maybe DOMURL -> m DOMURL
newDOMURL'' url base
  = liftIO
      (js_newDOMURL'' (toJSString url) (maybe jsNull unDOMURL base) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURL :: JSRef DOMURL -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURL ::
                (MonadIO m, IsBlob blob, FromJSString result) =>
                  DOMURL -> Maybe blob -> m result
createObjectURL self blob
  = liftIO
      (fromJSString <$>
         (js_createObjectURL (unDOMURL self)
            (maybe jsNull (unBlob . toBlob) blob)))
 
foreign import javascript unsafe "$1[\"revokeObjectURL\"]($2)"
        js_revokeObjectURL :: JSRef DOMURL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
revokeObjectURL ::
                (MonadIO m, ToJSString url) => DOMURL -> url -> m ()
revokeObjectURL self url
  = liftIO (js_revokeObjectURL (unDOMURL self) (toJSString url))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLSource ::
        JSRef DOMURL -> JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLSource ::
                      (MonadIO m, FromJSString result) =>
                        DOMURL -> Maybe MediaSource -> m result
createObjectURLSource self source
  = liftIO
      (fromJSString <$>
         (js_createObjectURLSource (unDOMURL self)
            (maybe jsNull unMediaSource source)))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        js_createObjectURLStream ::
        JSRef DOMURL -> JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
createObjectURLStream ::
                      (MonadIO m, FromJSString result) =>
                        DOMURL -> Maybe MediaStream -> m result
createObjectURLStream self stream
  = liftIO
      (fromJSString <$>
         (js_createObjectURLStream (unDOMURL self)
            (maybe jsNull unMediaStream stream)))
#else
module GHCJS.DOM.DOMURL (
  ) where
#endif
