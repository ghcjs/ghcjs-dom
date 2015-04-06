{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLActiveInfo
       (js_getSize, getSize, js_getName, getName, WebGLActiveInfo,
        castToWebGLActiveInfo, gTypeWebGLActiveInfo)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef WebGLActiveInfo -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.size Mozilla WebGLActiveInfo.size documentation> 
getSize :: (MonadIO m) => WebGLActiveInfo -> m Int
getSize self = liftIO (js_getSize (unWebGLActiveInfo self))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef WebGLActiveInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.name Mozilla WebGLActiveInfo.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => WebGLActiveInfo -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unWebGLActiveInfo self)))
#else
module GHCJS.DOM.WebGLActiveInfo (
  ) where
#endif
