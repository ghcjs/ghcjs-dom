{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ConvolverNode
       (js_setBuffer, setBuffer, js_getBuffer, getBuffer, js_setNormalize,
        setNormalize, js_getNormalize, getNormalize, ConvolverNode,
        castToConvolverNode, gTypeConvolverNode)
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

 
foreign import javascript unsafe "$1[\"buffer\"] = $2;"
        js_setBuffer :: JSRef ConvolverNode -> JSRef AudioBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
setBuffer ::
          (MonadIO m) => ConvolverNode -> Maybe AudioBuffer -> m ()
setBuffer self val
  = liftIO
      (js_setBuffer (unConvolverNode self)
         (maybe jsNull unAudioBuffer val))
 
foreign import javascript unsafe "$1[\"buffer\"]" js_getBuffer ::
        JSRef ConvolverNode -> IO (JSRef AudioBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.buffer Mozilla ConvolverNode.buffer documentation> 
getBuffer :: (MonadIO m) => ConvolverNode -> m (Maybe AudioBuffer)
getBuffer self
  = liftIO ((js_getBuffer (unConvolverNode self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"normalize\"] = $2;"
        js_setNormalize :: JSRef ConvolverNode -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
setNormalize :: (MonadIO m) => ConvolverNode -> Bool -> m ()
setNormalize self val
  = liftIO (js_setNormalize (unConvolverNode self) val)
 
foreign import javascript unsafe "($1[\"normalize\"] ? 1 : 0)"
        js_getNormalize :: JSRef ConvolverNode -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ConvolverNode.normalize Mozilla ConvolverNode.normalize documentation> 
getNormalize :: (MonadIO m) => ConvolverNode -> m Bool
getNormalize self = liftIO (js_getNormalize (unConvolverNode self))
#else
module GHCJS.DOM.ConvolverNode (
  ) where
#endif
