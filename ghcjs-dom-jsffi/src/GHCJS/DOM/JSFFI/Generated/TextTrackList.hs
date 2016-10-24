{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TextTrackList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getTrackById,
        getTrackById, getTrackById_, getTrackByIdUnsafe,
        getTrackByIdUnchecked, js_getLength, getLength, addTrack, change,
        removeTrack, TextTrackList(..), gTypeTextTrackList)
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
        TextTrackList -> Word -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
item :: (MonadIO m) => TextTrackList -> Word -> m (Maybe TextTrack)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
item_ :: (MonadIO m) => TextTrackList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => TextTrackList -> Word -> m TextTrack
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.item Mozilla TextTrackList.item documentation> 
itemUnchecked ::
              (MonadIO m) => TextTrackList -> Word -> m TextTrack
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getTrackById\"]($2)"
        js_getTrackById ::
        TextTrackList -> JSString -> IO (Nullable TextTrack)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackById ::
             (MonadIO m, ToJSString id) =>
               TextTrackList -> id -> m (Maybe TextTrack)
getTrackById self id
  = liftIO
      (nullableToMaybe <$> (js_getTrackById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackById_ ::
              (MonadIO m, ToJSString id) => TextTrackList -> id -> m ()
getTrackById_ self id
  = liftIO (void (js_getTrackById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackByIdUnsafe ::
                   (MonadIO m, ToJSString id, HasCallStack) =>
                     TextTrackList -> id -> m TextTrack
getTrackByIdUnsafe self id
  = liftIO
      ((nullableToMaybe <$> (js_getTrackById (self) (toJSString id))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.getTrackById Mozilla TextTrackList.getTrackById documentation> 
getTrackByIdUnchecked ::
                      (MonadIO m, ToJSString id) => TextTrackList -> id -> m TextTrack
getTrackByIdUnchecked self id
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getTrackById (self) (toJSString id)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        TextTrackList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.length Mozilla TextTrackList.length documentation> 
getLength :: (MonadIO m) => TextTrackList -> m Word
getLength self = liftIO (js_getLength (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onaddtrack Mozilla TextTrackList.onaddtrack documentation> 
addTrack :: EventName TextTrackList Event
addTrack = unsafeEventName (toJSString "addtrack")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onchange Mozilla TextTrackList.onchange documentation> 
change :: EventName TextTrackList Event
change = unsafeEventName (toJSString "change")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackList.onremovetrack Mozilla TextTrackList.onremovetrack documentation> 
removeTrack :: EventName TextTrackList Event
removeTrack = unsafeEventName (toJSString "removetrack")