{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NodeList
       (js_item, item, js_getLength, getLength, NodeList, castToNodeList,
        gTypeNodeList, IsNodeList, toNodeList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        NodeList -> Word -> IO (Nullable Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.item Mozilla NodeList.item documentation> 
item ::
     (MonadIO m, IsNodeList self) => self -> Word -> m (Maybe Node)
item self index
  = liftIO (nullableToMaybe <$> (js_item (toNodeList self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        NodeList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeList.length Mozilla NodeList.length documentation> 
getLength :: (MonadIO m, IsNodeList self) => self -> m Word
getLength self = liftIO (js_getLength (toNodeList self))