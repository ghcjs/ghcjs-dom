{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGStringList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_, js_getNumberOfItems,
        getNumberOfItems, SVGStringList(..), gTypeSVGStringList)
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
 
foreign import javascript safe "$1[\"clear\"]()" js_clear ::
        SVGStringList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.clear Mozilla SVGStringList.clear documentation> 
clear :: (MonadIO m) => SVGStringList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize :: SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
initialize self item
  = liftIO (fromJSString <$> (js_initialize self (toJSString item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize_ ::
            (MonadIO m, ToJSString item) => SVGStringList -> item -> m ()
initialize_ self item
  = liftIO (void (js_initialize self (toJSString item)))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem ::
        (MonadIO m, FromJSString result) =>
          SVGStringList -> Word -> m result
getItem self index
  = liftIO (fromJSString <$> (js_getItem self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGStringList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, ToJSString item, FromJSString result) =>
                   SVGStringList -> item -> Word -> m result
insertItemBefore self item index
  = liftIO
      (fromJSString <$>
         (js_insertItemBefore self (toJSString item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m, ToJSString item) =>
                    SVGStringList -> item -> Word -> m ()
insertItemBefore_ self item index
  = liftIO (void (js_insertItemBefore self (toJSString item) index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem :: SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, ToJSString item, FromJSString result) =>
              SVGStringList -> item -> Word -> m result
replaceItem self item index
  = liftIO
      (fromJSString <$> (js_replaceItem self (toJSString item) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m, ToJSString item) =>
               SVGStringList -> item -> Word -> m ()
replaceItem_ self item index
  = liftIO (void (js_replaceItem self (toJSString item) index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem ::
           (MonadIO m, FromJSString result) =>
             SVGStringList -> Word -> m result
removeItem self index
  = liftIO (fromJSString <$> (js_removeItem self index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGStringList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem :: SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
appendItem self item
  = liftIO (fromJSString <$> (js_appendItem self (toJSString item)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem_ ::
            (MonadIO m, ToJSString item) => SVGStringList -> item -> m ()
appendItem_ self item
  = liftIO (void (js_appendItem self (toJSString item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.numberOfItems Mozilla SVGStringList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGStringList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)