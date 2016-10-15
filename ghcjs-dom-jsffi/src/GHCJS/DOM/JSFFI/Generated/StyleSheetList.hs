{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.StyleSheetList
       (js_item, item, item_, itemUnchecked, js__get, _get, _get_,
        _getUnchecked, js_getLength, getLength, StyleSheetList(..),
        gTypeStyleSheetList)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        StyleSheetList -> Word -> IO (Nullable StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item ::
     (MonadIO m) => StyleSheetList -> Word -> m (Maybe StyleSheet)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
item_ :: (MonadIO m) => StyleSheetList -> Word -> m ()
item_ self index = liftIO (void (js_item (self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.item Mozilla StyleSheetList.item documentation> 
itemUnchecked ::
              (MonadIO m) => StyleSheetList -> Word -> m StyleSheet
itemUnchecked self index
  = liftIO (fromJust . nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        StyleSheetList -> JSString -> IO (Nullable CSSStyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
_get ::
     (MonadIO m, ToJSString name) =>
       StyleSheetList -> name -> m (Maybe CSSStyleSheet)
_get self name
  = liftIO (nullableToMaybe <$> (js__get (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
_get_ ::
      (MonadIO m, ToJSString name) => StyleSheetList -> name -> m ()
_get_ self name = liftIO (void (js__get (self) (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList._get Mozilla StyleSheetList._get documentation> 
_getUnchecked ::
              (MonadIO m, ToJSString name) =>
                StyleSheetList -> name -> m CSSStyleSheet
_getUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$> (js__get (self) (toJSString name)))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        StyleSheetList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/StyleSheetList.length Mozilla StyleSheetList.length documentation> 
getLength :: (MonadIO m) => StyleSheetList -> m Word
getLength self = liftIO (js_getLength (self))