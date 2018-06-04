{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StaticRange
       (js_getStartOffset, getStartOffset, js_getEndOffset, getEndOffset,
        js_getStartContainer, getStartContainer, js_getEndContainer,
        getEndContainer, js_getCollapsed, getCollapsed, StaticRange(..),
        gTypeStaticRange)
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
 
foreign import javascript unsafe "$1[\"startOffset\"]"
        js_getStartOffset :: StaticRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.startOffset Mozilla StaticRange.startOffset documentation> 
getStartOffset :: (MonadIO m) => StaticRange -> m Word
getStartOffset self = liftIO (js_getStartOffset self)
 
foreign import javascript unsafe "$1[\"endOffset\"]"
        js_getEndOffset :: StaticRange -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.endOffset Mozilla StaticRange.endOffset documentation> 
getEndOffset :: (MonadIO m) => StaticRange -> m Word
getEndOffset self = liftIO (js_getEndOffset self)
 
foreign import javascript unsafe "$1[\"startContainer\"]"
        js_getStartContainer :: StaticRange -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.startContainer Mozilla StaticRange.startContainer documentation> 
getStartContainer :: (MonadIO m) => StaticRange -> m Node
getStartContainer self = liftIO (js_getStartContainer self)
 
foreign import javascript unsafe "$1[\"endContainer\"]"
        js_getEndContainer :: StaticRange -> IO Node

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.endContainer Mozilla StaticRange.endContainer documentation> 
getEndContainer :: (MonadIO m) => StaticRange -> m Node
getEndContainer self = liftIO (js_getEndContainer self)
 
foreign import javascript unsafe "($1[\"collapsed\"] ? 1 : 0)"
        js_getCollapsed :: StaticRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StaticRange.collapsed Mozilla StaticRange.collapsed documentation> 
getCollapsed :: (MonadIO m) => StaticRange -> m Bool
getCollapsed self = liftIO (js_getCollapsed self)