{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WindowOrWorkerGlobalScope
       (js_setTimeout, setTimeout, setTimeout_, js_clearTimeout,
        clearTimeout, js_setInterval, setInterval, setInterval_,
        js_clearInterval, clearInterval, js_atob, atob, atob_, js_btoa,
        btoa, btoa_, js_getOrigin, getOrigin,
        WindowOrWorkerGlobalScope(..), gTypeWindowOrWorkerGlobalScope,
        IsWindowOrWorkerGlobalScope, toWindowOrWorkerGlobalScope)
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
 
foreign import javascript unsafe "$1[\"setTimeout\"]($2, $3)"
        js_setTimeout ::
        WindowOrWorkerGlobalScope -> JSVal -> Optional Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setTimeout Mozilla WindowOrWorkerGlobalScope.setTimeout documentation> 
setTimeout ::
           (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
             self -> handler -> Maybe Int -> m Int
setTimeout self handler timeout
  = liftIO
      (toJSVal handler >>=
         \ handler' ->
           js_setTimeout (toWindowOrWorkerGlobalScope self) handler'
         (maybeToOptional timeout))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setTimeout Mozilla WindowOrWorkerGlobalScope.setTimeout documentation> 
setTimeout_ ::
            (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
              self -> handler -> Maybe Int -> m ()
setTimeout_ self handler timeout
  = liftIO
      (void
         (toJSVal handler >>=
            \ handler' ->
              js_setTimeout (toWindowOrWorkerGlobalScope self) handler'
            (maybeToOptional timeout)))
 
foreign import javascript unsafe "$1[\"clearTimeout\"]($2)"
        js_clearTimeout ::
        WindowOrWorkerGlobalScope -> Optional Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.clearTimeout Mozilla WindowOrWorkerGlobalScope.clearTimeout documentation> 
clearTimeout ::
             (MonadIO m, IsWindowOrWorkerGlobalScope self) =>
               self -> Maybe Int -> m ()
clearTimeout self handle
  = liftIO
      (js_clearTimeout (toWindowOrWorkerGlobalScope self)
         (maybeToOptional handle))
 
foreign import javascript unsafe "$1[\"setInterval\"]($2, $3)"
        js_setInterval ::
        WindowOrWorkerGlobalScope -> JSVal -> Optional Int -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setInterval Mozilla WindowOrWorkerGlobalScope.setInterval documentation> 
setInterval ::
            (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
              self -> handler -> Maybe Int -> m Int
setInterval self handler timeout
  = liftIO
      (toJSVal handler >>=
         \ handler' ->
           js_setInterval (toWindowOrWorkerGlobalScope self) handler'
         (maybeToOptional timeout))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.setInterval Mozilla WindowOrWorkerGlobalScope.setInterval documentation> 
setInterval_ ::
             (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSVal handler) =>
               self -> handler -> Maybe Int -> m ()
setInterval_ self handler timeout
  = liftIO
      (void
         (toJSVal handler >>=
            \ handler' ->
              js_setInterval (toWindowOrWorkerGlobalScope self) handler'
            (maybeToOptional timeout)))
 
foreign import javascript unsafe "$1[\"clearInterval\"]($2)"
        js_clearInterval ::
        WindowOrWorkerGlobalScope -> Optional Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.clearInterval Mozilla WindowOrWorkerGlobalScope.clearInterval documentation> 
clearInterval ::
              (MonadIO m, IsWindowOrWorkerGlobalScope self) =>
                self -> Maybe Int -> m ()
clearInterval self handle
  = liftIO
      (js_clearInterval (toWindowOrWorkerGlobalScope self)
         (maybeToOptional handle))
 
foreign import javascript safe "$1[\"atob\"]($2)" js_atob ::
        WindowOrWorkerGlobalScope -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.atob Mozilla WindowOrWorkerGlobalScope.atob documentation> 
atob ::
     (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSString string,
      FromJSString result) =>
       self -> string -> m result
atob self string
  = liftIO
      (fromJSString <$>
         (js_atob (toWindowOrWorkerGlobalScope self) (toJSString string)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.atob Mozilla WindowOrWorkerGlobalScope.atob documentation> 
atob_ ::
      (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSString string) =>
        self -> string -> m ()
atob_ self string
  = liftIO
      (void
         (js_atob (toWindowOrWorkerGlobalScope self) (toJSString string)))
 
foreign import javascript safe "$1[\"btoa\"]($2)" js_btoa ::
        WindowOrWorkerGlobalScope -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.btoa Mozilla WindowOrWorkerGlobalScope.btoa documentation> 
btoa ::
     (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSString string,
      FromJSString result) =>
       self -> string -> m result
btoa self string
  = liftIO
      (fromJSString <$>
         (js_btoa (toWindowOrWorkerGlobalScope self) (toJSString string)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.btoa Mozilla WindowOrWorkerGlobalScope.btoa documentation> 
btoa_ ::
      (MonadIO m, IsWindowOrWorkerGlobalScope self, ToJSString string) =>
        self -> string -> m ()
btoa_ self string
  = liftIO
      (void
         (js_btoa (toWindowOrWorkerGlobalScope self) (toJSString string)))
 
foreign import javascript unsafe "$1[\"origin\"]" js_getOrigin ::
        WindowOrWorkerGlobalScope -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowOrWorkerGlobalScope.origin Mozilla WindowOrWorkerGlobalScope.origin documentation> 
getOrigin ::
          (MonadIO m, IsWindowOrWorkerGlobalScope self,
           FromJSString result) =>
            self -> m result
getOrigin self
  = liftIO
      (fromJSString <$>
         (js_getOrigin (toWindowOrWorkerGlobalScope self)))