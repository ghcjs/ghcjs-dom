{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FileList
       (js_item, item, js_getLength, getLength, FileList, castToFileList,
        gTypeFileList)
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
        FileList -> Word -> IO (Nullable File)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.item Mozilla FileList.item documentation> 
item :: (MonadIO m) => FileList -> Word -> m (Maybe File)
item self index
  = liftIO (nullableToMaybe <$> (js_item (self) index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        FileList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.length Mozilla FileList.length documentation> 
getLength :: (MonadIO m) => FileList -> m Word
getLength self = liftIO (js_getLength (self))