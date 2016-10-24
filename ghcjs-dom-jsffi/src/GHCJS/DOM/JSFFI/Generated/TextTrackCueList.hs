{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TextTrackCueList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_getCueById,
        getCueById, getCueById_, getCueByIdUnsafe, getCueByIdUnchecked,
        js_getLength, getLength, TextTrackCueList(..),
        gTypeTextTrackCueList)
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
        TextTrackCueList -> Word -> IO (Nullable TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item ::
     (MonadIO m) => TextTrackCueList -> Word -> m (Maybe TextTrackCue)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
item_ :: (MonadIO m) => TextTrackCueList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) =>
             TextTrackCueList -> Word -> m TextTrackCue
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.item Mozilla TextTrackCueList.item documentation> 
itemUnchecked ::
              (MonadIO m) => TextTrackCueList -> Word -> m TextTrackCue
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"getCueById\"]($2)"
        js_getCueById ::
        TextTrackCueList -> JSString -> IO (Nullable TextTrackCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById ::
           (MonadIO m, ToJSString id) =>
             TextTrackCueList -> id -> m (Maybe TextTrackCue)
getCueById self id
  = liftIO
      (nullableToMaybe <$> (js_getCueById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueById_ ::
            (MonadIO m, ToJSString id) => TextTrackCueList -> id -> m ()
getCueById_ self id
  = liftIO (void (js_getCueById (self) (toJSString id)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueByIdUnsafe ::
                 (MonadIO m, ToJSString id, HasCallStack) =>
                   TextTrackCueList -> id -> m TextTrackCue
getCueByIdUnsafe self id
  = liftIO
      ((nullableToMaybe <$> (js_getCueById (self) (toJSString id))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.getCueById Mozilla TextTrackCueList.getCueById documentation> 
getCueByIdUnchecked ::
                    (MonadIO m, ToJSString id) =>
                      TextTrackCueList -> id -> m TextTrackCue
getCueByIdUnchecked self id
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getCueById (self) (toJSString id)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        TextTrackCueList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextTrackCueList.length Mozilla TextTrackCueList.length documentation> 
getLength :: (MonadIO m) => TextTrackCueList -> m Word
getLength self = liftIO (js_getLength (self))