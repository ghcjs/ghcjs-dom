{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBVersionChangeEvent
       (js_getOldVersion, getOldVersion, js_getNewVersion, getNewVersion,
        IDBVersionChangeEvent, castToIDBVersionChangeEvent,
        gTypeIDBVersionChangeEvent)
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

 
foreign import javascript unsafe "$1[\"oldVersion\"]"
        js_getOldVersion :: JSRef IDBVersionChangeEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.oldVersion Mozilla IDBVersionChangeEvent.oldVersion documentation> 
getOldVersion :: (MonadIO m) => IDBVersionChangeEvent -> m Word64
getOldVersion self
  = liftIO
      (round <$> (js_getOldVersion (unIDBVersionChangeEvent self)))
 
foreign import javascript unsafe "$1[\"newVersion\"]"
        js_getNewVersion ::
        JSRef IDBVersionChangeEvent -> IO (JSRef (Maybe Double))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBVersionChangeEvent.newVersion Mozilla IDBVersionChangeEvent.newVersion documentation> 
getNewVersion ::
              (MonadIO m) => IDBVersionChangeEvent -> m (Maybe Word64)
getNewVersion self
  = liftIO
      (fmap round . pfromJSRef <$>
         (js_getNewVersion (unIDBVersionChangeEvent self)))
#else
module GHCJS.DOM.IDBVersionChangeEvent (
  ) where
#endif
