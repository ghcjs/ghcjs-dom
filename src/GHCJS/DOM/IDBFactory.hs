{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.IDBFactory
       (js_open, open, js_deleteDatabase, deleteDatabase, js_cmp, cmp,
        IDBFactory, castToIDBFactory, gTypeIDBFactory)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"open\"]($2, $3)" js_open ::
        JSRef IDBFactory ->
          JSString -> Double -> IO (JSRef IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.open Mozilla IDBFactory.open documentation> 
open ::
     (MonadIO m, ToJSString name) =>
       IDBFactory -> name -> Word64 -> m (Maybe IDBOpenDBRequest)
open self name version
  = liftIO
      ((js_open (unIDBFactory self) (toJSString name)
          (fromIntegral version))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteDatabase\"]($2)"
        js_deleteDatabase ::
        JSRef IDBFactory -> JSString -> IO (JSRef IDBOpenDBRequest)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.deleteDatabase Mozilla IDBFactory.deleteDatabase documentation> 
deleteDatabase ::
               (MonadIO m, ToJSString name) =>
                 IDBFactory -> name -> m (Maybe IDBOpenDBRequest)
deleteDatabase self name
  = liftIO
      ((js_deleteDatabase (unIDBFactory self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"cmp\"]($2, $3)" js_cmp ::
        JSRef IDBFactory -> JSRef a -> JSRef a -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/IDBFactory.cmp Mozilla IDBFactory.cmp documentation> 
cmp :: (MonadIO m) => IDBFactory -> JSRef a -> JSRef a -> m Int
cmp self first second
  = liftIO (js_cmp (unIDBFactory self) first second)
#else
module GHCJS.DOM.IDBFactory (
  ) where
#endif
