{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGLengthList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_, js_getNumberOfItems,
        getNumberOfItems, SVGLengthList(..), gTypeSVGLengthList)
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
        SVGLengthList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.clear Mozilla SVGLengthList.clear documentation> 
clear :: (MonadIO m) => SVGLengthList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize :: SVGLengthList -> SVGLength -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize ::
           (MonadIO m) => SVGLengthList -> SVGLength -> m SVGLength
initialize self item = liftIO (js_initialize self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.initialize Mozilla SVGLengthList.initialize documentation> 
initialize_ :: (MonadIO m) => SVGLengthList -> SVGLength -> m ()
initialize_ self item = liftIO (void (js_initialize self item))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGLengthList -> Word -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem :: (MonadIO m) => SVGLengthList -> Word -> m SVGLength
getItem self index = liftIO (js_getItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.getItem Mozilla SVGLengthList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGLengthList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGLengthList -> SVGLength -> Word -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m) => SVGLengthList -> SVGLength -> Word -> m SVGLength
insertItemBefore self item index
  = liftIO (js_insertItemBefore self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.insertItemBefore Mozilla SVGLengthList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m) => SVGLengthList -> SVGLength -> Word -> m ()
insertItemBefore_ self item index
  = liftIO (void (js_insertItemBefore self item index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGLengthList -> SVGLength -> Word -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem ::
            (MonadIO m) => SVGLengthList -> SVGLength -> Word -> m SVGLength
replaceItem self item index
  = liftIO (js_replaceItem self item index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.replaceItem Mozilla SVGLengthList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m) => SVGLengthList -> SVGLength -> Word -> m ()
replaceItem_ self item index
  = liftIO (void (js_replaceItem self item index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGLengthList -> Word -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem :: (MonadIO m) => SVGLengthList -> Word -> m SVGLength
removeItem self index = liftIO (js_removeItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.removeItem Mozilla SVGLengthList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGLengthList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem :: SVGLengthList -> SVGLength -> IO SVGLength

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem ::
           (MonadIO m) => SVGLengthList -> SVGLength -> m SVGLength
appendItem self item = liftIO (js_appendItem self item)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.appendItem Mozilla SVGLengthList.appendItem documentation> 
appendItem_ :: (MonadIO m) => SVGLengthList -> SVGLength -> m ()
appendItem_ self item = liftIO (void (js_appendItem self item))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGLengthList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLengthList.numberOfItems Mozilla SVGLengthList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGLengthList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)