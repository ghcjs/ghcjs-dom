{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DataTransferItem
       (js_getAsString, getAsString, js_getAsFile, getAsFile, js_getKind,
        getKind, js_getType, getType, DataTransferItem,
        castToDataTransferItem, gTypeDataTransferItem)
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
 
foreign import javascript unsafe "$1[\"getAsString\"]($2)"
        js_getAsString ::
        JSRef DataTransferItem -> JSRef (StringCallback callback) -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsString Mozilla DataTransferItem.getAsString documentation> 
getAsString ::
            (MonadIO m, ToJSString callback) =>
              DataTransferItem -> Maybe (StringCallback callback) -> m ()
getAsString self callback
  = liftIO
      (js_getAsString (unDataTransferItem self)
         (maybe jsNull pToJSRef callback))
 
foreign import javascript unsafe "$1[\"getAsFile\"]()" js_getAsFile
        :: JSRef DataTransferItem -> IO (JSRef Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsFile Mozilla DataTransferItem.getAsFile documentation> 
getAsFile :: (MonadIO m) => DataTransferItem -> m (Maybe Blob)
getAsFile self
  = liftIO ((js_getAsFile (unDataTransferItem self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"kind\"]" js_getKind ::
        JSRef DataTransferItem -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.kind Mozilla DataTransferItem.kind documentation> 
getKind ::
        (MonadIO m, FromJSString result) => DataTransferItem -> m result
getKind self
  = liftIO (fromJSString <$> (js_getKind (unDataTransferItem self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        JSRef DataTransferItem -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.type Mozilla DataTransferItem.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => DataTransferItem -> m result
getType self
  = liftIO (fromJSString <$> (js_getType (unDataTransferItem self)))