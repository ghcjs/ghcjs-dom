{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStreamBYOBReader
       (js_newReadableStreamBYOBReader, newReadableStreamBYOBReader,
        js_read, read, read_, js_cancel, cancel, cancel_, js_releaseLock,
        releaseLock, js_getClosed, getClosed, ReadableStreamBYOBReader(..),
        gTypeReadableStreamBYOBReader)
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
        "new window[\"ReadableStreamBYOBReader\"]($1)"
        js_newReadableStreamBYOBReader ::
        ReadableStream -> IO ReadableStreamBYOBReader

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader Mozilla ReadableStreamBYOBReader documentation> 
newReadableStreamBYOBReader ::
                            (MonadIO m) => ReadableStream -> m ReadableStreamBYOBReader
newReadableStreamBYOBReader stream
  = liftIO (js_newReadableStreamBYOBReader stream)
 
foreign import javascript interruptible
        "$1[\"read\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_read ::
        ReadableStreamBYOBReader -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.read Mozilla ReadableStreamBYOBReader.read documentation> 
read ::
     (MonadIO m, ToJSVal view) =>
       ReadableStreamBYOBReader -> Maybe view -> m JSVal
read self view
  = liftIO
      ((mapM toJSVal view >>=
          \ view' -> js_read self (maybeToOptional view'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.read Mozilla ReadableStreamBYOBReader.read documentation> 
read_ ::
      (MonadIO m, ToJSVal view) =>
        ReadableStreamBYOBReader -> Maybe view -> m ()
read_ self view
  = liftIO
      (void
         (mapM toJSVal view >>=
            \ view' -> js_read self (maybeToOptional view')))
 
foreign import javascript interruptible
        "$1[\"cancel\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_cancel ::
        ReadableStreamBYOBReader -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.cancel Mozilla ReadableStreamBYOBReader.cancel documentation> 
cancel ::
       (MonadIO m, ToJSVal reason) =>
         ReadableStreamBYOBReader -> Maybe reason -> m JSVal
cancel self reason
  = liftIO
      ((mapM toJSVal reason >>=
          \ reason' -> js_cancel self (maybeToOptional reason'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.cancel Mozilla ReadableStreamBYOBReader.cancel documentation> 
cancel_ ::
        (MonadIO m, ToJSVal reason) =>
          ReadableStreamBYOBReader -> Maybe reason -> m ()
cancel_ self reason
  = liftIO
      (void
         (mapM toJSVal reason >>=
            \ reason' -> js_cancel self (maybeToOptional reason')))
 
foreign import javascript unsafe "$1[\"releaseLock\"]()"
        js_releaseLock :: ReadableStreamBYOBReader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.releaseLock Mozilla ReadableStreamBYOBReader.releaseLock documentation> 
releaseLock :: (MonadIO m) => ReadableStreamBYOBReader -> m ()
releaseLock self = liftIO (js_releaseLock self)
 
foreign import javascript interruptible
        "$1[\"closed\"].then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_getClosed :: ReadableStreamBYOBReader -> IO (JSVal, Bool)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStreamBYOBReader.closed Mozilla ReadableStreamBYOBReader.closed documentation> 
getClosed :: (MonadIO m) => ReadableStreamBYOBReader -> m Bool
getClosed self
  = liftIO ((js_getClosed self) >>= checkPromiseResult)