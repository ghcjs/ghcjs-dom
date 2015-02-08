{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLDebugShaders
       (ghcjs_dom_web_gl_debug_shaders_get_translated_shader_source,
        webGLDebugShadersGetTranslatedShaderSource, WebGLDebugShaders,
        IsWebGLDebugShaders, castToWebGLDebugShaders,
        gTypeWebGLDebugShaders, toWebGLDebugShaders)
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

 
foreign import javascript unsafe
        "$1[\"getTranslatedShaderSource\"]($2)"
        ghcjs_dom_web_gl_debug_shaders_get_translated_shader_source ::
        JSRef WebGLDebugShaders -> JSRef WebGLShader -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.translatedShaderSource Mozilla WebGLDebugShaders.translatedShaderSource documentation> 
webGLDebugShadersGetTranslatedShaderSource ::
                                           (MonadIO m, IsWebGLDebugShaders self,
                                            IsWebGLShader shader, FromJSString result) =>
                                             self -> Maybe shader -> m result
webGLDebugShadersGetTranslatedShaderSource self shader
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_web_gl_debug_shaders_get_translated_shader_source
            (unWebGLDebugShaders (toWebGLDebugShaders self))
            (maybe jsNull (unWebGLShader . toWebGLShader) shader)))
#else
module GHCJS.DOM.WebGLDebugShaders (
  ) where
#endif
