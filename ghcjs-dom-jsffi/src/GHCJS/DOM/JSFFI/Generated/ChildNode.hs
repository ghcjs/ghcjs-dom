{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ChildNode
       (js_before, before, js_after, after, js_replaceWith, replaceWith,
        js_remove, remove, ChildNode(..), gTypeChildNode, IsChildNode,
        toChildNode)
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
 
foreign import javascript safe "$1[\"before\"]($2)" js_before ::
        ChildNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.before Mozilla ChildNode.before documentation> 
before ::
       (MonadIO m, IsChildNode self, IsNodeOrString nodes) =>
         self -> [nodes] -> m ()
before self nodes
  = liftIO
      (toJSVal nodes >>= \ nodes' -> js_before (toChildNode self) nodes')
 
foreign import javascript safe "$1[\"after\"]($2)" js_after ::
        ChildNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.after Mozilla ChildNode.after documentation> 
after ::
      (MonadIO m, IsChildNode self, IsNodeOrString nodes) =>
        self -> [nodes] -> m ()
after self nodes
  = liftIO
      (toJSVal nodes >>= \ nodes' -> js_after (toChildNode self) nodes')
 
foreign import javascript safe "$1[\"replaceWith\"]($2)"
        js_replaceWith :: ChildNode -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.replaceWith Mozilla ChildNode.replaceWith documentation> 
replaceWith ::
            (MonadIO m, IsChildNode self, IsNodeOrString nodes) =>
              self -> [nodes] -> m ()
replaceWith self nodes
  = liftIO
      (toJSVal nodes >>=
         \ nodes' -> js_replaceWith (toChildNode self) nodes')
 
foreign import javascript safe "$1[\"remove\"]()" js_remove ::
        ChildNode -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ChildNode.remove Mozilla ChildNode.remove documentation> 
remove :: (MonadIO m, IsChildNode self) => self -> m ()
remove self = liftIO (js_remove (toChildNode self))