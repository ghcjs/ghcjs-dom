{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Plugin
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_getName, getName, js_getFilename, getFilename,
        js_getDescription, getDescription, js_getLength, getLength,
        Plugin(..), gTypePlugin)
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
        Plugin -> Word -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item :: (MonadIO m) => Plugin -> Word -> m (Maybe MimeType)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
item_ :: (MonadIO m) => Plugin -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => Plugin -> Word -> m MimeType
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.item Mozilla Plugin.item documentation> 
itemUnchecked :: (MonadIO m) => Plugin -> Word -> m MimeType
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_namedItem ::
        Plugin -> JSString -> IO (Nullable MimeType)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            Plugin -> name -> m (Maybe MimeType)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) => Plugin -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  Plugin -> name -> m MimeType
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.namedItem Mozilla Plugin.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) => Plugin -> name -> m MimeType
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.name Mozilla Plugin.name documentation> 
getName :: (MonadIO m, FromJSString result) => Plugin -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.filename Mozilla Plugin.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => Plugin -> m result
getFilename self = liftIO (fromJSString <$> (js_getFilename self))
 
foreign import javascript unsafe "$1[\"description\"]"
        js_getDescription :: Plugin -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.description Mozilla Plugin.description documentation> 
getDescription ::
               (MonadIO m, FromJSString result) => Plugin -> m result
getDescription self
  = liftIO (fromJSString <$> (js_getDescription self))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        Plugin -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Plugin.length Mozilla Plugin.length documentation> 
getLength :: (MonadIO m) => Plugin -> m Word
getLength self = liftIO (js_getLength self)