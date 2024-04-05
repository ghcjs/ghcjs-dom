{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Headers
       (js_append, append, js_delete, delete, js_get, get, get_,
        getUnsafe, getUnchecked, js_has, has, has_, js_set, set,
        Headers(..), gTypeHeaders)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript safe "$1[\"append\"]($2, $3)" js_append
        :: Headers -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.append Mozilla Headers.append documentation> 
append ::
       (MonadIO m, ToJSString name, ToJSString value) =>
         Headers -> name -> value -> m ()
append self name value
  = liftIO (js_append self (toJSString name) (toJSString value))
 
foreign import javascript safe "$1[\"delete\"]($2)" js_delete ::
        Headers -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.delete Mozilla Headers.delete documentation> 
delete :: (MonadIO m, ToJSString name) => Headers -> name -> m ()
delete self name = liftIO (js_delete self (toJSString name))
 
foreign import javascript safe "$1[\"get\"]($2)" js_get ::
        Headers -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
get ::
    (MonadIO m, ToJSString name, FromJSString result) =>
      Headers -> name -> m (Maybe result)
get self name
  = liftIO (fromMaybeJSString <$> (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
get_ :: (MonadIO m, ToJSString name) => Headers -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
getUnsafe ::
          (MonadIO m, ToJSString name, HasCallStack, FromJSString result) =>
            Headers -> name -> m result
getUnsafe self name
  = liftIO
      ((fromMaybeJSString <$> (js_get self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.get Mozilla Headers.get documentation> 
getUnchecked ::
             (MonadIO m, ToJSString name, FromJSString result) =>
               Headers -> name -> m result
getUnchecked self name
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_get self (toJSString name)))
 
foreign import javascript safe "($1[\"has\"]($2) ? 1 : 0)" js_has
        :: Headers -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.has Mozilla Headers.has documentation> 
has :: (MonadIO m, ToJSString name) => Headers -> name -> m Bool
has self name = liftIO (js_has self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.has Mozilla Headers.has documentation> 
has_ :: (MonadIO m, ToJSString name) => Headers -> name -> m ()
has_ self name = liftIO (void (js_has self (toJSString name)))
 
foreign import javascript safe "$1[\"set\"]($2, $3)" js_set ::
        Headers -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Headers.set Mozilla Headers.set documentation> 
set ::
    (MonadIO m, ToJSString name, ToJSString value) =>
      Headers -> name -> value -> m ()
set self name value
  = liftIO (js_set self (toJSString name) (toJSString value))