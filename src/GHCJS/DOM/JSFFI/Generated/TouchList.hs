{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TouchList
       (js_item, item, js_getLength, getLength, TouchList,
        castToTouchList, gTypeTouchList)
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
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        TouchList -> Word -> IO (Nullable Touch)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.item Mozilla TouchList.item documentation> 
item :: (MonadIO m) => TouchList -> Word -> m (Maybe Touch)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        TouchList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.length Mozilla TouchList.length documentation> 
getLength :: (MonadIO m) => TouchList -> m Word
getLength self = liftIO (js_getLength (self))