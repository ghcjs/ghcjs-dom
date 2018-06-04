{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.NodeFilter
       (newNodeFilter, newNodeFilterSync, newNodeFilterAsync,
        pattern FILTER_ACCEPT, pattern FILTER_REJECT, pattern FILTER_SKIP,
        pattern SHOW_ALL, pattern SHOW_ELEMENT, pattern SHOW_ATTRIBUTE,
        pattern SHOW_TEXT, pattern SHOW_CDATA_SECTION,
        pattern SHOW_ENTITY_REFERENCE, pattern SHOW_ENTITY,
        pattern SHOW_PROCESSING_INSTRUCTION, pattern SHOW_COMMENT,
        pattern SHOW_DOCUMENT, pattern SHOW_DOCUMENT_TYPE,
        pattern SHOW_DOCUMENT_FRAGMENT, pattern SHOW_NOTATION, NodeFilter)
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilter :: (MonadIO m) => (Node -> IO ()) -> m NodeFilter
newNodeFilter callback
  = liftIO
      (NodeFilter <$>
         syncCallback1 ThrowWouldBlock
           (\ node -> fromJSValUnchecked node >>= \ node' -> callback node'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilterSync :: (MonadIO m) => (Node -> IO ()) -> m NodeFilter
newNodeFilterSync callback
  = liftIO
      (NodeFilter <$>
         syncCallback1 ContinueAsync
           (\ node -> fromJSValUnchecked node >>= \ node' -> callback node'))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NodeFilter Mozilla NodeFilter documentation> 
newNodeFilterAsync ::
                   (MonadIO m) => (Node -> IO ()) -> m NodeFilter
newNodeFilterAsync callback
  = liftIO
      (NodeFilter <$>
         asyncCallback1
           (\ node -> fromJSValUnchecked node >>= \ node' -> callback node'))
pattern FILTER_ACCEPT = 1
pattern FILTER_REJECT = 2
pattern FILTER_SKIP = 3
pattern SHOW_ALL = 4294967295
pattern SHOW_ELEMENT = 1
pattern SHOW_ATTRIBUTE = 2
pattern SHOW_TEXT = 4
pattern SHOW_CDATA_SECTION = 8
pattern SHOW_ENTITY_REFERENCE = 16
pattern SHOW_ENTITY = 32
pattern SHOW_PROCESSING_INSTRUCTION = 64
pattern SHOW_COMMENT = 128
pattern SHOW_DOCUMENT = 256
pattern SHOW_DOCUMENT_TYPE = 512
pattern SHOW_DOCUMENT_FRAGMENT = 1024
pattern SHOW_NOTATION = 2048