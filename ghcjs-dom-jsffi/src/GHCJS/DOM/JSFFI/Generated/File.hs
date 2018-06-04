{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.File
       (js_newFile, newFile, js_getName, getName, js_getLastModified,
        getLastModified, File(..), gTypeFile)
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
 
foreign import javascript unsafe "new window[\"File\"]($1, $2, $3)"
        js_newFile ::
        JSVal -> JSString -> Optional FilePropertyBag -> IO File

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File Mozilla File documentation> 
newFile ::
        (MonadIO m, IsBlobPart fileBits, ToJSString fileName) =>
          [fileBits] -> fileName -> Maybe FilePropertyBag -> m File
newFile fileBits fileName options
  = liftIO
      (toJSVal fileBits >>= \ fileBits' -> js_newFile fileBits'
         (toJSString fileName)
         (maybeToOptional options))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        File -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.name Mozilla File.name documentation> 
getName :: (MonadIO m, FromJSString result) => File -> m result
getName self = liftIO (fromJSString <$> (js_getName self))
 
foreign import javascript unsafe "$1[\"lastModified\"]"
        js_getLastModified :: File -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/File.lastModified Mozilla File.lastModified documentation> 
getLastModified :: (MonadIO m) => File -> m Int64
getLastModified self = liftIO (round <$> (js_getLastModified self))