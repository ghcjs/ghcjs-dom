{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SourceBufferList
       (js_item, item, item_, js_getLength, getLength, addsourcebuffer,
        removesourcebuffer, SourceBufferList(..), gTypeSourceBufferList)
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
 
foreign import javascript unsafe "$1[$2]" js_item ::
        SourceBufferList -> Word -> IO SourceBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item :: (MonadIO m) => SourceBufferList -> Word -> m SourceBuffer
item self index = liftIO (js_item self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item_ :: (MonadIO m) => SourceBufferList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        SourceBufferList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.length Mozilla SourceBufferList.length documentation> 
getLength :: (MonadIO m) => SourceBufferList -> m Word
getLength self = liftIO (js_getLength self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.onaddsourcebuffer Mozilla SourceBufferList.onaddsourcebuffer documentation> 
addsourcebuffer :: EventName SourceBufferList onaddsourcebuffer
addsourcebuffer = unsafeEventName (toJSString "addsourcebuffer")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.onremovesourcebuffer Mozilla SourceBufferList.onremovesourcebuffer documentation> 
removesourcebuffer ::
                     EventName SourceBufferList onremovesourcebuffer
removesourcebuffer
  = unsafeEventName (toJSString "removesourcebuffer")