{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DataTransferItem
       (js_getAsString, getAsString, js_getAsFile, getAsFile, js_getKind,
        getKind, DataTransferItem, castToDataTransferItem,
        gTypeDataTransferItem)
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

 
foreign import javascript unsafe "$1[\"getAsString\"]($2)"
        js_getAsString ::
        JSRef DataTransferItem -> JSRef StringCallback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DataTransferItem.getAsString Mozilla DataTransferItem.getAsString documentation> 
getAsString ::
            (MonadIO m) => DataTransferItem -> Maybe StringCallback -> m ()
getAsString self callback
  = liftIO
      (js_getAsString (unDataTransferItem self)
         (maybe jsNull unStringCallback callback))
 
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
#else
module GHCJS.DOM.DataTransferItem (
  ) where
#endif
