{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NodeList
       (js_item, item, item_, js_getLength, getLength, NodeList(..),
        gTypeNodeList, IsNodeList, toNodeList)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[$2]" js_item ::
        NodeList -> Word -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item :: (MonadIO m, IsNodeList self) => self -> Word -> m Node
item self index = liftIO (js_item (toNodeList self) index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item_ :: (MonadIO m, IsNodeList self) => self -> Word -> m ()
item_ self index = liftIO (void (js_item (toNodeList self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        NodeList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.length Mozilla NodeList.length documentation> 
getLength :: (MonadIO m, IsNodeList self) => self -> m Word
getLength self = liftIO (js_getLength (toNodeList self))