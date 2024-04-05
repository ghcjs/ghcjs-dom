{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.URLSearchParams
       (js_newURLSearchParams, newURLSearchParams, js_append, append,
        js_delete, delete, js_get, get, get_, getUnsafe, getUnchecked,
        js_getAll, getAll, getAll_, js_has, has, has_, js_set, set,
        js_sort, sort, js_toString, toString, toString_,
        URLSearchParams(..), gTypeURLSearchParams)
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
 
foreign import javascript safe
        "new window[\"URLSearchParams\"]($1)" js_newURLSearchParams ::
        URLSearchParamsInit -> IO URLSearchParams

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams Mozilla URLSearchParams documentation> 
newURLSearchParams ::
                   (MonadIO m, IsURLSearchParamsInit init) =>
                     init -> m URLSearchParams
newURLSearchParams init
  = liftIO
      (toJSVal init >>=
         \ init' -> js_newURLSearchParams (URLSearchParamsInit init'))
 
foreign import javascript unsafe "$1[\"append\"]($2, $3)" js_append
        :: URLSearchParams -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.append Mozilla URLSearchParams.append documentation> 
append ::
       (MonadIO m, ToJSString name, ToJSString value) =>
         URLSearchParams -> name -> value -> m ()
append self name value
  = liftIO (js_append self (toJSString name) (toJSString value))
 
foreign import javascript unsafe "$1[\"delete\"]($2)" js_delete ::
        URLSearchParams -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.delete Mozilla URLSearchParams.delete documentation> 
delete ::
       (MonadIO m, ToJSString name) => URLSearchParams -> name -> m ()
delete self name = liftIO (js_delete self (toJSString name))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        URLSearchParams -> JSString -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
get ::
    (MonadIO m, ToJSString name, FromJSString result) =>
      URLSearchParams -> name -> m (Maybe result)
get self name
  = liftIO (fromMaybeJSString <$> (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
get_ ::
     (MonadIO m, ToJSString name) => URLSearchParams -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
getUnsafe ::
          (MonadIO m, ToJSString name, HasCallStack, FromJSString result) =>
            URLSearchParams -> name -> m result
getUnsafe self name
  = liftIO
      ((fromMaybeJSString <$> (js_get self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.get Mozilla URLSearchParams.get documentation> 
getUnchecked ::
             (MonadIO m, ToJSString name, FromJSString result) =>
               URLSearchParams -> name -> m result
getUnchecked self name
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_get self (toJSString name)))
 
foreign import javascript unsafe "$1[\"getAll\"]($2)" js_getAll ::
        URLSearchParams -> JSString -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.getAll Mozilla URLSearchParams.getAll documentation> 
getAll ::
       (MonadIO m, ToJSString name, FromJSString result) =>
         URLSearchParams -> name -> m [result]
getAll self name
  = liftIO
      ((js_getAll self (toJSString name)) >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.getAll Mozilla URLSearchParams.getAll documentation> 
getAll_ ::
        (MonadIO m, ToJSString name) => URLSearchParams -> name -> m ()
getAll_ self name
  = liftIO (void (js_getAll self (toJSString name)))
 
foreign import javascript unsafe "($1[\"has\"]($2) ? 1 : 0)" js_has
        :: URLSearchParams -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.has Mozilla URLSearchParams.has documentation> 
has ::
    (MonadIO m, ToJSString name) => URLSearchParams -> name -> m Bool
has self name = liftIO (js_has self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.has Mozilla URLSearchParams.has documentation> 
has_ ::
     (MonadIO m, ToJSString name) => URLSearchParams -> name -> m ()
has_ self name = liftIO (void (js_has self (toJSString name)))
 
foreign import javascript unsafe "$1[\"set\"]($2, $3)" js_set ::
        URLSearchParams -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.set Mozilla URLSearchParams.set documentation> 
set ::
    (MonadIO m, ToJSString name, ToJSString value) =>
      URLSearchParams -> name -> value -> m ()
set self name value
  = liftIO (js_set self (toJSString name) (toJSString value))
 
foreign import javascript unsafe "$1[\"sort\"]()" js_sort ::
        URLSearchParams -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.sort Mozilla URLSearchParams.sort documentation> 
sort :: (MonadIO m) => URLSearchParams -> m ()
sort self = liftIO (js_sort self)
 
foreign import javascript unsafe "$1[\"toString\"]()" js_toString
        :: URLSearchParams -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.toString Mozilla URLSearchParams.toString documentation> 
toString ::
         (MonadIO m, FromJSString result) => URLSearchParams -> m result
toString self = liftIO (fromJSString <$> (js_toString self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams.toString Mozilla URLSearchParams.toString documentation> 
toString_ :: (MonadIO m) => URLSearchParams -> m ()
toString_ self = liftIO (void (js_toString self))