{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SourceBufferList
       (js_item, item, item_, itemUnchecked, js_getLength, getLength,
        SourceBufferList(..), gTypeSourceBufferList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        SourceBufferList -> Word -> IO (Nullable SourceBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item ::
     (MonadIO m) => SourceBufferList -> Word -> m (Maybe SourceBuffer)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
item_ :: (MonadIO m) => SourceBufferList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.item Mozilla SourceBufferList.item documentation> 
itemUnchecked ::
              (MonadIO m) => SourceBufferList -> Word -> m SourceBuffer
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        SourceBufferList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SourceBufferList.length Mozilla SourceBufferList.length documentation> 
getLength :: (MonadIO m) => SourceBufferList -> m Word
getLength self = liftIO (js_getLength (self))