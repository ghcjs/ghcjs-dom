{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMStringList
       (js_item, item, js_contains, contains, js_getLength, getLength,
        DOMStringList, castToDOMStringList, gTypeDOMStringList)
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
        DOMStringList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.item Mozilla DOMStringList.item documentation> 
item ::
     (MonadIO m, FromJSString result) =>
       DOMStringList -> Word -> m (Maybe result)
item self index
  = liftIO (fromMaybeJSString <$> (js_item (self) index))
 
foreign import javascript unsafe "($1[\"contains\"]($2) ? 1 : 0)"
        js_contains :: DOMStringList -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.contains Mozilla DOMStringList.contains documentation> 
contains ::
         (MonadIO m, ToJSString string) => DOMStringList -> string -> m Bool
contains self string
  = liftIO (js_contains (self) (toJSString string))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        DOMStringList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMStringList.length Mozilla DOMStringList.length documentation> 
getLength :: (MonadIO m) => DOMStringList -> m Word
getLength self = liftIO (js_getLength (self))