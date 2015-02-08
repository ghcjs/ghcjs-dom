{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ChildNode
       (ghcjs_dom_child_node_remove, childNodeRemove, ChildNode,
        IsChildNode, castToChildNode, gTypeChildNode, toChildNode)
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

 
foreign import javascript unsafe "$1[\"remove\"]()"
        ghcjs_dom_child_node_remove :: JSRef ChildNode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.remove Mozilla ChildNode.remove documentation> 
childNodeRemove :: (MonadIO m, IsChildNode self) => self -> m ()
childNodeRemove self
  = liftIO
      (ghcjs_dom_child_node_remove (unChildNode (toChildNode self)))
#else
module GHCJS.DOM.ChildNode (
  ) where
#endif
