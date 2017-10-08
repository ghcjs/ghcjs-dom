{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.PluginArray
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_namedItem,
        namedItem, namedItem_, namedItemUnsafe, namedItemUnchecked,
        js_refresh, refresh, js_getLength, getLength, PluginArray(..),
        gTypePluginArray)
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
        PluginArray -> Word -> IO (Nullable Plugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
item :: (MonadIO m) => PluginArray -> Word -> m (Maybe Plugin)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
item_ :: (MonadIO m) => PluginArray -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => PluginArray -> Word -> m Plugin
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
itemUnchecked :: (MonadIO m) => PluginArray -> Word -> m Plugin
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_namedItem ::
        PluginArray -> JSString -> IO (Nullable Plugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            PluginArray -> name -> m (Maybe Plugin)
namedItem self name
  = liftIO
      (nullableToMaybe <$> (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItem_ ::
           (MonadIO m, ToJSString name) => PluginArray -> name -> m ()
namedItem_ self name
  = liftIO (void (js_namedItem self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItemUnsafe ::
                (MonadIO m, ToJSString name, HasCallStack) =>
                  PluginArray -> name -> m Plugin
namedItemUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_namedItem self (toJSString name))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItemUnchecked ::
                   (MonadIO m, ToJSString name) => PluginArray -> name -> m Plugin
namedItemUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_namedItem self (toJSString name)))
 
foreign import javascript unsafe "$1[\"refresh\"]($2)" js_refresh
        :: PluginArray -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.refresh Mozilla PluginArray.refresh documentation> 
refresh :: (MonadIO m) => PluginArray -> Bool -> m ()
refresh self reload = liftIO (js_refresh self reload)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        PluginArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.length Mozilla PluginArray.length documentation> 
getLength :: (MonadIO m) => PluginArray -> m Word
getLength self = liftIO (js_getLength self)