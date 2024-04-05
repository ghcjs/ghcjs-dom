{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.StyleSheetList
       (js_item, item, item_, itemUnsafe, itemUnchecked, js_get, get,
        get_, js_getLength, getLength, StyleSheetList(..),
        gTypeStyleSheetList)
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
        StyleSheetList -> Word -> IO (Nullable StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item ::
     (MonadIO m) => StyleSheetList -> Word -> m (Maybe StyleSheet)
item self index = liftIO (nullableToMaybe <$> (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item_ :: (MonadIO m) => StyleSheetList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
itemUnsafe ::
           (MonadIO m, HasCallStack) => StyleSheetList -> Word -> m StyleSheet
itemUnsafe self index
  = liftIO
      ((nullableToMaybe <$> (js_item self index)) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
itemUnchecked ::
              (MonadIO m) => StyleSheetList -> Word -> m StyleSheet
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item self index))
 
foreign import javascript unsafe "$1[$2]" js_get ::
        StyleSheetList -> JSString -> IO CSSStyleSheet

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.get Mozilla StyleSheetList.get documentation> 
get ::
    (MonadIO m, ToJSString name) =>
      StyleSheetList -> name -> m CSSStyleSheet
get self name = liftIO (js_get self (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.get Mozilla StyleSheetList.get documentation> 
get_ ::
     (MonadIO m, ToJSString name) => StyleSheetList -> name -> m ()
get_ self name = liftIO (void (js_get self (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        StyleSheetList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
getLength :: (MonadIO m) => StyleSheetList -> m Word
getLength self = liftIO (js_getLength self)