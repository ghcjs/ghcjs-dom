{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SourceInfo
       (ghcjs_dom_source_info_get_source_id, sourceInfoGetSourceId,
        ghcjs_dom_source_info_get_kind, sourceInfoGetKind,
        ghcjs_dom_source_info_get_label, sourceInfoGetLabel, SourceInfo,
        IsSourceInfo, castToSourceInfo, gTypeSourceInfo, toSourceInfo)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"sourceId\"]"
        ghcjs_dom_source_info_get_source_id ::
        JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.sourceId Mozilla SourceInfo.sourceId documentation> 
sourceInfoGetSourceId ::
                      (MonadIO m, IsSourceInfo self, FromJSString result) =>
                        self -> m result
sourceInfoGetSourceId self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_source_info_get_source_id
            (unSourceInfo (toSourceInfo self))))
 
foreign import javascript unsafe "$1[\"kind\"]"
        ghcjs_dom_source_info_get_kind :: JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.kind Mozilla SourceInfo.kind documentation> 
sourceInfoGetKind ::
                  (MonadIO m, IsSourceInfo self, FromJSString result) =>
                    self -> m result
sourceInfoGetKind self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_source_info_get_kind
            (unSourceInfo (toSourceInfo self))))
 
foreign import javascript unsafe "$1[\"label\"]"
        ghcjs_dom_source_info_get_label :: JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.label Mozilla SourceInfo.label documentation> 
sourceInfoGetLabel ::
                   (MonadIO m, IsSourceInfo self, FromJSString result) =>
                     self -> m result
sourceInfoGetLabel self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_source_info_get_label
            (unSourceInfo (toSourceInfo self))))
#else
module GHCJS.DOM.SourceInfo (
  ) where
#endif
