{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGStringList
       (js_clear, clear, js_initialize, initialize, js_getItem, getItem,
        js_insertItemBefore, insertItemBefore, js_replaceItem, replaceItem,
        js_removeItem, removeItem, js_appendItem, appendItem,
        js_getNumberOfItems, getNumberOfItems, SVGStringList,
        castToSVGStringList, gTypeSVGStringList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        SVGStringList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.clear Mozilla SVGStringList.clear documentation> 
clear :: (MonadIO m) => SVGStringList -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"initialize\"]($2)"
        js_initialize :: SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.initialize Mozilla SVGStringList.initialize documentation> 
initialize ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
initialize self item
  = liftIO
      (fromJSString <$> (js_initialize (self) (toJSString item)))
 
foreign import javascript unsafe "$1[\"getItem\"]($2)" js_getItem
        :: SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.getItem Mozilla SVGStringList.getItem documentation> 
getItem ::
        (MonadIO m, FromJSString result) =>
          SVGStringList -> Word -> m result
getItem self index
  = liftIO (fromJSString <$> (js_getItem (self) index))
 
foreign import javascript unsafe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.insertItemBefore Mozilla SVGStringList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, ToJSString item, FromJSString result) =>
                   SVGStringList -> item -> Word -> m result
insertItemBefore self item index
  = liftIO
      (fromJSString <$>
         (js_insertItemBefore (self) (toJSString item) index))
 
foreign import javascript unsafe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem :: SVGStringList -> JSString -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.replaceItem Mozilla SVGStringList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, ToJSString item, FromJSString result) =>
              SVGStringList -> item -> Word -> m result
replaceItem self item index
  = liftIO
      (fromJSString <$> (js_replaceItem (self) (toJSString item) index))
 
foreign import javascript unsafe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGStringList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.removeItem Mozilla SVGStringList.removeItem documentation> 
removeItem ::
           (MonadIO m, FromJSString result) =>
             SVGStringList -> Word -> m result
removeItem self index
  = liftIO (fromJSString <$> (js_removeItem (self) index))
 
foreign import javascript unsafe "$1[\"appendItem\"]($2)"
        js_appendItem :: SVGStringList -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.appendItem Mozilla SVGStringList.appendItem documentation> 
appendItem ::
           (MonadIO m, ToJSString item, FromJSString result) =>
             SVGStringList -> item -> m result
appendItem self item
  = liftIO
      (fromJSString <$> (js_appendItem (self) (toJSString item)))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStringList.numberOfItems Mozilla SVGStringList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGStringList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems (self))