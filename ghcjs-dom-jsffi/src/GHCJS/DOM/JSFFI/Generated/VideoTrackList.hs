{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.VideoTrackList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getTrackById,
        getTrackById, getTrackById_, getTrackByIdUnsafe,
        getTrackByIdUnchecked, js_getLength, getLength,
        js_getSelectedIndex, getSelectedIndex, change, addTrack,
        removeTrack, VideoTrackList(..), gTypeVideoTrackList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
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
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        VideoTrackList -> Word -> IO (Nullable VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
item ::
     (MonadIO m) => VideoTrackList -> Word -> m (Maybe VideoTrack)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
item_ :: (MonadIO m) => VideoTrackList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => VideoTrackList -> Word -> m VideoTrack
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.item Mozilla VideoTrackList.item documentation> 
itemUnchecked ::
              (MonadIO m) => VideoTrackList -> Word -> m VideoTrack
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        VideoTrackList -> JSString -> IO (Nullable VideoTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString id) =>
               VideoTrackList -> id -> m (Maybe VideoTrack)
getTrackById self id
  = liftIO
      (nullableToMaybe <$> (js_getTrackById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadIO m, ToJSString id) => VideoTrackList -> id -> m ()
getTrackById_ self id
  = liftIO (void (js_getTrackById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackByIdUnsafe ::
                   (MonadIO m, ToJSString id, HasCallStack) =>
                     VideoTrackList -> id -> m VideoTrack
getTrackByIdUnsafe self id
  = liftIO
      ((nullableToMaybe <$> (js_getTrackById (self) (toJSString id))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.getTrackById Mozilla VideoTrackList.getTrackById documentation> 
getTrackByIdUnchecked ::
                      (MonadIO m, ToJSString id) => VideoTrackList -> id -> m VideoTrack
getTrackByIdUnchecked self id
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTrackById (self) (toJSString id)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        VideoTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.length Mozilla VideoTrackList.length documentation> 
getLength :: (MonadIO m) => VideoTrackList -> m Word
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"selectedIndex\"]"
        js_getSelectedIndex :: VideoTrackList -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.selectedIndex Mozilla VideoTrackList.selectedIndex documentation> 
getSelectedIndex :: (MonadIO m) => VideoTrackList -> m Int
getSelectedIndex self = liftIO (js_getSelectedIndex (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onchange Mozilla VideoTrackList.onchange documentation> 
change :: EventName VideoTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onaddtrack Mozilla VideoTrackList.onaddtrack documentation> 
addTrack :: EventName VideoTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VideoTrackList.onremovetrack Mozilla VideoTrackList.onremovetrack documentation> 
removeTrack :: EventName VideoTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")