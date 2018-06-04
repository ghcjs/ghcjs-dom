{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ReadableStream
       (js_newReadableStream, newReadableStream, js_cancel, cancel,
        cancel_, js_getReader, getReader, getReader_, js_pipeTo, pipeTo,
        pipeTo_, js_pipeThrough, pipeThrough, pipeThrough_, js_tee, tee,
        tee_, js_getLocked, getLocked, ReadableStream(..),
        gTypeReadableStream)
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
        "new window[\"ReadableStream\"]($1,\n$2)" js_newReadableStream ::
        Optional JSVal -> Optional JSVal -> IO ReadableStream

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream Mozilla ReadableStream documentation> 
newReadableStream ::
                  (MonadIO m, ToJSVal underlyingSource, ToJSVal options) =>
                    Maybe underlyingSource -> Maybe options -> m ReadableStream
newReadableStream underlyingSource options
  = liftIO
      (mapM toJSVal options >>=
         \ options' ->
           mapM toJSVal underlyingSource >>=
             \ underlyingSource' ->
               js_newReadableStream (maybeToOptional underlyingSource')
             (maybeToOptional options'))
 
foreign import javascript interruptible
        "$1[\"cancel\"]($2).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_cancel :: ReadableStream -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel ::
       (MonadIO m, ToJSVal reason) =>
         ReadableStream -> Maybe reason -> m JSVal
cancel self reason
  = liftIO
      ((mapM toJSVal reason >>=
          \ reason' -> js_cancel self (maybeToOptional reason'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.cancel Mozilla ReadableStream.cancel documentation> 
cancel_ ::
        (MonadIO m, ToJSVal reason) =>
          ReadableStream -> Maybe reason -> m ()
cancel_ self reason
  = liftIO
      (void
         (mapM toJSVal reason >>=
            \ reason' -> js_cancel self (maybeToOptional reason')))
 
foreign import javascript unsafe "$1[\"getReader\"]($2)"
        js_getReader :: ReadableStream -> Optional JSVal -> IO GObject

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.getReader Mozilla ReadableStream.getReader documentation> 
getReader ::
          (MonadIO m, ToJSVal options) =>
            ReadableStream -> Maybe options -> m GObject
getReader self options
  = liftIO
      (mapM toJSVal options >>=
         \ options' -> js_getReader self (maybeToOptional options'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.getReader Mozilla ReadableStream.getReader documentation> 
getReader_ ::
           (MonadIO m, ToJSVal options) =>
             ReadableStream -> Maybe options -> m ()
getReader_ self options
  = liftIO
      (void
         (mapM toJSVal options >>=
            \ options' -> js_getReader self (maybeToOptional options')))
 
foreign import javascript interruptible
        "$1[\"pipeTo\"]($2, $3).then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_pipeTo ::
        ReadableStream -> JSVal -> Optional JSVal -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo ::
       (MonadIO m, ToJSVal streams, ToJSVal options) =>
         ReadableStream -> streams -> Maybe options -> m JSVal
pipeTo self streams options
  = liftIO
      ((mapM toJSVal options >>=
          \ options' ->
            toJSVal streams >>= \ streams' -> js_pipeTo self streams'
              (maybeToOptional options'))
         >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeTo Mozilla ReadableStream.pipeTo documentation> 
pipeTo_ ::
        (MonadIO m, ToJSVal streams, ToJSVal options) =>
          ReadableStream -> streams -> Maybe options -> m ()
pipeTo_ self streams options
  = liftIO
      (void
         (mapM toJSVal options >>=
            \ options' ->
              toJSVal streams >>= \ streams' -> js_pipeTo self streams'
                (maybeToOptional options')))
 
foreign import javascript unsafe "$1[\"pipeThrough\"]($2, $3)"
        js_pipeThrough :: ReadableStream -> JSVal -> JSVal -> IO GObject

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough ::
            (MonadIO m, ToJSVal dest, ToJSVal options) =>
              ReadableStream -> dest -> options -> m GObject
pipeThrough self dest options
  = liftIO
      (toJSVal options >>=
         \ options' ->
           toJSVal dest >>= \ dest' -> js_pipeThrough self dest' options')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.pipeThrough Mozilla ReadableStream.pipeThrough documentation> 
pipeThrough_ ::
             (MonadIO m, ToJSVal dest, ToJSVal options) =>
               ReadableStream -> dest -> options -> m ()
pipeThrough_ self dest options
  = liftIO
      (void
         (toJSVal options >>=
            \ options' ->
              toJSVal dest >>= \ dest' -> js_pipeThrough self dest' options'))
 
foreign import javascript unsafe "$1[\"tee\"]()" js_tee ::
        ReadableStream -> IO GObject

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.tee Mozilla ReadableStream.tee documentation> 
tee :: (MonadIO m) => ReadableStream -> m GObject
tee self = liftIO (js_tee self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.tee Mozilla ReadableStream.tee documentation> 
tee_ :: (MonadIO m) => ReadableStream -> m ()
tee_ self = liftIO (void (js_tee self))
 
foreign import javascript unsafe "($1[\"locked\"] ? 1 : 0)"
        js_getLocked :: ReadableStream -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream.locked Mozilla ReadableStream.locked documentation> 
getLocked :: (MonadIO m) => ReadableStream -> m Bool
getLocked self = liftIO (js_getLocked self)