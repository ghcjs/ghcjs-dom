{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ConvolverNode
       (js_setBuffer, setBuffer, js_getBuffer, getBuffer, js_setNormalize,
        setNormalize, js_getNormalize, getNormalize, ConvolverNode,
        castToConvolverNode, gTypeConvolverNode)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        js_setBuffer :: ConvolverNode -> Nullable AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => ConvolverNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO (js_setBuffer (self) (maybeToNullable val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        ConvolverNode -> IO (Nullable AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBuffer :: (MonadIO m) => ConvolverNode -> m (Maybe AudioBuffer)
getBuffer self = liftIO (nullableToMaybe <$> (js_getBuffer (self)))
 
foreign import javascript unsafe "$1[\"normalize\"] = $2;"
        js_setNormalize :: ConvolverNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
setNormalize :: (MonadIO m) => ConvolverNode -> Bool -> m ()
setNormalize self val = liftIO (js_setNormalize (self) val)
 
foreign import javascript unsafe "($1[\"normalize\"] ? 1 : 0)"
        js_getNormalize :: ConvolverNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
getNormalize :: (MonadIO m) => ConvolverNode -> m Bool
getNormalize self = liftIO (js_getNormalize (self))