{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLActiveInfo
       (ghcjs_dom_web_gl_active_info_get_size, webGLActiveInfoGetSize,
        ghcjs_dom_web_gl_active_info_get_name, webGLActiveInfoGetName,
        WebGLActiveInfo, IsWebGLActiveInfo, castToWebGLActiveInfo,
        gTypeWebGLActiveInfo, toWebGLActiveInfo)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_web_gl_active_info_get_size ::
        JSRef WebGLActiveInfo -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.size Mozilla WebGLActiveInfo.size documentation> 
webGLActiveInfoGetSize ::
                       (MonadIO m, IsWebGLActiveInfo self) => self -> m Int
webGLActiveInfoGetSize self
  = liftIO
      (ghcjs_dom_web_gl_active_info_get_size
         (unWebGLActiveInfo (toWebGLActiveInfo self)))
 
foreign import javascript unsafe "$1[\"name\"]"
        ghcjs_dom_web_gl_active_info_get_name ::
        JSRef WebGLActiveInfo -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLActiveInfo.name Mozilla WebGLActiveInfo.name documentation> 
webGLActiveInfoGetName ::
                       (MonadIO m, IsWebGLActiveInfo self, FromJSString result) =>
                         self -> m result
webGLActiveInfoGetName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_gl_active_info_get_name
            (unWebGLActiveInfo (toWebGLActiveInfo self))))
#else
module GHCJS.DOM.WebGLActiveInfo (
  ) where
#endif
