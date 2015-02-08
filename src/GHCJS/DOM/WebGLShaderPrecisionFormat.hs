{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLShaderPrecisionFormat
       (ghcjs_dom_web_gl_shader_precision_format_get_range_min,
        webGLShaderPrecisionFormatGetRangeMin,
        ghcjs_dom_web_gl_shader_precision_format_get_range_max,
        webGLShaderPrecisionFormatGetRangeMax,
        ghcjs_dom_web_gl_shader_precision_format_get_precision,
        webGLShaderPrecisionFormatGetPrecision, WebGLShaderPrecisionFormat,
        IsWebGLShaderPrecisionFormat, castToWebGLShaderPrecisionFormat,
        gTypeWebGLShaderPrecisionFormat, toWebGLShaderPrecisionFormat)
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

 
foreign import javascript unsafe "$1[\"rangeMin\"]"
        ghcjs_dom_web_gl_shader_precision_format_get_range_min ::
        JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMin Mozilla WebGLShaderPrecisionFormat.rangeMin documentation> 
webGLShaderPrecisionFormatGetRangeMin ::
                                      (MonadIO m, IsWebGLShaderPrecisionFormat self) =>
                                        self -> m Int
webGLShaderPrecisionFormatGetRangeMin self
  = liftIO
      (ghcjs_dom_web_gl_shader_precision_format_get_range_min
         (unWebGLShaderPrecisionFormat (toWebGLShaderPrecisionFormat self)))
 
foreign import javascript unsafe "$1[\"rangeMax\"]"
        ghcjs_dom_web_gl_shader_precision_format_get_range_max ::
        JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMax Mozilla WebGLShaderPrecisionFormat.rangeMax documentation> 
webGLShaderPrecisionFormatGetRangeMax ::
                                      (MonadIO m, IsWebGLShaderPrecisionFormat self) =>
                                        self -> m Int
webGLShaderPrecisionFormatGetRangeMax self
  = liftIO
      (ghcjs_dom_web_gl_shader_precision_format_get_range_max
         (unWebGLShaderPrecisionFormat (toWebGLShaderPrecisionFormat self)))
 
foreign import javascript unsafe "$1[\"precision\"]"
        ghcjs_dom_web_gl_shader_precision_format_get_precision ::
        JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.precision Mozilla WebGLShaderPrecisionFormat.precision documentation> 
webGLShaderPrecisionFormatGetPrecision ::
                                       (MonadIO m, IsWebGLShaderPrecisionFormat self) =>
                                         self -> m Int
webGLShaderPrecisionFormatGetPrecision self
  = liftIO
      (ghcjs_dom_web_gl_shader_precision_format_get_precision
         (unWebGLShaderPrecisionFormat (toWebGLShaderPrecisionFormat self)))
#else
module GHCJS.DOM.WebGLShaderPrecisionFormat (
  ) where
#endif
