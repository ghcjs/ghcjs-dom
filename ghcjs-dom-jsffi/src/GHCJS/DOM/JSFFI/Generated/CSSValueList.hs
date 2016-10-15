{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CSSValueList
       (js_item, item, item_, itemUnchecked, js_getLength, getLength,
        CSSValueList(..), gTypeCSSValueList, IsCSSValueList,
        toCSSValueList)
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
        CSSValueList -> Word -> IO (Nullable CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
item ::
     (MonadIO m, IsCSSValueList self) =>
       self -> Word -> m (Maybe CSSValue)
item self index
  = liftIO
      (nullableToMaybe <$> (js_item (toCSSValueList self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
item_ :: (MonadIO m, IsCSSValueList self) => self -> Word -> m ()
item_ self index
  = liftIO (void (js_item (toCSSValueList self) index))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.item Mozilla CSSValueList.item documentation> 
itemUnchecked ::
              (MonadIO m, IsCSSValueList self) => self -> Word -> m CSSValue
itemUnchecked self index
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_item (toCSSValueList self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        CSSValueList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSValueList.length Mozilla CSSValueList.length documentation> 
getLength :: (MonadIO m, IsCSSValueList self) => self -> m Word
getLength self = liftIO (js_getLength (toCSSValueList self))