{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStreamDefaultReader
       (js_newReadableStreamDefaultReader, newReadableStreamDefaultReader,
        js_read, read, read_, js_cancel, cancel, cancel_, js_releaseLock,
        releaseLock, js_getClosed, getClosed,
        ReadableStreamDefaultReader(..), gTypeReadableStreamDefaultReader)
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
 
foreign import javascript unsafe
        "new window[\"ReadableStreamDefaultReader\"]($1)"
        js_newReadableStreamDefaultReader ::
        ReadableStream -> IO ReadableStreamDefaultReader

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader Mozilla ReadableStreamDefaultReader documentation> 
newReadableStreamDefaultReader ::
                               (MonadIO m) => ReadableStream -> m ReadableStreamDefaultReader
newReadableStreamDefaultReader stream
  = liftIO (js_newReadableStreamDefaultReader stream)
 
foreign import javascript interruptible
        "$1[\"read\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_read :: ReadableStreamDefaultReader -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.read Mozilla ReadableStreamDefaultReader.read documentation> 
read :: (MonadIO m) => ReadableStreamDefaultReader -> m JSVal
read self = liftIO ((js_read self) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.read Mozilla ReadableStreamDefaultReader.read documentation> 
read_ :: (MonadIO m) => ReadableStreamDefaultReader -> m ()
read_ self = liftIO (void (js_read self))
 
foreign import javascript interruptible
        "$1[\"cancel\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_cancel ::
        ReadableStreamDefaultReader -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.cancel Mozilla ReadableStreamDefaultReader.cancel documentation> 
cancel ::
       (MonadIO m, ToJSVal reason) =>
         ReadableStreamDefaultReader -> Maybe reason -> m JSVal
cancel self reason
  = liftIO
      ((mapM toJSVal reason >>=
          \ reason' -> js_cancel self (maybeToOptional reason'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.cancel Mozilla ReadableStreamDefaultReader.cancel documentation> 
cancel_ ::
        (MonadIO m, ToJSVal reason) =>
          ReadableStreamDefaultReader -> Maybe reason -> m ()
cancel_ self reason
  = liftIO
      (void
         (mapM toJSVal reason >>=
            \ reason' -> js_cancel self (maybeToOptional reason')))
 
foreign import javascript unsafe "$1[\"releaseLock\"]()"
        js_releaseLock :: ReadableStreamDefaultReader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.releaseLock Mozilla ReadableStreamDefaultReader.releaseLock documentation> 
releaseLock :: (MonadIO m) => ReadableStreamDefaultReader -> m ()
releaseLock self = liftIO (js_releaseLock self)
 
foreign import javascript interruptible
        "$1[\"closed\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getClosed :: ReadableStreamDefaultReader -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamDefaultReader.closed Mozilla ReadableStreamDefaultReader.closed documentation> 
getClosed :: (MonadIO m) => ReadableStreamDefaultReader -> m Bool
getClosed self
  = liftIO ((js_getClosed self) >>= checkPromiseResult)