{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLActiveInfo
       (js_getSize, getSize, js_getType, getType, js_getName, getName,
        WebGLActiveInfo, castToWebGLActiveInfo, gTypeWebGLActiveInfo)
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
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        WebGLActiveInfo -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.size Mozilla WebGLActiveInfo.size documentation> 
getSize :: (MonadIO m) => WebGLActiveInfo -> m Int
getSize self = liftIO (js_getSize (self))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        WebGLActiveInfo -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.type Mozilla WebGLActiveInfo.type documentation> 
getType :: (MonadIO m) => WebGLActiveInfo -> m Word
getType self = liftIO (js_getType (self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        WebGLActiveInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.name Mozilla WebGLActiveInfo.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => WebGLActiveInfo -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))