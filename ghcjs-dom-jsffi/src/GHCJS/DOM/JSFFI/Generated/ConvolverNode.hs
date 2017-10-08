{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ConvolverNode
       (js_setBuffer, setBuffer, js_getBuffer, getBuffer, getBufferUnsafe,
        getBufferUnchecked, js_setNormalize, setNormalize, js_getNormalize,
        getNormalize, ConvolverNode(..), gTypeConvolverNode)
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
 
foreign import javascript safe "$1[\"buffer\"] = $2;" js_setBuffer
        :: ConvolverNode -> Optional AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => ConvolverNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO (js_setBuffer self (maybeToOptional val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        ConvolverNode -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBuffer :: (MonadIO m) => ConvolverNode -> m (Maybe AudioBuffer)
getBuffer self = liftIO (nullableToMaybe <$> (js_getBuffer self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBufferUnsafe ::
                (MonadIO m, HasCallStack) => ConvolverNode -> m AudioBuffer
getBufferUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getBuffer self)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBufferUnchecked :: (MonadIO m) => ConvolverNode -> m AudioBuffer
getBufferUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getBuffer self))
 
foreign import javascript unsafe "$1[\"normalize\"] = $2;"
        js_setNormalize :: ConvolverNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
setNormalize :: (MonadIO m) => ConvolverNode -> Bool -> m ()
setNormalize self val = liftIO (js_setNormalize self val)
 
foreign import javascript unsafe "($1[\"normalize\"] ? 1 : 0)"
        js_getNormalize :: ConvolverNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
getNormalize :: (MonadIO m) => ConvolverNode -> m Bool
getNormalize self = liftIO (js_getNormalize self)