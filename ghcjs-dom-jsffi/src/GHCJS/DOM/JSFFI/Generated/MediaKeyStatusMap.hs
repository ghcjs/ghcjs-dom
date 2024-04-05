{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MediaKeyStatusMap
       (js_has, has, has_, js_get, get, get_, js_getSize, getSize,
        MediaKeyStatusMap(..), gTypeMediaKeyStatusMap)
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
 
foreign import javascript unsafe "($1[\"has\"]($2) ? 1 : 0)" js_has
        :: MediaKeyStatusMap -> BufferSource -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.has Mozilla MediaKeyStatusMap.has documentation> 
has ::
    (MonadIO m, IsBufferSource keyId) =>
      MediaKeyStatusMap -> keyId -> m Bool
has self keyId = liftIO (js_has self (toBufferSource keyId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.has Mozilla MediaKeyStatusMap.has documentation> 
has_ ::
     (MonadIO m, IsBufferSource keyId) =>
       MediaKeyStatusMap -> keyId -> m ()
has_ self keyId
  = liftIO (void (js_has self (toBufferSource keyId)))
 
foreign import javascript unsafe "$1[\"get\"]($2)" js_get ::
        MediaKeyStatusMap -> BufferSource -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.get Mozilla MediaKeyStatusMap.get documentation> 
get ::
    (MonadIO m, IsBufferSource keyId) =>
      MediaKeyStatusMap -> keyId -> m JSVal
get self keyId = liftIO (js_get self (toBufferSource keyId))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.get Mozilla MediaKeyStatusMap.get documentation> 
get_ ::
     (MonadIO m, IsBufferSource keyId) =>
       MediaKeyStatusMap -> keyId -> m ()
get_ self keyId
  = liftIO (void (js_get self (toBufferSource keyId)))
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        MediaKeyStatusMap -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap.size Mozilla MediaKeyStatusMap.size documentation> 
getSize :: (MonadIO m) => MediaKeyStatusMap -> m Word
getSize self = liftIO (js_getSize self)