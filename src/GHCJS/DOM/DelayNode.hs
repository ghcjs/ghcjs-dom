{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DelayNode
       (ghcjs_dom_delay_node_get_delay_time, delayNodeGetDelayTime,
        DelayNode, IsDelayNode, castToDelayNode, gTypeDelayNode,
        toDelayNode)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"delayTime\"]"
        ghcjs_dom_delay_node_get_delay_time ::
        JSRef DelayNode -> IO (JSRef AudioParam)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DelayNode.delayTime Mozilla DelayNode.delayTime documentation> 
delayNodeGetDelayTime ::
                      (MonadIO m, IsDelayNode self) => self -> m (Maybe AudioParam)
delayNodeGetDelayTime self
  = liftIO
      ((ghcjs_dom_delay_node_get_delay_time
          (unDelayNode (toDelayNode self)))
         >>= fromJSRef)
#else
module GHCJS.DOM.DelayNode (
  ) where
#endif
