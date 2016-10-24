{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.MimeTypeArray
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_getLength, getLength, MimeTypeArray(..), gTypeMimeTypeArray)
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
        MimeTypeArray -> Word -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item :: (MonadIO m) => MimeTypeArray -> Word -> m (Maybe MimeType)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
item_ :: (MonadIO m) => MimeTypeArray -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => MimeTypeArray -> Word -> m MimeType
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item (self) index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.item Mozilla MimeTypeArray.item documentation> 
itemUnchecked :: (MonadIO m) => MimeTypeArray -> Word -> m MimeType
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: MimeTypeArray -> JSString -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            MimeTypeArray -> name -> m (Maybe MimeType)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) => MimeTypeArray -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  MimeTypeArray -> name -> m MimeType
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem (self) (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.namedItem Mozilla MimeTypeArray.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) => MimeTypeArray -> name -> m MimeType
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        MimeTypeArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/MimeTypeArray.length Mozilla MimeTypeArray.length documentation> 
getLength :: (MonadIO m) => MimeTypeArray -> m Word
getLength self = liftIO (js_getLength (self))