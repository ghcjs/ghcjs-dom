{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMURL
       (ghcjs_dom_domurl_new, domurlNew,
        ghcjs_dom_domurl_create_object_url, domurlCreateObjectURL,
        ghcjs_dom_domurl_revoke_object_url, domurlRevokeObjectURL,
        ghcjs_dom_domurl_create_object_urlSource,
        domurlCreateObjectURLSource,
        ghcjs_dom_domurl_create_object_urlStream,
        domurlCreateObjectURLStream, DOMURL, IsDOMURL, castToDOMURL,
        gTypeDOMURL, toDOMURL)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "new window[\"URL\"]($1)"
        ghcjs_dom_domurl_new :: JSString -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
domurlNew :: (ToJSString url) => url -> IO DOMURL
domurlNew url
  = ghcjs_dom_domurl_new (toJSString url) >>= fromJSRefUnchecked
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        ghcjs_dom_domurl_new' :: JSString -> JSString -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
domurlNew' ::
           (ToJSString url, ToJSString base) => url -> base -> IO DOMURL
domurlNew' url base
  = ghcjs_dom_domurl_new' (toJSString url) (toJSString base) >>=
      fromJSRefUnchecked
 
foreign import javascript unsafe "new window[\"URL\"]($1, $2)"
        ghcjs_dom_domurl_new'' ::
        JSString -> JSRef DOMURL -> IO (JSRef DOMURL)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL Mozilla URL documentation> 
domurlNew'' ::
            (ToJSString url, IsDOMURL base) => url -> Maybe base -> IO DOMURL
domurlNew'' url base
  = ghcjs_dom_domurl_new'' (toJSString url)
      (maybe jsNull (unDOMURL . toDOMURL) base)
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        ghcjs_dom_domurl_create_object_url ::
        JSRef DOMURL -> JSRef Blob -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURL Mozilla URL.createObjectURL documentation> 
domurlCreateObjectURL ::
                      (IsDOMURL self, IsBlob blob, FromJSString result) =>
                        self -> Maybe blob -> IO result
domurlCreateObjectURL self blob
  = fromJSString <$>
      (ghcjs_dom_domurl_create_object_url (unDOMURL (toDOMURL self))
         (maybe jsNull (unBlob . toBlob) blob))
 
foreign import javascript unsafe "$1[\"revokeObjectURL\"]($2)"
        ghcjs_dom_domurl_revoke_object_url ::
        JSRef DOMURL -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.revokeObjectURL Mozilla URL.revokeObjectURL documentation> 
domurlRevokeObjectURL ::
                      (IsDOMURL self, ToJSString url) => self -> url -> IO ()
domurlRevokeObjectURL self url
  = ghcjs_dom_domurl_revoke_object_url (unDOMURL (toDOMURL self))
      (toJSString url)
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        ghcjs_dom_domurl_create_object_urlSource ::
        JSRef DOMURL -> JSRef MediaSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURLSource Mozilla URL.createObjectURLSource documentation> 
domurlCreateObjectURLSource ::
                            (IsDOMURL self, IsMediaSource source, FromJSString result) =>
                              self -> Maybe source -> IO result
domurlCreateObjectURLSource self source
  = fromJSString <$>
      (ghcjs_dom_domurl_create_object_urlSource
         (unDOMURL (toDOMURL self))
         (maybe jsNull (unMediaSource . toMediaSource) source))
 
foreign import javascript unsafe "$1[\"createObjectURL\"]($2)"
        ghcjs_dom_domurl_create_object_urlStream ::
        JSRef DOMURL -> JSRef MediaStream -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URL.createObjectURLStream Mozilla URL.createObjectURLStream documentation> 
domurlCreateObjectURLStream ::
                            (IsDOMURL self, IsMediaStream stream, FromJSString result) =>
                              self -> Maybe stream -> IO result
domurlCreateObjectURLStream self stream
  = fromJSString <$>
      (ghcjs_dom_domurl_create_object_urlStream
         (unDOMURL (toDOMURL self))
         (maybe jsNull (unMediaStream . toMediaStream) stream))
#else
module GHCJS.DOM.DOMURL (
  ) where
#endif
