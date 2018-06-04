{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGPathSegList
       (js_clear, clear, js_initialize, initialize, initialize_,
        js_getItem, getItem, getItem_, js_insertItemBefore,
        insertItemBefore, insertItemBefore_, js_replaceItem, replaceItem,
        replaceItem_, js_removeItem, removeItem, removeItem_,
        js_appendItem, appendItem, appendItem_, js_getNumberOfItems,
        getNumberOfItems, SVGPathSegList(..), gTypeSVGPathSegList)
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
        SVGPathSegList -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.clear Mozilla SVGPathSegList.clear documentation> 
clear :: (MonadIO m) => SVGPathSegList -> m ()
clear self = liftIO (js_clear self)
 
foreign import javascript safe "$1[\"initialize\"]($2)"
        js_initialize ::
        SVGPathSegList -> Optional SVGPathSeg -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m SVGPathSeg
initialize self newItem
  = liftIO
      (js_initialize self (maybeToOptional (fmap toSVGPathSeg newItem)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.initialize Mozilla SVGPathSegList.initialize documentation> 
initialize_ ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
initialize_ self newItem
  = liftIO
      (void
         (js_initialize self (maybeToOptional (fmap toSVGPathSeg newItem))))
 
foreign import javascript safe "$1[\"getItem\"]($2)" js_getItem ::
        SVGPathSegList -> Word -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem :: (MonadIO m) => SVGPathSegList -> Word -> m SVGPathSeg
getItem self index = liftIO (js_getItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.getItem Mozilla SVGPathSegList.getItem documentation> 
getItem_ :: (MonadIO m) => SVGPathSegList -> Word -> m ()
getItem_ self index = liftIO (void (js_getItem self index))
 
foreign import javascript safe "$1[\"insertItemBefore\"]($2, $3)"
        js_insertItemBefore ::
        SVGPathSegList -> Optional SVGPathSeg -> Word -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore ::
                 (MonadIO m, IsSVGPathSeg newItem) =>
                   SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
insertItemBefore self newItem index
  = liftIO
      (js_insertItemBefore self
         (maybeToOptional (fmap toSVGPathSeg newItem))
         index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.insertItemBefore Mozilla SVGPathSegList.insertItemBefore documentation> 
insertItemBefore_ ::
                  (MonadIO m, IsSVGPathSeg newItem) =>
                    SVGPathSegList -> Maybe newItem -> Word -> m ()
insertItemBefore_ self newItem index
  = liftIO
      (void
         (js_insertItemBefore self
            (maybeToOptional (fmap toSVGPathSeg newItem))
            index))
 
foreign import javascript safe "$1[\"replaceItem\"]($2, $3)"
        js_replaceItem ::
        SVGPathSegList -> Optional SVGPathSeg -> Word -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> Word -> m SVGPathSeg
replaceItem self newItem index
  = liftIO
      (js_replaceItem self (maybeToOptional (fmap toSVGPathSeg newItem))
         index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.replaceItem Mozilla SVGPathSegList.replaceItem documentation> 
replaceItem_ ::
             (MonadIO m, IsSVGPathSeg newItem) =>
               SVGPathSegList -> Maybe newItem -> Word -> m ()
replaceItem_ self newItem index
  = liftIO
      (void
         (js_replaceItem self (maybeToOptional (fmap toSVGPathSeg newItem))
            index))
 
foreign import javascript safe "$1[\"removeItem\"]($2)"
        js_removeItem :: SVGPathSegList -> Word -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem :: (MonadIO m) => SVGPathSegList -> Word -> m SVGPathSeg
removeItem self index = liftIO (js_removeItem self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.removeItem Mozilla SVGPathSegList.removeItem documentation> 
removeItem_ :: (MonadIO m) => SVGPathSegList -> Word -> m ()
removeItem_ self index = liftIO (void (js_removeItem self index))
 
foreign import javascript safe "$1[\"appendItem\"]($2)"
        js_appendItem ::
        SVGPathSegList -> Optional SVGPathSeg -> IO SVGPathSeg

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem ::
           (MonadIO m, IsSVGPathSeg newItem) =>
             SVGPathSegList -> Maybe newItem -> m SVGPathSeg
appendItem self newItem
  = liftIO
      (js_appendItem self (maybeToOptional (fmap toSVGPathSeg newItem)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.appendItem Mozilla SVGPathSegList.appendItem documentation> 
appendItem_ ::
            (MonadIO m, IsSVGPathSeg newItem) =>
              SVGPathSegList -> Maybe newItem -> m ()
appendItem_ self newItem
  = liftIO
      (void
         (js_appendItem self (maybeToOptional (fmap toSVGPathSeg newItem))))
 
foreign import javascript unsafe "$1[\"numberOfItems\"]"
        js_getNumberOfItems :: SVGPathSegList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPathSegList.numberOfItems Mozilla SVGPathSegList.numberOfItems documentation> 
getNumberOfItems :: (MonadIO m) => SVGPathSegList -> m Word
getNumberOfItems self = liftIO (js_getNumberOfItems self)