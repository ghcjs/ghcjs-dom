{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SourceInfo
       (js_getSourceId, getSourceId, js_getKind, getKind, js_getLabel,
        getLabel, SourceInfo, castToSourceInfo, gTypeSourceInfo)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"sourceId\"]" js_getSourceId
        :: SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.sourceId Mozilla SourceInfo.sourceId documentation> 
getSourceId ::
            (MonadIO m, FromJSString result) => SourceInfo -> m result
getSourceId self
  = liftIO (fromJSString <$> (js_getSourceId (self)))
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.kind Mozilla SourceInfo.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => SourceInfo -> m result
getKind self = liftIO (fromJSString <$> (js_getKind (self)))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        SourceInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceInfo.label Mozilla SourceInfo.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => SourceInfo -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel (self)))