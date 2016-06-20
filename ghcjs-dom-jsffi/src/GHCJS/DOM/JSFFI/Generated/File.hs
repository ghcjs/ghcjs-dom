{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.File
       (js_getName, getName, js_getLastModifiedDate, getLastModifiedDate,
        File, castToFile, gTypeFile)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        File -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.name Mozilla File.name documentation> 
getName :: (MonadIO m, FromJSString result) => File -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"lastModifiedDate\"]"
        js_getLastModifiedDate :: File -> IO (Nullable Date)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModifiedDate Mozilla File.lastModifiedDate documentation> 
getLastModifiedDate :: (MonadIO m) => File -> m (Maybe Date)
getLastModifiedDate self
  = liftIO (nullableToMaybe <$> (js_getLastModifiedDate (self)))