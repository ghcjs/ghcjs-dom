{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SourceInfo
       (js_getSourceId, getSourceId, js_getKind, getKind, js_getLabel,
        getLabel, SourceInfo, castToSourceInfo, gTypeSourceInfo)
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

 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.sourceId Mozilla SourceInfo.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) => SourceInfo -> m result
getSourceId self
  = liftIO (fromJSString <$> (js_getSourceId (unSourceInfo self)))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.kind Mozilla SourceInfo.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => SourceInfo -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (unSourceInfo self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        JSRef SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.label Mozilla SourceInfo.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => SourceInfo -> m result
getLabel self
  = liftIO (fromJSString <$> (js_getLabel (unSourceInfo self)))
#else
module GHCJS.DOM.SourceInfo (
  ) where
#endif
