{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGLRenderingContextBase
       (js_activeTexture, activeTexture, js_attachShader, attachShader,
        js_bindAttribLocation, bindAttribLocation, js_bindBuffer,
        bindBuffer, js_bindFramebuffer, bindFramebuffer,
        js_bindRenderbuffer, bindRenderbuffer, js_bindTexture, bindTexture,
        js_blendColor, blendColor, js_blendEquation, blendEquation,
        js_blendEquationSeparate, blendEquationSeparate, js_blendFunc,
        blendFunc, js_blendFuncSeparate, blendFuncSeparate, js_bufferData,
        bufferData, js_bufferDataPtr, bufferDataPtr, js_bufferSubData,
        bufferSubData, js_checkFramebufferStatus, checkFramebufferStatus,
        checkFramebufferStatus_, js_clear, clear, js_clearColor,
        clearColor, js_clearDepth, clearDepth, js_clearStencil,
        clearStencil, js_colorMask, colorMask, js_compileShader,
        compileShader, js_compressedTexImage2D, compressedTexImage2D,
        js_compressedTexSubImage2D, compressedTexSubImage2D,
        js_copyTexImage2D, copyTexImage2D, js_copyTexSubImage2D,
        copyTexSubImage2D, js_createBuffer, createBuffer, createBuffer_,
        js_createFramebuffer, createFramebuffer, createFramebuffer_,
        js_createProgram, createProgram, createProgram_,
        js_createRenderbuffer, createRenderbuffer, createRenderbuffer_,
        js_createShader, createShader, createShader_, js_createTexture,
        createTexture, createTexture_, js_cullFace, cullFace,
        js_deleteBuffer, deleteBuffer, js_deleteFramebuffer,
        deleteFramebuffer, js_deleteProgram, deleteProgram,
        js_deleteRenderbuffer, deleteRenderbuffer, js_deleteShader,
        deleteShader, js_deleteTexture, deleteTexture, js_depthFunc,
        depthFunc, js_depthMask, depthMask, js_depthRange, depthRange,
        js_detachShader, detachShader, js_disable, disable,
        js_disableVertexAttribArray, disableVertexAttribArray,
        js_drawArrays, drawArrays, js_drawElements, drawElements,
        js_enable, enable, js_enableVertexAttribArray,
        enableVertexAttribArray, js_finish, finish, js_flush, flush,
        js_framebufferRenderbuffer, framebufferRenderbuffer,
        js_framebufferTexture2D, framebufferTexture2D, js_frontFace,
        frontFace, js_generateMipmap, generateMipmap, js_getActiveAttrib,
        getActiveAttrib, getActiveAttrib_, js_getActiveUniform,
        getActiveUniform, getActiveUniform_, js_getAttachedShaders,
        getAttachedShaders, getAttachedShaders_, js_getAttribLocation,
        getAttribLocation, getAttribLocation_, js_getBufferParameter,
        getBufferParameter, getBufferParameter_, js_getContextAttributes,
        getContextAttributes, getContextAttributes_,
        getContextAttributesUnsafe, getContextAttributesUnchecked,
        js_getError, getError, getError_, js_getSupportedExtensions,
        getSupportedExtensions, getSupportedExtensions_, js_getExtension,
        getExtension, getExtension_, getExtensionUnsafe,
        getExtensionUnchecked, js_getFramebufferAttachmentParameter,
        getFramebufferAttachmentParameter,
        getFramebufferAttachmentParameter_, js_getParameter, getParameter,
        getParameter_, js_getProgramParameter, getProgramParameter,
        getProgramParameter_, js_getProgramInfoLog, getProgramInfoLog,
        getProgramInfoLog_, getProgramInfoLogUnsafe,
        getProgramInfoLogUnchecked, js_getRenderbufferParameter,
        getRenderbufferParameter, getRenderbufferParameter_,
        js_getShaderParameter, getShaderParameter, getShaderParameter_,
        js_getShaderInfoLog, getShaderInfoLog, getShaderInfoLog_,
        getShaderInfoLogUnsafe, getShaderInfoLogUnchecked,
        js_getShaderPrecisionFormat, getShaderPrecisionFormat,
        getShaderPrecisionFormat_, js_getShaderSource, getShaderSource,
        getShaderSource_, getShaderSourceUnsafe, getShaderSourceUnchecked,
        js_getTexParameter, getTexParameter, getTexParameter_,
        js_getUniform, getUniform, getUniform_, js_getUniformLocation,
        getUniformLocation, getUniformLocation_, js_getVertexAttrib,
        getVertexAttrib, getVertexAttrib_, js_getVertexAttribOffset,
        getVertexAttribOffset, getVertexAttribOffset_, js_hint, hint,
        js_isBuffer, isBuffer, isBuffer_, js_isContextLost, isContextLost,
        isContextLost_, js_isEnabled, isEnabled, isEnabled_,
        js_isFramebuffer, isFramebuffer, isFramebuffer_, js_isProgram,
        isProgram, isProgram_, js_isRenderbuffer, isRenderbuffer,
        isRenderbuffer_, js_isShader, isShader, isShader_, js_isTexture,
        isTexture, isTexture_, js_lineWidth, lineWidth, js_linkProgram,
        linkProgram, js_pixelStorei, pixelStorei, js_polygonOffset,
        polygonOffset, js_readPixels, readPixels, js_releaseShaderCompiler,
        releaseShaderCompiler, js_renderbufferStorage, renderbufferStorage,
        js_sampleCoverage, sampleCoverage, js_scissor, scissor,
        js_shaderSource, shaderSource, js_stencilFunc, stencilFunc,
        js_stencilFuncSeparate, stencilFuncSeparate, js_stencilMask,
        stencilMask, js_stencilMaskSeparate, stencilMaskSeparate,
        js_stencilOp, stencilOp, js_stencilOpSeparate, stencilOpSeparate,
        js_texParameterf, texParameterf, js_texParameteri, texParameteri,
        js_texImage2DView, texImage2DView, js_texImage2D, texImage2D,
        js_texSubImage2DView, texSubImage2DView, js_texSubImage2D,
        texSubImage2D, js_uniform1f, uniform1f, js_uniform2f, uniform2f,
        js_uniform3f, uniform3f, js_uniform4f, uniform4f, js_uniform1i,
        uniform1i, js_uniform2i, uniform2i, js_uniform3i, uniform3i,
        js_uniform4i, uniform4i, js_uniform1fv, uniform1fv, js_uniform2fv,
        uniform2fv, js_uniform3fv, uniform3fv, js_uniform4fv, uniform4fv,
        js_uniform1iv, uniform1iv, js_uniform2iv, uniform2iv,
        js_uniform3iv, uniform3iv, js_uniform4iv, uniform4iv,
        js_uniformMatrix2fv, uniformMatrix2fv, js_uniformMatrix3fv,
        uniformMatrix3fv, js_uniformMatrix4fv, uniformMatrix4fv,
        js_useProgram, useProgram, js_validateProgram, validateProgram,
        js_vertexAttrib1f, vertexAttrib1f, js_vertexAttrib2f,
        vertexAttrib2f, js_vertexAttrib3f, vertexAttrib3f,
        js_vertexAttrib4f, vertexAttrib4f, js_vertexAttrib1fv,
        vertexAttrib1fv, js_vertexAttrib2fv, vertexAttrib2fv,
        js_vertexAttrib3fv, vertexAttrib3fv, js_vertexAttrib4fv,
        vertexAttrib4fv, js_vertexAttribPointer, vertexAttribPointer,
        js_viewport, viewport, pattern DEPTH_BUFFER_BIT,
        pattern STENCIL_BUFFER_BIT, pattern COLOR_BUFFER_BIT,
        pattern POINTS, pattern LINES, pattern LINE_LOOP,
        pattern LINE_STRIP, pattern TRIANGLES, pattern TRIANGLE_STRIP,
        pattern TRIANGLE_FAN, pattern ZERO, pattern ONE, pattern SRC_COLOR,
        pattern ONE_MINUS_SRC_COLOR, pattern SRC_ALPHA,
        pattern ONE_MINUS_SRC_ALPHA, pattern DST_ALPHA,
        pattern ONE_MINUS_DST_ALPHA, pattern DST_COLOR,
        pattern ONE_MINUS_DST_COLOR, pattern SRC_ALPHA_SATURATE,
        pattern FUNC_ADD, pattern BLEND_EQUATION,
        pattern BLEND_EQUATION_RGB, pattern BLEND_EQUATION_ALPHA,
        pattern FUNC_SUBTRACT, pattern FUNC_REVERSE_SUBTRACT,
        pattern BLEND_DST_RGB, pattern BLEND_SRC_RGB,
        pattern BLEND_DST_ALPHA, pattern BLEND_SRC_ALPHA,
        pattern CONSTANT_COLOR, pattern ONE_MINUS_CONSTANT_COLOR,
        pattern CONSTANT_ALPHA, pattern ONE_MINUS_CONSTANT_ALPHA,
        pattern BLEND_COLOR, pattern ARRAY_BUFFER,
        pattern ELEMENT_ARRAY_BUFFER, pattern ARRAY_BUFFER_BINDING,
        pattern ELEMENT_ARRAY_BUFFER_BINDING, pattern STREAM_DRAW,
        pattern STATIC_DRAW, pattern DYNAMIC_DRAW, pattern BUFFER_SIZE,
        pattern BUFFER_USAGE, pattern CURRENT_VERTEX_ATTRIB, pattern FRONT,
        pattern BACK, pattern FRONT_AND_BACK, pattern TEXTURE_2D,
        pattern CULL_FACE, pattern BLEND, pattern DITHER,
        pattern STENCIL_TEST, pattern DEPTH_TEST, pattern SCISSOR_TEST,
        pattern POLYGON_OFFSET_FILL, pattern SAMPLE_ALPHA_TO_COVERAGE,
        pattern SAMPLE_COVERAGE, pattern NO_ERROR, pattern INVALID_ENUM,
        pattern INVALID_VALUE, pattern INVALID_OPERATION,
        pattern OUT_OF_MEMORY, pattern CW, pattern CCW, pattern LINE_WIDTH,
        pattern ALIASED_POINT_SIZE_RANGE, pattern ALIASED_LINE_WIDTH_RANGE,
        pattern CULL_FACE_MODE, pattern FRONT_FACE, pattern DEPTH_RANGE,
        pattern DEPTH_WRITEMASK, pattern DEPTH_CLEAR_VALUE,
        pattern DEPTH_FUNC, pattern STENCIL_CLEAR_VALUE,
        pattern STENCIL_FUNC, pattern STENCIL_FAIL,
        pattern STENCIL_PASS_DEPTH_FAIL, pattern STENCIL_PASS_DEPTH_PASS,
        pattern STENCIL_REF, pattern STENCIL_VALUE_MASK,
        pattern STENCIL_WRITEMASK, pattern STENCIL_BACK_FUNC,
        pattern STENCIL_BACK_FAIL, pattern STENCIL_BACK_PASS_DEPTH_FAIL,
        pattern STENCIL_BACK_PASS_DEPTH_PASS, pattern STENCIL_BACK_REF,
        pattern STENCIL_BACK_VALUE_MASK, pattern STENCIL_BACK_WRITEMASK,
        pattern VIEWPORT, pattern SCISSOR_BOX, pattern COLOR_CLEAR_VALUE,
        pattern COLOR_WRITEMASK, pattern UNPACK_ALIGNMENT,
        pattern PACK_ALIGNMENT, pattern MAX_TEXTURE_SIZE,
        pattern MAX_VIEWPORT_DIMS, pattern SUBPIXEL_BITS, pattern RED_BITS,
        pattern GREEN_BITS, pattern BLUE_BITS, pattern ALPHA_BITS,
        pattern DEPTH_BITS, pattern STENCIL_BITS,
        pattern POLYGON_OFFSET_UNITS, pattern POLYGON_OFFSET_FACTOR,
        pattern TEXTURE_BINDING_2D, pattern SAMPLE_BUFFERS,
        pattern SAMPLES, pattern SAMPLE_COVERAGE_VALUE,
        pattern SAMPLE_COVERAGE_INVERT, pattern COMPRESSED_TEXTURE_FORMATS,
        pattern DONT_CARE, pattern FASTEST, pattern NICEST,
        pattern GENERATE_MIPMAP_HINT, pattern BYTE, pattern UNSIGNED_BYTE,
        pattern SHORT, pattern UNSIGNED_SHORT, pattern INT,
        pattern UNSIGNED_INT, pattern FLOAT, pattern DEPTH_COMPONENT,
        pattern ALPHA, pattern RGB, pattern RGBA, pattern LUMINANCE,
        pattern LUMINANCE_ALPHA, pattern UNSIGNED_SHORT_4_4_4_4,
        pattern UNSIGNED_SHORT_5_5_5_1, pattern UNSIGNED_SHORT_5_6_5,
        pattern FRAGMENT_SHADER, pattern VERTEX_SHADER,
        pattern MAX_VERTEX_ATTRIBS, pattern MAX_VERTEX_UNIFORM_VECTORS,
        pattern MAX_VARYING_VECTORS,
        pattern MAX_COMBINED_TEXTURE_IMAGE_UNITS,
        pattern MAX_VERTEX_TEXTURE_IMAGE_UNITS,
        pattern MAX_TEXTURE_IMAGE_UNITS,
        pattern MAX_FRAGMENT_UNIFORM_VECTORS, pattern SHADER_TYPE,
        pattern DELETE_STATUS, pattern LINK_STATUS,
        pattern VALIDATE_STATUS, pattern ATTACHED_SHADERS,
        pattern ACTIVE_UNIFORMS, pattern ACTIVE_ATTRIBUTES,
        pattern SHADING_LANGUAGE_VERSION, pattern CURRENT_PROGRAM,
        pattern NEVER, pattern LESS, pattern EQUAL, pattern LEQUAL,
        pattern GREATER, pattern NOTEQUAL, pattern GEQUAL, pattern ALWAYS,
        pattern KEEP, pattern REPLACE, pattern INCR, pattern DECR,
        pattern INVERT, pattern INCR_WRAP, pattern DECR_WRAP,
        pattern VENDOR, pattern RENDERER, pattern VERSION, pattern NEAREST,
        pattern LINEAR, pattern NEAREST_MIPMAP_NEAREST,
        pattern LINEAR_MIPMAP_NEAREST, pattern NEAREST_MIPMAP_LINEAR,
        pattern LINEAR_MIPMAP_LINEAR, pattern TEXTURE_MAG_FILTER,
        pattern TEXTURE_MIN_FILTER, pattern TEXTURE_WRAP_S,
        pattern TEXTURE_WRAP_T, pattern TEXTURE, pattern TEXTURE_CUBE_MAP,
        pattern TEXTURE_BINDING_CUBE_MAP,
        pattern TEXTURE_CUBE_MAP_POSITIVE_X,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_X,
        pattern TEXTURE_CUBE_MAP_POSITIVE_Y,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_Y,
        pattern TEXTURE_CUBE_MAP_POSITIVE_Z,
        pattern TEXTURE_CUBE_MAP_NEGATIVE_Z,
        pattern MAX_CUBE_MAP_TEXTURE_SIZE, pattern TEXTURE0,
        pattern TEXTURE1, pattern TEXTURE2, pattern TEXTURE3,
        pattern TEXTURE4, pattern TEXTURE5, pattern TEXTURE6,
        pattern TEXTURE7, pattern TEXTURE8, pattern TEXTURE9,
        pattern TEXTURE10, pattern TEXTURE11, pattern TEXTURE12,
        pattern TEXTURE13, pattern TEXTURE14, pattern TEXTURE15,
        pattern TEXTURE16, pattern TEXTURE17, pattern TEXTURE18,
        pattern TEXTURE19, pattern TEXTURE20, pattern TEXTURE21,
        pattern TEXTURE22, pattern TEXTURE23, pattern TEXTURE24,
        pattern TEXTURE25, pattern TEXTURE26, pattern TEXTURE27,
        pattern TEXTURE28, pattern TEXTURE29, pattern TEXTURE30,
        pattern TEXTURE31, pattern ACTIVE_TEXTURE, pattern REPEAT,
        pattern CLAMP_TO_EDGE, pattern MIRRORED_REPEAT, pattern FLOAT_VEC2,
        pattern FLOAT_VEC3, pattern FLOAT_VEC4, pattern INT_VEC2,
        pattern INT_VEC3, pattern INT_VEC4, pattern BOOL,
        pattern BOOL_VEC2, pattern BOOL_VEC3, pattern BOOL_VEC4,
        pattern FLOAT_MAT2, pattern FLOAT_MAT3, pattern FLOAT_MAT4,
        pattern SAMPLER_2D, pattern SAMPLER_CUBE,
        pattern VERTEX_ATTRIB_ARRAY_ENABLED,
        pattern VERTEX_ATTRIB_ARRAY_SIZE,
        pattern VERTEX_ATTRIB_ARRAY_STRIDE,
        pattern VERTEX_ATTRIB_ARRAY_TYPE,
        pattern VERTEX_ATTRIB_ARRAY_NORMALIZED,
        pattern VERTEX_ATTRIB_ARRAY_POINTER,
        pattern VERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
        pattern IMPLEMENTATION_COLOR_READ_TYPE,
        pattern IMPLEMENTATION_COLOR_READ_FORMAT, pattern COMPILE_STATUS,
        pattern LOW_FLOAT, pattern MEDIUM_FLOAT, pattern HIGH_FLOAT,
        pattern LOW_INT, pattern MEDIUM_INT, pattern HIGH_INT,
        pattern FRAMEBUFFER, pattern RENDERBUFFER, pattern RGBA4,
        pattern RGB5_A1, pattern RGB565, pattern DEPTH_COMPONENT16,
        pattern STENCIL_INDEX, pattern STENCIL_INDEX8,
        pattern DEPTH_STENCIL, pattern RENDERBUFFER_WIDTH,
        pattern RENDERBUFFER_HEIGHT, pattern RENDERBUFFER_INTERNAL_FORMAT,
        pattern RENDERBUFFER_RED_SIZE, pattern RENDERBUFFER_GREEN_SIZE,
        pattern RENDERBUFFER_BLUE_SIZE, pattern RENDERBUFFER_ALPHA_SIZE,
        pattern RENDERBUFFER_DEPTH_SIZE, pattern RENDERBUFFER_STENCIL_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
        pattern FRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE,
        pattern COLOR_ATTACHMENT0, pattern DEPTH_ATTACHMENT,
        pattern STENCIL_ATTACHMENT, pattern DEPTH_STENCIL_ATTACHMENT,
        pattern NONE, pattern FRAMEBUFFER_COMPLETE,
        pattern FRAMEBUFFER_INCOMPLETE_ATTACHMENT,
        pattern FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
        pattern FRAMEBUFFER_INCOMPLETE_DIMENSIONS,
        pattern FRAMEBUFFER_UNSUPPORTED, pattern FRAMEBUFFER_BINDING,
        pattern RENDERBUFFER_BINDING, pattern MAX_RENDERBUFFER_SIZE,
        pattern INVALID_FRAMEBUFFER_OPERATION, pattern UNPACK_FLIP_Y_WEBGL,
        pattern UNPACK_PREMULTIPLY_ALPHA_WEBGL, pattern CONTEXT_LOST_WEBGL,
        pattern UNPACK_COLORSPACE_CONVERSION_WEBGL,
        pattern BROWSER_DEFAULT_WEBGL, js_getCanvas, getCanvas,
        js_getDrawingBufferWidth, getDrawingBufferWidth,
        js_getDrawingBufferHeight, getDrawingBufferHeight,
        WebGLRenderingContextBase(..), gTypeWebGLRenderingContextBase,
        IsWebGLRenderingContextBase, toWebGLRenderingContextBase)
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
 
foreign import javascript unsafe "$1[\"activeTexture\"]($2)"
        js_activeTexture :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.activeTexture Mozilla WebGLRenderingContextBase.activeTexture documentation> 
activeTexture ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
activeTexture self texture
  = liftIO
      (js_activeTexture (toWebGLRenderingContextBase self) texture)
 
foreign import javascript unsafe "$1[\"attachShader\"]($2, $3)"
        js_attachShader ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> Optional WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.attachShader Mozilla WebGLRenderingContextBase.attachShader documentation> 
attachShader ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLProgram -> Maybe WebGLShader -> m ()
attachShader self program shader
  = liftIO
      (js_attachShader (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         (maybeToOptional shader))
 
foreign import javascript unsafe
        "$1[\"bindAttribLocation\"]($2, $3,\n$4)" js_bindAttribLocation ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> GLuint -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindAttribLocation Mozilla WebGLRenderingContextBase.bindAttribLocation documentation> 
bindAttribLocation ::
                   (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> GLuint -> name -> m ()
bindAttribLocation self program index name
  = liftIO
      (js_bindAttribLocation (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         index
         (toJSString name))
 
foreign import javascript unsafe "$1[\"bindBuffer\"]($2, $3)"
        js_bindBuffer ::
        WebGLRenderingContextBase ->
          GLenum -> Optional WebGLBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindBuffer Mozilla WebGLRenderingContextBase.bindBuffer documentation> 
bindBuffer ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> Maybe WebGLBuffer -> m ()
bindBuffer self target buffer
  = liftIO
      (js_bindBuffer (toWebGLRenderingContextBase self) target
         (maybeToOptional buffer))
 
foreign import javascript unsafe "$1[\"bindFramebuffer\"]($2, $3)"
        js_bindFramebuffer ::
        WebGLRenderingContextBase ->
          GLenum -> Optional WebGLFramebuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindFramebuffer Mozilla WebGLRenderingContextBase.bindFramebuffer documentation> 
bindFramebuffer ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> GLenum -> Maybe WebGLFramebuffer -> m ()
bindFramebuffer self target framebuffer
  = liftIO
      (js_bindFramebuffer (toWebGLRenderingContextBase self) target
         (maybeToOptional framebuffer))
 
foreign import javascript unsafe "$1[\"bindRenderbuffer\"]($2, $3)"
        js_bindRenderbuffer ::
        WebGLRenderingContextBase ->
          GLenum -> Optional WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindRenderbuffer Mozilla WebGLRenderingContextBase.bindRenderbuffer documentation> 
bindRenderbuffer ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> GLenum -> Maybe WebGLRenderbuffer -> m ()
bindRenderbuffer self target renderbuffer
  = liftIO
      (js_bindRenderbuffer (toWebGLRenderingContextBase self) target
         (maybeToOptional renderbuffer))
 
foreign import javascript unsafe "$1[\"bindTexture\"]($2, $3)"
        js_bindTexture ::
        WebGLRenderingContextBase ->
          GLenum -> Optional WebGLTexture -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bindTexture Mozilla WebGLRenderingContextBase.bindTexture documentation> 
bindTexture ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> Maybe WebGLTexture -> m ()
bindTexture self target texture
  = liftIO
      (js_bindTexture (toWebGLRenderingContextBase self) target
         (maybeToOptional texture))
 
foreign import javascript unsafe
        "$1[\"blendColor\"]($2, $3, $4, $5)" js_blendColor ::
        WebGLRenderingContextBase ->
          GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendColor Mozilla WebGLRenderingContextBase.blendColor documentation> 
blendColor ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> m ()
blendColor self red green blue alpha
  = liftIO
      (js_blendColor (toWebGLRenderingContextBase self) red green blue
         alpha)
 
foreign import javascript unsafe "$1[\"blendEquation\"]($2)"
        js_blendEquation :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendEquation Mozilla WebGLRenderingContextBase.blendEquation documentation> 
blendEquation ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
blendEquation self mode
  = liftIO (js_blendEquation (toWebGLRenderingContextBase self) mode)
 
foreign import javascript unsafe
        "$1[\"blendEquationSeparate\"]($2,\n$3)" js_blendEquationSeparate
        :: WebGLRenderingContextBase -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendEquationSeparate Mozilla WebGLRenderingContextBase.blendEquationSeparate documentation> 
blendEquationSeparate ::
                      (MonadIO m, IsWebGLRenderingContextBase self) =>
                        self -> GLenum -> GLenum -> m ()
blendEquationSeparate self modeRGB modeAlpha
  = liftIO
      (js_blendEquationSeparate (toWebGLRenderingContextBase self)
         modeRGB
         modeAlpha)
 
foreign import javascript unsafe "$1[\"blendFunc\"]($2, $3)"
        js_blendFunc ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendFunc Mozilla WebGLRenderingContextBase.blendFunc documentation> 
blendFunc ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> GLenum -> m ()
blendFunc self sfactor dfactor
  = liftIO
      (js_blendFunc (toWebGLRenderingContextBase self) sfactor dfactor)
 
foreign import javascript unsafe
        "$1[\"blendFuncSeparate\"]($2, $3,\n$4, $5)" js_blendFuncSeparate
        ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.blendFuncSeparate Mozilla WebGLRenderingContextBase.blendFuncSeparate documentation> 
blendFuncSeparate ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
blendFuncSeparate self srcRGB dstRGB srcAlpha dstAlpha
  = liftIO
      (js_blendFuncSeparate (toWebGLRenderingContextBase self) srcRGB
         dstRGB
         srcAlpha
         dstAlpha)
 
foreign import javascript unsafe "$1[\"bufferData\"]($2, $3, $4)"
        js_bufferData ::
        WebGLRenderingContextBase ->
          GLenum -> Optional BufferDataSource -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferData Mozilla WebGLRenderingContextBase.bufferData documentation> 
bufferData ::
           (MonadIO m, IsWebGLRenderingContextBase self,
            IsBufferDataSource data') =>
             self -> GLenum -> Maybe data' -> GLenum -> m ()
bufferData self target data' usage
  = liftIO
      (js_bufferData (toWebGLRenderingContextBase self) target
         (maybeToOptional (fmap toBufferDataSource data'))
         usage)
 
foreign import javascript unsafe "$1[\"bufferData\"]($2, $3, $4)"
        js_bufferDataPtr ::
        WebGLRenderingContextBase -> GLenum -> Double -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferData Mozilla WebGLRenderingContextBase.bufferData documentation> 
bufferDataPtr ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLsizeiptr -> GLenum -> m ()
bufferDataPtr self target size usage
  = liftIO
      (js_bufferDataPtr (toWebGLRenderingContextBase self) target
         (fromIntegral size)
         usage)
 
foreign import javascript unsafe
        "$1[\"bufferSubData\"]($2, $3, $4)" js_bufferSubData ::
        WebGLRenderingContextBase ->
          GLenum -> Double -> Optional BufferDataSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.bufferSubData Mozilla WebGLRenderingContextBase.bufferSubData documentation> 
bufferSubData ::
              (MonadIO m, IsWebGLRenderingContextBase self,
               IsBufferDataSource data') =>
                self -> GLenum -> GLintptr -> Maybe data' -> m ()
bufferSubData self target offset data'
  = liftIO
      (js_bufferSubData (toWebGLRenderingContextBase self) target
         (fromIntegral offset)
         (maybeToOptional (fmap toBufferDataSource data')))
 
foreign import javascript unsafe
        "$1[\"checkFramebufferStatus\"]($2)" js_checkFramebufferStatus ::
        WebGLRenderingContextBase -> GLenum -> IO GLenum

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.checkFramebufferStatus Mozilla WebGLRenderingContextBase.checkFramebufferStatus documentation> 
checkFramebufferStatus ::
                       (MonadIO m, IsWebGLRenderingContextBase self) =>
                         self -> GLenum -> m GLenum
checkFramebufferStatus self target
  = liftIO
      (js_checkFramebufferStatus (toWebGLRenderingContextBase self)
         target)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.checkFramebufferStatus Mozilla WebGLRenderingContextBase.checkFramebufferStatus documentation> 
checkFramebufferStatus_ ::
                        (MonadIO m, IsWebGLRenderingContextBase self) =>
                          self -> GLenum -> m ()
checkFramebufferStatus_ self target
  = liftIO
      (void
         (js_checkFramebufferStatus (toWebGLRenderingContextBase self)
            target))
 
foreign import javascript unsafe "$1[\"clear\"]($2)" js_clear ::
        WebGLRenderingContextBase -> GLbitfield -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clear Mozilla WebGLRenderingContextBase.clear documentation> 
clear ::
      (MonadIO m, IsWebGLRenderingContextBase self) =>
        self -> GLbitfield -> m ()
clear self mask
  = liftIO (js_clear (toWebGLRenderingContextBase self) mask)
 
foreign import javascript unsafe
        "$1[\"clearColor\"]($2, $3, $4, $5)" js_clearColor ::
        WebGLRenderingContextBase ->
          GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearColor Mozilla WebGLRenderingContextBase.clearColor documentation> 
clearColor ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> m ()
clearColor self red green blue alpha
  = liftIO
      (js_clearColor (toWebGLRenderingContextBase self) red green blue
         alpha)
 
foreign import javascript unsafe "$1[\"clearDepth\"]($2)"
        js_clearDepth :: WebGLRenderingContextBase -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearDepth Mozilla WebGLRenderingContextBase.clearDepth documentation> 
clearDepth ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> m ()
clearDepth self depth
  = liftIO (js_clearDepth (toWebGLRenderingContextBase self) depth)
 
foreign import javascript unsafe "$1[\"clearStencil\"]($2)"
        js_clearStencil :: WebGLRenderingContextBase -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.clearStencil Mozilla WebGLRenderingContextBase.clearStencil documentation> 
clearStencil ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> GLint -> m ()
clearStencil self s
  = liftIO (js_clearStencil (toWebGLRenderingContextBase self) s)
 
foreign import javascript unsafe
        "$1[\"colorMask\"]($2, $3, $4, $5)" js_colorMask ::
        WebGLRenderingContextBase ->
          GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.colorMask Mozilla WebGLRenderingContextBase.colorMask documentation> 
colorMask ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> m ()
colorMask self red green blue alpha
  = liftIO
      (js_colorMask (toWebGLRenderingContextBase self) red green blue
         alpha)
 
foreign import javascript unsafe "$1[\"compileShader\"]($2)"
        js_compileShader ::
        WebGLRenderingContextBase -> Optional WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compileShader Mozilla WebGLRenderingContextBase.compileShader documentation> 
compileShader ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLShader -> m ()
compileShader self shader
  = liftIO
      (js_compileShader (toWebGLRenderingContextBase self)
         (maybeToOptional shader))
 
foreign import javascript unsafe
        "$1[\"compressedTexImage2D\"]($2,\n$3, $4, $5, $6, $7, $8)"
        js_compressedTexImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLenum -> GLsizei -> GLsizei -> GLint -> ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compressedTexImage2D Mozilla WebGLRenderingContextBase.compressedTexImage2D documentation> 
compressedTexImage2D ::
                     (MonadIO m, IsWebGLRenderingContextBase self,
                      IsArrayBufferView data') =>
                       self ->
                         GLenum ->
                           GLint -> GLenum -> GLsizei -> GLsizei -> GLint -> data' -> m ()
compressedTexImage2D self target level internalformat width height
  border data'
  = liftIO
      (js_compressedTexImage2D (toWebGLRenderingContextBase self) target
         level
         internalformat
         width
         height
         border
         (toArrayBufferView data'))
 
foreign import javascript unsafe
        "$1[\"compressedTexSubImage2D\"]($2,\n$3, $4, $5, $6, $7, $8, $9)"
        js_compressedTexSubImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLsizei -> GLsizei -> GLenum -> ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.compressedTexSubImage2D Mozilla WebGLRenderingContextBase.compressedTexSubImage2D documentation> 
compressedTexSubImage2D ::
                        (MonadIO m, IsWebGLRenderingContextBase self,
                         IsArrayBufferView data') =>
                          self ->
                            GLenum ->
                              GLint ->
                                GLint -> GLint -> GLsizei -> GLsizei -> GLenum -> data' -> m ()
compressedTexSubImage2D self target level xoffset yoffset width
  height format data'
  = liftIO
      (js_compressedTexSubImage2D (toWebGLRenderingContextBase self)
         target
         level
         xoffset
         yoffset
         width
         height
         format
         (toArrayBufferView data'))
 
foreign import javascript unsafe
        "$1[\"copyTexImage2D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        js_copyTexImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.copyTexImage2D Mozilla WebGLRenderingContextBase.copyTexImage2D documentation> 
copyTexImage2D ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self ->
                   GLenum ->
                     GLint ->
                       GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> m ()
copyTexImage2D self target level internalformat x y width height
  border
  = liftIO
      (js_copyTexImage2D (toWebGLRenderingContextBase self) target level
         internalformat
         x
         y
         width
         height
         border)
 
foreign import javascript unsafe
        "$1[\"copyTexSubImage2D\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        js_copyTexSubImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.copyTexSubImage2D Mozilla WebGLRenderingContextBase.copyTexSubImage2D documentation> 
copyTexSubImage2D ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self ->
                      GLenum ->
                        GLint ->
                          GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
copyTexSubImage2D self target level xoffset yoffset x y width
  height
  = liftIO
      (js_copyTexSubImage2D (toWebGLRenderingContextBase self) target
         level
         xoffset
         yoffset
         x
         y
         width
         height)
 
foreign import javascript unsafe "$1[\"createBuffer\"]()"
        js_createBuffer :: WebGLRenderingContextBase -> IO WebGLBuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createBuffer Mozilla WebGLRenderingContextBase.createBuffer documentation> 
createBuffer ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> m WebGLBuffer
createBuffer self
  = liftIO (js_createBuffer (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createBuffer Mozilla WebGLRenderingContextBase.createBuffer documentation> 
createBuffer_ ::
              (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
createBuffer_ self
  = liftIO
      (void (js_createBuffer (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"createFramebuffer\"]()"
        js_createFramebuffer ::
        WebGLRenderingContextBase -> IO WebGLFramebuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createFramebuffer Mozilla WebGLRenderingContextBase.createFramebuffer documentation> 
createFramebuffer ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> m WebGLFramebuffer
createFramebuffer self
  = liftIO (js_createFramebuffer (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createFramebuffer Mozilla WebGLRenderingContextBase.createFramebuffer documentation> 
createFramebuffer_ ::
                   (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
createFramebuffer_ self
  = liftIO
      (void (js_createFramebuffer (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"createProgram\"]()"
        js_createProgram :: WebGLRenderingContextBase -> IO WebGLProgram

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createProgram Mozilla WebGLRenderingContextBase.createProgram documentation> 
createProgram ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> m WebGLProgram
createProgram self
  = liftIO (js_createProgram (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createProgram Mozilla WebGLRenderingContextBase.createProgram documentation> 
createProgram_ ::
               (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
createProgram_ self
  = liftIO
      (void (js_createProgram (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"createRenderbuffer\"]()"
        js_createRenderbuffer ::
        WebGLRenderingContextBase -> IO WebGLRenderbuffer

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createRenderbuffer Mozilla WebGLRenderingContextBase.createRenderbuffer documentation> 
createRenderbuffer ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> m WebGLRenderbuffer
createRenderbuffer self
  = liftIO (js_createRenderbuffer (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createRenderbuffer Mozilla WebGLRenderingContextBase.createRenderbuffer documentation> 
createRenderbuffer_ ::
                    (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
createRenderbuffer_ self
  = liftIO
      (void (js_createRenderbuffer (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"createShader\"]($2)"
        js_createShader ::
        WebGLRenderingContextBase -> GLenum -> IO WebGLShader

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createShader Mozilla WebGLRenderingContextBase.createShader documentation> 
createShader ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> m WebGLShader
createShader self type'
  = liftIO (js_createShader (toWebGLRenderingContextBase self) type')

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createShader Mozilla WebGLRenderingContextBase.createShader documentation> 
createShader_ ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
createShader_ self type'
  = liftIO
      (void (js_createShader (toWebGLRenderingContextBase self) type'))
 
foreign import javascript unsafe "$1[\"createTexture\"]()"
        js_createTexture :: WebGLRenderingContextBase -> IO WebGLTexture

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createTexture Mozilla WebGLRenderingContextBase.createTexture documentation> 
createTexture ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> m WebGLTexture
createTexture self
  = liftIO (js_createTexture (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.createTexture Mozilla WebGLRenderingContextBase.createTexture documentation> 
createTexture_ ::
               (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
createTexture_ self
  = liftIO
      (void (js_createTexture (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"cullFace\"]($2)" js_cullFace
        :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.cullFace Mozilla WebGLRenderingContextBase.cullFace documentation> 
cullFace ::
         (MonadIO m, IsWebGLRenderingContextBase self) =>
           self -> GLenum -> m ()
cullFace self mode
  = liftIO (js_cullFace (toWebGLRenderingContextBase self) mode)
 
foreign import javascript unsafe "$1[\"deleteBuffer\"]($2)"
        js_deleteBuffer ::
        WebGLRenderingContextBase -> Optional WebGLBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteBuffer Mozilla WebGLRenderingContextBase.deleteBuffer documentation> 
deleteBuffer ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLBuffer -> m ()
deleteBuffer self buffer
  = liftIO
      (js_deleteBuffer (toWebGLRenderingContextBase self)
         (maybeToOptional buffer))
 
foreign import javascript unsafe "$1[\"deleteFramebuffer\"]($2)"
        js_deleteFramebuffer ::
        WebGLRenderingContextBase -> Optional WebGLFramebuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteFramebuffer Mozilla WebGLRenderingContextBase.deleteFramebuffer documentation> 
deleteFramebuffer ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLFramebuffer -> m ()
deleteFramebuffer self framebuffer
  = liftIO
      (js_deleteFramebuffer (toWebGLRenderingContextBase self)
         (maybeToOptional framebuffer))
 
foreign import javascript unsafe "$1[\"deleteProgram\"]($2)"
        js_deleteProgram ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteProgram Mozilla WebGLRenderingContextBase.deleteProgram documentation> 
deleteProgram ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLProgram -> m ()
deleteProgram self program
  = liftIO
      (js_deleteProgram (toWebGLRenderingContextBase self)
         (maybeToOptional program))
 
foreign import javascript unsafe "$1[\"deleteRenderbuffer\"]($2)"
        js_deleteRenderbuffer ::
        WebGLRenderingContextBase -> Optional WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteRenderbuffer Mozilla WebGLRenderingContextBase.deleteRenderbuffer documentation> 
deleteRenderbuffer ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLRenderbuffer -> m ()
deleteRenderbuffer self renderbuffer
  = liftIO
      (js_deleteRenderbuffer (toWebGLRenderingContextBase self)
         (maybeToOptional renderbuffer))
 
foreign import javascript unsafe "$1[\"deleteShader\"]($2)"
        js_deleteShader ::
        WebGLRenderingContextBase -> Optional WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteShader Mozilla WebGLRenderingContextBase.deleteShader documentation> 
deleteShader ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLShader -> m ()
deleteShader self shader
  = liftIO
      (js_deleteShader (toWebGLRenderingContextBase self)
         (maybeToOptional shader))
 
foreign import javascript unsafe "$1[\"deleteTexture\"]($2)"
        js_deleteTexture ::
        WebGLRenderingContextBase -> Optional WebGLTexture -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.deleteTexture Mozilla WebGLRenderingContextBase.deleteTexture documentation> 
deleteTexture ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLTexture -> m ()
deleteTexture self texture
  = liftIO
      (js_deleteTexture (toWebGLRenderingContextBase self)
         (maybeToOptional texture))
 
foreign import javascript unsafe "$1[\"depthFunc\"]($2)"
        js_depthFunc :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthFunc Mozilla WebGLRenderingContextBase.depthFunc documentation> 
depthFunc ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m ()
depthFunc self func
  = liftIO (js_depthFunc (toWebGLRenderingContextBase self) func)
 
foreign import javascript unsafe "$1[\"depthMask\"]($2)"
        js_depthMask :: WebGLRenderingContextBase -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthMask Mozilla WebGLRenderingContextBase.depthMask documentation> 
depthMask ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLboolean -> m ()
depthMask self flag
  = liftIO (js_depthMask (toWebGLRenderingContextBase self) flag)
 
foreign import javascript unsafe "$1[\"depthRange\"]($2, $3)"
        js_depthRange ::
        WebGLRenderingContextBase -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.depthRange Mozilla WebGLRenderingContextBase.depthRange documentation> 
depthRange ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLclampf -> GLclampf -> m ()
depthRange self zNear zFar
  = liftIO
      (js_depthRange (toWebGLRenderingContextBase self) zNear zFar)
 
foreign import javascript unsafe "$1[\"detachShader\"]($2, $3)"
        js_detachShader ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> Optional WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.detachShader Mozilla WebGLRenderingContextBase.detachShader documentation> 
detachShader ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> Maybe WebGLProgram -> Maybe WebGLShader -> m ()
detachShader self program shader
  = liftIO
      (js_detachShader (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         (maybeToOptional shader))
 
foreign import javascript unsafe "$1[\"disable\"]($2)" js_disable
        :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.disable Mozilla WebGLRenderingContextBase.disable documentation> 
disable ::
        (MonadIO m, IsWebGLRenderingContextBase self) =>
          self -> GLenum -> m ()
disable self cap
  = liftIO (js_disable (toWebGLRenderingContextBase self) cap)
 
foreign import javascript unsafe
        "$1[\"disableVertexAttribArray\"]($2)" js_disableVertexAttribArray
        :: WebGLRenderingContextBase -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.disableVertexAttribArray Mozilla WebGLRenderingContextBase.disableVertexAttribArray documentation> 
disableVertexAttribArray ::
                         (MonadIO m, IsWebGLRenderingContextBase self) =>
                           self -> GLuint -> m ()
disableVertexAttribArray self index
  = liftIO
      (js_disableVertexAttribArray (toWebGLRenderingContextBase self)
         index)
 
foreign import javascript unsafe "$1[\"drawArrays\"]($2, $3, $4)"
        js_drawArrays ::
        WebGLRenderingContextBase -> GLenum -> GLint -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawArrays Mozilla WebGLRenderingContextBase.drawArrays documentation> 
drawArrays ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> GLint -> GLsizei -> m ()
drawArrays self mode first count
  = liftIO
      (js_drawArrays (toWebGLRenderingContextBase self) mode first count)
 
foreign import javascript unsafe
        "$1[\"drawElements\"]($2, $3, $4,\n$5)" js_drawElements ::
        WebGLRenderingContextBase ->
          GLenum -> GLsizei -> GLenum -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawElements Mozilla WebGLRenderingContextBase.drawElements documentation> 
drawElements ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> GLsizei -> GLenum -> GLintptr -> m ()
drawElements self mode count type' offset
  = liftIO
      (js_drawElements (toWebGLRenderingContextBase self) mode count
         type'
         (fromIntegral offset))
 
foreign import javascript unsafe "$1[\"enable\"]($2)" js_enable ::
        WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.enable Mozilla WebGLRenderingContextBase.enable documentation> 
enable ::
       (MonadIO m, IsWebGLRenderingContextBase self) =>
         self -> GLenum -> m ()
enable self cap
  = liftIO (js_enable (toWebGLRenderingContextBase self) cap)
 
foreign import javascript unsafe
        "$1[\"enableVertexAttribArray\"]($2)" js_enableVertexAttribArray ::
        WebGLRenderingContextBase -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.enableVertexAttribArray Mozilla WebGLRenderingContextBase.enableVertexAttribArray documentation> 
enableVertexAttribArray ::
                        (MonadIO m, IsWebGLRenderingContextBase self) =>
                          self -> GLuint -> m ()
enableVertexAttribArray self index
  = liftIO
      (js_enableVertexAttribArray (toWebGLRenderingContextBase self)
         index)
 
foreign import javascript unsafe "$1[\"finish\"]()" js_finish ::
        WebGLRenderingContextBase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.finish Mozilla WebGLRenderingContextBase.finish documentation> 
finish ::
       (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
finish self = liftIO (js_finish (toWebGLRenderingContextBase self))
 
foreign import javascript unsafe "$1[\"flush\"]()" js_flush ::
        WebGLRenderingContextBase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.flush Mozilla WebGLRenderingContextBase.flush documentation> 
flush ::
      (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
flush self = liftIO (js_flush (toWebGLRenderingContextBase self))
 
foreign import javascript unsafe
        "$1[\"framebufferRenderbuffer\"]($2,\n$3, $4, $5)"
        js_framebufferRenderbuffer ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> GLenum -> Optional WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.framebufferRenderbuffer Mozilla WebGLRenderingContextBase.framebufferRenderbuffer documentation> 
framebufferRenderbuffer ::
                        (MonadIO m, IsWebGLRenderingContextBase self) =>
                          self ->
                            GLenum -> GLenum -> GLenum -> Maybe WebGLRenderbuffer -> m ()
framebufferRenderbuffer self target attachment renderbuffertarget
  renderbuffer
  = liftIO
      (js_framebufferRenderbuffer (toWebGLRenderingContextBase self)
         target
         attachment
         renderbuffertarget
         (maybeToOptional renderbuffer))
 
foreign import javascript unsafe
        "$1[\"framebufferTexture2D\"]($2,\n$3, $4, $5, $6)"
        js_framebufferTexture2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLenum -> GLenum -> Optional WebGLTexture -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.framebufferTexture2D Mozilla WebGLRenderingContextBase.framebufferTexture2D documentation> 
framebufferTexture2D ::
                     (MonadIO m, IsWebGLRenderingContextBase self) =>
                       self ->
                         GLenum -> GLenum -> GLenum -> Maybe WebGLTexture -> GLint -> m ()
framebufferTexture2D self target attachment textarget texture level
  = liftIO
      (js_framebufferTexture2D (toWebGLRenderingContextBase self) target
         attachment
         textarget
         (maybeToOptional texture)
         level)
 
foreign import javascript unsafe "$1[\"frontFace\"]($2)"
        js_frontFace :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.frontFace Mozilla WebGLRenderingContextBase.frontFace documentation> 
frontFace ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m ()
frontFace self mode
  = liftIO (js_frontFace (toWebGLRenderingContextBase self) mode)
 
foreign import javascript unsafe "$1[\"generateMipmap\"]($2)"
        js_generateMipmap :: WebGLRenderingContextBase -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.generateMipmap Mozilla WebGLRenderingContextBase.generateMipmap documentation> 
generateMipmap ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLenum -> m ()
generateMipmap self target
  = liftIO
      (js_generateMipmap (toWebGLRenderingContextBase self) target)
 
foreign import javascript unsafe "$1[\"getActiveAttrib\"]($2, $3)"
        js_getActiveAttrib ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> GLuint -> IO WebGLActiveInfo

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveAttrib Mozilla WebGLRenderingContextBase.getActiveAttrib documentation> 
getActiveAttrib ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLProgram -> GLuint -> m WebGLActiveInfo
getActiveAttrib self program index
  = liftIO
      (js_getActiveAttrib (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveAttrib Mozilla WebGLRenderingContextBase.getActiveAttrib documentation> 
getActiveAttrib_ ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLProgram -> GLuint -> m ()
getActiveAttrib_ self program index
  = liftIO
      (void
         (js_getActiveAttrib (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            index))
 
foreign import javascript unsafe "$1[\"getActiveUniform\"]($2, $3)"
        js_getActiveUniform ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> GLuint -> IO WebGLActiveInfo

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveUniform Mozilla WebGLRenderingContextBase.getActiveUniform documentation> 
getActiveUniform ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLProgram -> GLuint -> m WebGLActiveInfo
getActiveUniform self program index
  = liftIO
      (js_getActiveUniform (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getActiveUniform Mozilla WebGLRenderingContextBase.getActiveUniform documentation> 
getActiveUniform_ ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLProgram -> GLuint -> m ()
getActiveUniform_ self program index
  = liftIO
      (void
         (js_getActiveUniform (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            index))
 
foreign import javascript unsafe "$1[\"getAttachedShaders\"]($2)"
        js_getAttachedShaders ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttachedShaders Mozilla WebGLRenderingContextBase.getAttachedShaders documentation> 
getAttachedShaders ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLProgram -> m (Maybe [WebGLShader])
getAttachedShaders self program
  = liftIO
      ((js_getAttachedShaders (toWebGLRenderingContextBase self)
          (maybeToOptional program))
         >>= fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttachedShaders Mozilla WebGLRenderingContextBase.getAttachedShaders documentation> 
getAttachedShaders_ ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLProgram -> m ()
getAttachedShaders_ self program
  = liftIO
      (void
         (js_getAttachedShaders (toWebGLRenderingContextBase self)
            (maybeToOptional program)))
 
foreign import javascript unsafe
        "$1[\"getAttribLocation\"]($2, $3)" js_getAttribLocation ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> JSString -> IO GLint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttribLocation Mozilla WebGLRenderingContextBase.getAttribLocation documentation> 
getAttribLocation ::
                  (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                    self -> Maybe WebGLProgram -> name -> m GLint
getAttribLocation self program name
  = liftIO
      (js_getAttribLocation (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getAttribLocation Mozilla WebGLRenderingContextBase.getAttribLocation documentation> 
getAttribLocation_ ::
                   (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> name -> m ()
getAttribLocation_ self program name
  = liftIO
      (void
         (js_getAttribLocation (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            (toJSString name)))
 
foreign import javascript unsafe
        "$1[\"getBufferParameter\"]($2, $3)" js_getBufferParameter ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getBufferParameter Mozilla WebGLRenderingContextBase.getBufferParameter documentation> 
getBufferParameter ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> GLenum -> GLenum -> m JSVal
getBufferParameter self target pname
  = liftIO
      (js_getBufferParameter (toWebGLRenderingContextBase self) target
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getBufferParameter Mozilla WebGLRenderingContextBase.getBufferParameter documentation> 
getBufferParameter_ ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> m ()
getBufferParameter_ self target pname
  = liftIO
      (void
         (js_getBufferParameter (toWebGLRenderingContextBase self) target
            pname))
 
foreign import javascript unsafe "$1[\"getContextAttributes\"]()"
        js_getContextAttributes ::
        WebGLRenderingContextBase -> IO (Nullable WebGLContextAttributes)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributes ::
                     (MonadIO m, IsWebGLRenderingContextBase self) =>
                       self -> m (Maybe WebGLContextAttributes)
getContextAttributes self
  = liftIO
      (nullableToMaybe <$>
         (js_getContextAttributes (toWebGLRenderingContextBase self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributes_ ::
                      (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
getContextAttributes_ self
  = liftIO
      (void (js_getContextAttributes (toWebGLRenderingContextBase self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributesUnsafe ::
                           (MonadIO m, IsWebGLRenderingContextBase self, HasCallStack) =>
                             self -> m WebGLContextAttributes
getContextAttributesUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getContextAttributes (toWebGLRenderingContextBase self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getContextAttributes Mozilla WebGLRenderingContextBase.getContextAttributes documentation> 
getContextAttributesUnchecked ::
                              (MonadIO m, IsWebGLRenderingContextBase self) =>
                                self -> m WebGLContextAttributes
getContextAttributesUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getContextAttributes (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"getError\"]()" js_getError
        :: WebGLRenderingContextBase -> IO GLenum

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getError Mozilla WebGLRenderingContextBase.getError documentation> 
getError ::
         (MonadIO m, IsWebGLRenderingContextBase self) => self -> m GLenum
getError self
  = liftIO (js_getError (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getError Mozilla WebGLRenderingContextBase.getError documentation> 
getError_ ::
          (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
getError_ self
  = liftIO (void (js_getError (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"getSupportedExtensions\"]()"
        js_getSupportedExtensions :: WebGLRenderingContextBase -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getSupportedExtensions Mozilla WebGLRenderingContextBase.getSupportedExtensions documentation> 
getSupportedExtensions ::
                       (MonadIO m, IsWebGLRenderingContextBase self,
                        FromJSString result) =>
                         self -> m (Maybe [result])
getSupportedExtensions self
  = liftIO
      ((js_getSupportedExtensions (toWebGLRenderingContextBase self)) >>=
         fromJSValUnchecked)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getSupportedExtensions Mozilla WebGLRenderingContextBase.getSupportedExtensions documentation> 
getSupportedExtensions_ ::
                        (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
getSupportedExtensions_ self
  = liftIO
      (void
         (js_getSupportedExtensions (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"getExtension\"]($2)"
        js_getExtension ::
        WebGLRenderingContextBase -> JSString -> IO (Nullable GObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtension ::
             (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
               self -> name -> m (Maybe GObject)
getExtension self name
  = liftIO
      (nullableToMaybe <$>
         (js_getExtension (toWebGLRenderingContextBase self)
            (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtension_ ::
              (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                self -> name -> m ()
getExtension_ self name
  = liftIO
      (void
         (js_getExtension (toWebGLRenderingContextBase self)
            (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtensionUnsafe ::
                   (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name,
                    HasCallStack) =>
                     self -> name -> m GObject
getExtensionUnsafe self name
  = liftIO
      ((nullableToMaybe <$>
          (js_getExtension (toWebGLRenderingContextBase self)
             (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getExtension Mozilla WebGLRenderingContextBase.getExtension documentation> 
getExtensionUnchecked ::
                      (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                        self -> name -> m GObject
getExtensionUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getExtension (toWebGLRenderingContextBase self)
            (toJSString name)))
 
foreign import javascript unsafe
        "$1[\"getFramebufferAttachmentParameter\"]($2,\n$3, $4)"
        js_getFramebufferAttachmentParameter ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getFramebufferAttachmentParameter Mozilla WebGLRenderingContextBase.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter ::
                                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                                    self -> GLenum -> GLenum -> GLenum -> m JSVal
getFramebufferAttachmentParameter self target attachment pname
  = liftIO
      (js_getFramebufferAttachmentParameter
         (toWebGLRenderingContextBase self)
         target
         attachment
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getFramebufferAttachmentParameter Mozilla WebGLRenderingContextBase.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter_ ::
                                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                                     self -> GLenum -> GLenum -> GLenum -> m ()
getFramebufferAttachmentParameter_ self target attachment pname
  = liftIO
      (void
         (js_getFramebufferAttachmentParameter
            (toWebGLRenderingContextBase self)
            target
            attachment
            pname))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2)"
        js_getParameter :: WebGLRenderingContextBase -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getParameter Mozilla WebGLRenderingContextBase.getParameter documentation> 
getParameter ::
             (MonadIO m, IsWebGLRenderingContextBase self) =>
               self -> GLenum -> m JSVal
getParameter self pname
  = liftIO (js_getParameter (toWebGLRenderingContextBase self) pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getParameter Mozilla WebGLRenderingContextBase.getParameter documentation> 
getParameter_ ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> m ()
getParameter_ self pname
  = liftIO
      (void (js_getParameter (toWebGLRenderingContextBase self) pname))
 
foreign import javascript unsafe
        "$1[\"getProgramParameter\"]($2,\n$3)" js_getProgramParameter ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramParameter Mozilla WebGLRenderingContextBase.getProgramParameter documentation> 
getProgramParameter ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLProgram -> GLenum -> m JSVal
getProgramParameter self program pname
  = liftIO
      (js_getProgramParameter (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramParameter Mozilla WebGLRenderingContextBase.getProgramParameter documentation> 
getProgramParameter_ ::
                     (MonadIO m, IsWebGLRenderingContextBase self) =>
                       self -> Maybe WebGLProgram -> GLenum -> m ()
getProgramParameter_ self program pname
  = liftIO
      (void
         (js_getProgramParameter (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            pname))
 
foreign import javascript unsafe "$1[\"getProgramInfoLog\"]($2)"
        js_getProgramInfoLog ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLog ::
                  (MonadIO m, IsWebGLRenderingContextBase self,
                   FromJSString result) =>
                    self -> Maybe WebGLProgram -> m (Maybe result)
getProgramInfoLog self program
  = liftIO
      (fromMaybeJSString <$>
         (js_getProgramInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional program)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLog_ ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLProgram -> m ()
getProgramInfoLog_ self program
  = liftIO
      (void
         (js_getProgramInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional program)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLogUnsafe ::
                        (MonadIO m, IsWebGLRenderingContextBase self, HasCallStack,
                         FromJSString result) =>
                          self -> Maybe WebGLProgram -> m result
getProgramInfoLogUnsafe self program
  = liftIO
      ((fromMaybeJSString <$>
          (js_getProgramInfoLog (toWebGLRenderingContextBase self)
             (maybeToOptional program)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getProgramInfoLog Mozilla WebGLRenderingContextBase.getProgramInfoLog documentation> 
getProgramInfoLogUnchecked ::
                           (MonadIO m, IsWebGLRenderingContextBase self,
                            FromJSString result) =>
                             self -> Maybe WebGLProgram -> m result
getProgramInfoLogUnchecked self program
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getProgramInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional program)))
 
foreign import javascript unsafe
        "$1[\"getRenderbufferParameter\"]($2,\n$3)"
        js_getRenderbufferParameter ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getRenderbufferParameter Mozilla WebGLRenderingContextBase.getRenderbufferParameter documentation> 
getRenderbufferParameter ::
                         (MonadIO m, IsWebGLRenderingContextBase self) =>
                           self -> GLenum -> GLenum -> m JSVal
getRenderbufferParameter self target pname
  = liftIO
      (js_getRenderbufferParameter (toWebGLRenderingContextBase self)
         target
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getRenderbufferParameter Mozilla WebGLRenderingContextBase.getRenderbufferParameter documentation> 
getRenderbufferParameter_ ::
                          (MonadIO m, IsWebGLRenderingContextBase self) =>
                            self -> GLenum -> GLenum -> m ()
getRenderbufferParameter_ self target pname
  = liftIO
      (void
         (js_getRenderbufferParameter (toWebGLRenderingContextBase self)
            target
            pname))
 
foreign import javascript unsafe
        "$1[\"getShaderParameter\"]($2, $3)" js_getShaderParameter ::
        WebGLRenderingContextBase ->
          Optional WebGLShader -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderParameter Mozilla WebGLRenderingContextBase.getShaderParameter documentation> 
getShaderParameter ::
                   (MonadIO m, IsWebGLRenderingContextBase self) =>
                     self -> Maybe WebGLShader -> GLenum -> m JSVal
getShaderParameter self shader pname
  = liftIO
      (js_getShaderParameter (toWebGLRenderingContextBase self)
         (maybeToOptional shader)
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderParameter Mozilla WebGLRenderingContextBase.getShaderParameter documentation> 
getShaderParameter_ ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> Maybe WebGLShader -> GLenum -> m ()
getShaderParameter_ self shader pname
  = liftIO
      (void
         (js_getShaderParameter (toWebGLRenderingContextBase self)
            (maybeToOptional shader)
            pname))
 
foreign import javascript unsafe "$1[\"getShaderInfoLog\"]($2)"
        js_getShaderInfoLog ::
        WebGLRenderingContextBase ->
          Optional WebGLShader -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLog ::
                 (MonadIO m, IsWebGLRenderingContextBase self,
                  FromJSString result) =>
                   self -> Maybe WebGLShader -> m (Maybe result)
getShaderInfoLog self shader
  = liftIO
      (fromMaybeJSString <$>
         (js_getShaderInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLog_ ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> Maybe WebGLShader -> m ()
getShaderInfoLog_ self shader
  = liftIO
      (void
         (js_getShaderInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLogUnsafe ::
                       (MonadIO m, IsWebGLRenderingContextBase self, HasCallStack,
                        FromJSString result) =>
                         self -> Maybe WebGLShader -> m result
getShaderInfoLogUnsafe self shader
  = liftIO
      ((fromMaybeJSString <$>
          (js_getShaderInfoLog (toWebGLRenderingContextBase self)
             (maybeToOptional shader)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderInfoLog Mozilla WebGLRenderingContextBase.getShaderInfoLog documentation> 
getShaderInfoLogUnchecked ::
                          (MonadIO m, IsWebGLRenderingContextBase self,
                           FromJSString result) =>
                            self -> Maybe WebGLShader -> m result
getShaderInfoLogUnchecked self shader
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getShaderInfoLog (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))
 
foreign import javascript unsafe
        "$1[\"getShaderPrecisionFormat\"]($2,\n$3)"
        js_getShaderPrecisionFormat ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> IO WebGLShaderPrecisionFormat

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderPrecisionFormat Mozilla WebGLRenderingContextBase.getShaderPrecisionFormat documentation> 
getShaderPrecisionFormat ::
                         (MonadIO m, IsWebGLRenderingContextBase self) =>
                           self -> GLenum -> GLenum -> m WebGLShaderPrecisionFormat
getShaderPrecisionFormat self shadertype precisiontype
  = liftIO
      (js_getShaderPrecisionFormat (toWebGLRenderingContextBase self)
         shadertype
         precisiontype)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderPrecisionFormat Mozilla WebGLRenderingContextBase.getShaderPrecisionFormat documentation> 
getShaderPrecisionFormat_ ::
                          (MonadIO m, IsWebGLRenderingContextBase self) =>
                            self -> GLenum -> GLenum -> m ()
getShaderPrecisionFormat_ self shadertype precisiontype
  = liftIO
      (void
         (js_getShaderPrecisionFormat (toWebGLRenderingContextBase self)
            shadertype
            precisiontype))
 
foreign import javascript unsafe "$1[\"getShaderSource\"]($2)"
        js_getShaderSource ::
        WebGLRenderingContextBase ->
          Optional WebGLShader -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSource ::
                (MonadIO m, IsWebGLRenderingContextBase self,
                 FromJSString result) =>
                  self -> Maybe WebGLShader -> m (Maybe result)
getShaderSource self shader
  = liftIO
      (fromMaybeJSString <$>
         (js_getShaderSource (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSource_ ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> Maybe WebGLShader -> m ()
getShaderSource_ self shader
  = liftIO
      (void
         (js_getShaderSource (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSourceUnsafe ::
                      (MonadIO m, IsWebGLRenderingContextBase self, HasCallStack,
                       FromJSString result) =>
                        self -> Maybe WebGLShader -> m result
getShaderSourceUnsafe self shader
  = liftIO
      ((fromMaybeJSString <$>
          (js_getShaderSource (toWebGLRenderingContextBase self)
             (maybeToOptional shader)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getShaderSource Mozilla WebGLRenderingContextBase.getShaderSource documentation> 
getShaderSourceUnchecked ::
                         (MonadIO m, IsWebGLRenderingContextBase self,
                          FromJSString result) =>
                           self -> Maybe WebGLShader -> m result
getShaderSourceUnchecked self shader
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getShaderSource (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))
 
foreign import javascript unsafe "$1[\"getTexParameter\"]($2, $3)"
        js_getTexParameter ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getTexParameter Mozilla WebGLRenderingContextBase.getTexParameter documentation> 
getTexParameter ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> GLenum -> GLenum -> m JSVal
getTexParameter self target pname
  = liftIO
      (js_getTexParameter (toWebGLRenderingContextBase self) target
         pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getTexParameter Mozilla WebGLRenderingContextBase.getTexParameter documentation> 
getTexParameter_ ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> GLenum -> GLenum -> m ()
getTexParameter_ self target pname
  = liftIO
      (void
         (js_getTexParameter (toWebGLRenderingContextBase self) target
            pname))
 
foreign import javascript unsafe "$1[\"getUniform\"]($2, $3)"
        js_getUniform ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> Optional WebGLUniformLocation -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniform Mozilla WebGLRenderingContextBase.getUniform documentation> 
getUniform ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> Maybe WebGLUniformLocation -> m JSVal
getUniform self program location
  = liftIO
      (js_getUniform (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         (maybeToOptional location))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniform Mozilla WebGLRenderingContextBase.getUniform documentation> 
getUniform_ ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> Maybe WebGLProgram -> Maybe WebGLUniformLocation -> m ()
getUniform_ self program location
  = liftIO
      (void
         (js_getUniform (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            (maybeToOptional location)))
 
foreign import javascript unsafe
        "$1[\"getUniformLocation\"]($2, $3)" js_getUniformLocation ::
        WebGLRenderingContextBase ->
          Optional WebGLProgram -> JSString -> IO WebGLUniformLocation

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniformLocation Mozilla WebGLRenderingContextBase.getUniformLocation documentation> 
getUniformLocation ::
                   (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                     self -> Maybe WebGLProgram -> name -> m WebGLUniformLocation
getUniformLocation self program name
  = liftIO
      (js_getUniformLocation (toWebGLRenderingContextBase self)
         (maybeToOptional program)
         (toJSString name))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getUniformLocation Mozilla WebGLRenderingContextBase.getUniformLocation documentation> 
getUniformLocation_ ::
                    (MonadIO m, IsWebGLRenderingContextBase self, ToJSString name) =>
                      self -> Maybe WebGLProgram -> name -> m ()
getUniformLocation_ self program name
  = liftIO
      (void
         (js_getUniformLocation (toWebGLRenderingContextBase self)
            (maybeToOptional program)
            (toJSString name)))
 
foreign import javascript unsafe "$1[\"getVertexAttrib\"]($2, $3)"
        js_getVertexAttrib ::
        WebGLRenderingContextBase -> GLuint -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttrib Mozilla WebGLRenderingContextBase.getVertexAttrib documentation> 
getVertexAttrib ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> GLuint -> GLenum -> m JSVal
getVertexAttrib self index pname
  = liftIO
      (js_getVertexAttrib (toWebGLRenderingContextBase self) index pname)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttrib Mozilla WebGLRenderingContextBase.getVertexAttrib documentation> 
getVertexAttrib_ ::
                 (MonadIO m, IsWebGLRenderingContextBase self) =>
                   self -> GLuint -> GLenum -> m ()
getVertexAttrib_ self index pname
  = liftIO
      (void
         (js_getVertexAttrib (toWebGLRenderingContextBase self) index
            pname))
 
foreign import javascript unsafe
        "$1[\"getVertexAttribOffset\"]($2,\n$3)" js_getVertexAttribOffset
        :: WebGLRenderingContextBase -> GLuint -> GLenum -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttribOffset Mozilla WebGLRenderingContextBase.getVertexAttribOffset documentation> 
getVertexAttribOffset ::
                      (MonadIO m, IsWebGLRenderingContextBase self) =>
                        self -> GLuint -> GLenum -> m GLsizeiptr
getVertexAttribOffset self index pname
  = liftIO
      (round <$>
         (js_getVertexAttribOffset (toWebGLRenderingContextBase self) index
            pname))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.getVertexAttribOffset Mozilla WebGLRenderingContextBase.getVertexAttribOffset documentation> 
getVertexAttribOffset_ ::
                       (MonadIO m, IsWebGLRenderingContextBase self) =>
                         self -> GLuint -> GLenum -> m ()
getVertexAttribOffset_ self index pname
  = liftIO
      (void
         (js_getVertexAttribOffset (toWebGLRenderingContextBase self) index
            pname))
 
foreign import javascript unsafe "$1[\"hint\"]($2, $3)" js_hint ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.hint Mozilla WebGLRenderingContextBase.hint documentation> 
hint ::
     (MonadIO m, IsWebGLRenderingContextBase self) =>
       self -> GLenum -> GLenum -> m ()
hint self target mode
  = liftIO (js_hint (toWebGLRenderingContextBase self) target mode)
 
foreign import javascript unsafe "$1[\"isBuffer\"]($2)" js_isBuffer
        ::
        WebGLRenderingContextBase -> Optional WebGLBuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isBuffer Mozilla WebGLRenderingContextBase.isBuffer documentation> 
isBuffer ::
         (MonadIO m, IsWebGLRenderingContextBase self) =>
           self -> Maybe WebGLBuffer -> m GLboolean
isBuffer self buffer
  = liftIO
      (js_isBuffer (toWebGLRenderingContextBase self)
         (maybeToOptional buffer))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isBuffer Mozilla WebGLRenderingContextBase.isBuffer documentation> 
isBuffer_ ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLBuffer -> m ()
isBuffer_ self buffer
  = liftIO
      (void
         (js_isBuffer (toWebGLRenderingContextBase self)
            (maybeToOptional buffer)))
 
foreign import javascript unsafe "$1[\"isContextLost\"]()"
        js_isContextLost :: WebGLRenderingContextBase -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isContextLost Mozilla WebGLRenderingContextBase.isContextLost documentation> 
isContextLost ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> m GLboolean
isContextLost self
  = liftIO (js_isContextLost (toWebGLRenderingContextBase self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isContextLost Mozilla WebGLRenderingContextBase.isContextLost documentation> 
isContextLost_ ::
               (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
isContextLost_ self
  = liftIO
      (void (js_isContextLost (toWebGLRenderingContextBase self)))
 
foreign import javascript unsafe "$1[\"isEnabled\"]($2)"
        js_isEnabled :: WebGLRenderingContextBase -> GLenum -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isEnabled Mozilla WebGLRenderingContextBase.isEnabled documentation> 
isEnabled ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> m GLboolean
isEnabled self cap
  = liftIO (js_isEnabled (toWebGLRenderingContextBase self) cap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isEnabled Mozilla WebGLRenderingContextBase.isEnabled documentation> 
isEnabled_ ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> GLenum -> m ()
isEnabled_ self cap
  = liftIO
      (void (js_isEnabled (toWebGLRenderingContextBase self) cap))
 
foreign import javascript unsafe "$1[\"isFramebuffer\"]($2)"
        js_isFramebuffer ::
        WebGLRenderingContextBase ->
          Optional WebGLFramebuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isFramebuffer Mozilla WebGLRenderingContextBase.isFramebuffer documentation> 
isFramebuffer ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> Maybe WebGLFramebuffer -> m GLboolean
isFramebuffer self framebuffer
  = liftIO
      (js_isFramebuffer (toWebGLRenderingContextBase self)
         (maybeToOptional framebuffer))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isFramebuffer Mozilla WebGLRenderingContextBase.isFramebuffer documentation> 
isFramebuffer_ ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> Maybe WebGLFramebuffer -> m ()
isFramebuffer_ self framebuffer
  = liftIO
      (void
         (js_isFramebuffer (toWebGLRenderingContextBase self)
            (maybeToOptional framebuffer)))
 
foreign import javascript unsafe "$1[\"isProgram\"]($2)"
        js_isProgram ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isProgram Mozilla WebGLRenderingContextBase.isProgram documentation> 
isProgram ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLProgram -> m GLboolean
isProgram self program
  = liftIO
      (js_isProgram (toWebGLRenderingContextBase self)
         (maybeToOptional program))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isProgram Mozilla WebGLRenderingContextBase.isProgram documentation> 
isProgram_ ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> m ()
isProgram_ self program
  = liftIO
      (void
         (js_isProgram (toWebGLRenderingContextBase self)
            (maybeToOptional program)))
 
foreign import javascript unsafe "$1[\"isRenderbuffer\"]($2)"
        js_isRenderbuffer ::
        WebGLRenderingContextBase ->
          Optional WebGLRenderbuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isRenderbuffer Mozilla WebGLRenderingContextBase.isRenderbuffer documentation> 
isRenderbuffer ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> Maybe WebGLRenderbuffer -> m GLboolean
isRenderbuffer self renderbuffer
  = liftIO
      (js_isRenderbuffer (toWebGLRenderingContextBase self)
         (maybeToOptional renderbuffer))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isRenderbuffer Mozilla WebGLRenderingContextBase.isRenderbuffer documentation> 
isRenderbuffer_ ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLRenderbuffer -> m ()
isRenderbuffer_ self renderbuffer
  = liftIO
      (void
         (js_isRenderbuffer (toWebGLRenderingContextBase self)
            (maybeToOptional renderbuffer)))
 
foreign import javascript unsafe "$1[\"isShader\"]($2)" js_isShader
        ::
        WebGLRenderingContextBase -> Optional WebGLShader -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isShader Mozilla WebGLRenderingContextBase.isShader documentation> 
isShader ::
         (MonadIO m, IsWebGLRenderingContextBase self) =>
           self -> Maybe WebGLShader -> m GLboolean
isShader self shader
  = liftIO
      (js_isShader (toWebGLRenderingContextBase self)
         (maybeToOptional shader))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isShader Mozilla WebGLRenderingContextBase.isShader documentation> 
isShader_ ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLShader -> m ()
isShader_ self shader
  = liftIO
      (void
         (js_isShader (toWebGLRenderingContextBase self)
            (maybeToOptional shader)))
 
foreign import javascript unsafe "$1[\"isTexture\"]($2)"
        js_isTexture ::
        WebGLRenderingContextBase -> Optional WebGLTexture -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isTexture Mozilla WebGLRenderingContextBase.isTexture documentation> 
isTexture ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLTexture -> m GLboolean
isTexture self texture
  = liftIO
      (js_isTexture (toWebGLRenderingContextBase self)
         (maybeToOptional texture))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.isTexture Mozilla WebGLRenderingContextBase.isTexture documentation> 
isTexture_ ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLTexture -> m ()
isTexture_ self texture
  = liftIO
      (void
         (js_isTexture (toWebGLRenderingContextBase self)
            (maybeToOptional texture)))
 
foreign import javascript unsafe "$1[\"lineWidth\"]($2)"
        js_lineWidth :: WebGLRenderingContextBase -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.lineWidth Mozilla WebGLRenderingContextBase.lineWidth documentation> 
lineWidth ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLfloat -> m ()
lineWidth self width
  = liftIO (js_lineWidth (toWebGLRenderingContextBase self) width)
 
foreign import javascript unsafe "$1[\"linkProgram\"]($2)"
        js_linkProgram ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.linkProgram Mozilla WebGLRenderingContextBase.linkProgram documentation> 
linkProgram ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> Maybe WebGLProgram -> m ()
linkProgram self program
  = liftIO
      (js_linkProgram (toWebGLRenderingContextBase self)
         (maybeToOptional program))
 
foreign import javascript unsafe "$1[\"pixelStorei\"]($2, $3)"
        js_pixelStorei ::
        WebGLRenderingContextBase -> GLenum -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.pixelStorei Mozilla WebGLRenderingContextBase.pixelStorei documentation> 
pixelStorei ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> GLint -> m ()
pixelStorei self pname param
  = liftIO
      (js_pixelStorei (toWebGLRenderingContextBase self) pname param)
 
foreign import javascript unsafe "$1[\"polygonOffset\"]($2, $3)"
        js_polygonOffset ::
        WebGLRenderingContextBase -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.polygonOffset Mozilla WebGLRenderingContextBase.polygonOffset documentation> 
polygonOffset ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLfloat -> GLfloat -> m ()
polygonOffset self factor units
  = liftIO
      (js_polygonOffset (toWebGLRenderingContextBase self) factor units)
 
foreign import javascript unsafe
        "$1[\"readPixels\"]($2, $3, $4, $5,\n$6, $7, $8)" js_readPixels ::
        WebGLRenderingContextBase ->
          GLint ->
            GLint ->
              GLsizei -> GLsizei -> GLenum -> GLenum -> ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.readPixels Mozilla WebGLRenderingContextBase.readPixels documentation> 
readPixels ::
           (MonadIO m, IsWebGLRenderingContextBase self,
            IsArrayBufferView pixels) =>
             self ->
               GLint ->
                 GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> pixels -> m ()
readPixels self x y width height format type' pixels
  = liftIO
      (js_readPixels (toWebGLRenderingContextBase self) x y width height
         format
         type'
         (toArrayBufferView pixels))
 
foreign import javascript unsafe "$1[\"releaseShaderCompiler\"]()"
        js_releaseShaderCompiler :: WebGLRenderingContextBase -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.releaseShaderCompiler Mozilla WebGLRenderingContextBase.releaseShaderCompiler documentation> 
releaseShaderCompiler ::
                      (MonadIO m, IsWebGLRenderingContextBase self) => self -> m ()
releaseShaderCompiler self
  = liftIO
      (js_releaseShaderCompiler (toWebGLRenderingContextBase self))
 
foreign import javascript unsafe
        "$1[\"renderbufferStorage\"]($2,\n$3, $4, $5)"
        js_renderbufferStorage ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.renderbufferStorage Mozilla WebGLRenderingContextBase.renderbufferStorage documentation> 
renderbufferStorage ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> GLsizei -> GLsizei -> m ()
renderbufferStorage self target internalformat width height
  = liftIO
      (js_renderbufferStorage (toWebGLRenderingContextBase self) target
         internalformat
         width
         height)
 
foreign import javascript unsafe "$1[\"sampleCoverage\"]($2, $3)"
        js_sampleCoverage ::
        WebGLRenderingContextBase -> GLclampf -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.sampleCoverage Mozilla WebGLRenderingContextBase.sampleCoverage documentation> 
sampleCoverage ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLclampf -> GLboolean -> m ()
sampleCoverage self value invert
  = liftIO
      (js_sampleCoverage (toWebGLRenderingContextBase self) value invert)
 
foreign import javascript unsafe "$1[\"scissor\"]($2, $3, $4, $5)"
        js_scissor ::
        WebGLRenderingContextBase ->
          GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.scissor Mozilla WebGLRenderingContextBase.scissor documentation> 
scissor ::
        (MonadIO m, IsWebGLRenderingContextBase self) =>
          self -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
scissor self x y width height
  = liftIO
      (js_scissor (toWebGLRenderingContextBase self) x y width height)
 
foreign import javascript unsafe "$1[\"shaderSource\"]($2, $3)"
        js_shaderSource ::
        WebGLRenderingContextBase ->
          Optional WebGLShader -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.shaderSource Mozilla WebGLRenderingContextBase.shaderSource documentation> 
shaderSource ::
             (MonadIO m, IsWebGLRenderingContextBase self, ToJSString string) =>
               self -> Maybe WebGLShader -> string -> m ()
shaderSource self shader string
  = liftIO
      (js_shaderSource (toWebGLRenderingContextBase self)
         (maybeToOptional shader)
         (toJSString string))
 
foreign import javascript unsafe "$1[\"stencilFunc\"]($2, $3, $4)"
        js_stencilFunc ::
        WebGLRenderingContextBase -> GLenum -> GLint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilFunc Mozilla WebGLRenderingContextBase.stencilFunc documentation> 
stencilFunc ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> GLenum -> GLint -> GLuint -> m ()
stencilFunc self func ref mask
  = liftIO
      (js_stencilFunc (toWebGLRenderingContextBase self) func ref mask)
 
foreign import javascript unsafe
        "$1[\"stencilFuncSeparate\"]($2,\n$3, $4, $5)"
        js_stencilFuncSeparate ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> GLint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilFuncSeparate Mozilla WebGLRenderingContextBase.stencilFuncSeparate documentation> 
stencilFuncSeparate ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLenum -> GLint -> GLuint -> m ()
stencilFuncSeparate self face func ref mask
  = liftIO
      (js_stencilFuncSeparate (toWebGLRenderingContextBase self) face
         func
         ref
         mask)
 
foreign import javascript unsafe "$1[\"stencilMask\"]($2)"
        js_stencilMask :: WebGLRenderingContextBase -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilMask Mozilla WebGLRenderingContextBase.stencilMask documentation> 
stencilMask ::
            (MonadIO m, IsWebGLRenderingContextBase self) =>
              self -> GLuint -> m ()
stencilMask self mask
  = liftIO (js_stencilMask (toWebGLRenderingContextBase self) mask)
 
foreign import javascript unsafe
        "$1[\"stencilMaskSeparate\"]($2,\n$3)" js_stencilMaskSeparate ::
        WebGLRenderingContextBase -> GLenum -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilMaskSeparate Mozilla WebGLRenderingContextBase.stencilMaskSeparate documentation> 
stencilMaskSeparate ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self -> GLenum -> GLuint -> m ()
stencilMaskSeparate self face mask
  = liftIO
      (js_stencilMaskSeparate (toWebGLRenderingContextBase self) face
         mask)
 
foreign import javascript unsafe "$1[\"stencilOp\"]($2, $3, $4)"
        js_stencilOp ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilOp Mozilla WebGLRenderingContextBase.stencilOp documentation> 
stencilOp ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> GLenum -> GLenum -> GLenum -> m ()
stencilOp self fail zfail zpass
  = liftIO
      (js_stencilOp (toWebGLRenderingContextBase self) fail zfail zpass)
 
foreign import javascript unsafe
        "$1[\"stencilOpSeparate\"]($2, $3,\n$4, $5)" js_stencilOpSeparate
        ::
        WebGLRenderingContextBase ->
          GLenum -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.stencilOpSeparate Mozilla WebGLRenderingContextBase.stencilOpSeparate documentation> 
stencilOpSeparate ::
                  (MonadIO m, IsWebGLRenderingContextBase self) =>
                    self -> GLenum -> GLenum -> GLenum -> GLenum -> m ()
stencilOpSeparate self face fail zfail zpass
  = liftIO
      (js_stencilOpSeparate (toWebGLRenderingContextBase self) face fail
         zfail
         zpass)
 
foreign import javascript unsafe
        "$1[\"texParameterf\"]($2, $3, $4)" js_texParameterf ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texParameterf Mozilla WebGLRenderingContextBase.texParameterf documentation> 
texParameterf ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLenum -> GLfloat -> m ()
texParameterf self target pname param
  = liftIO
      (js_texParameterf (toWebGLRenderingContextBase self) target pname
         param)
 
foreign import javascript unsafe
        "$1[\"texParameteri\"]($2, $3, $4)" js_texParameteri ::
        WebGLRenderingContextBase -> GLenum -> GLenum -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texParameteri Mozilla WebGLRenderingContextBase.texParameteri documentation> 
texParameteri ::
              (MonadIO m, IsWebGLRenderingContextBase self) =>
                self -> GLenum -> GLenum -> GLint -> m ()
texParameteri self target pname param
  = liftIO
      (js_texParameteri (toWebGLRenderingContextBase self) target pname
         param)
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        js_texImage2DView ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLenum ->
                GLsizei ->
                  GLsizei ->
                    GLint -> GLenum -> GLenum -> Optional ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texImage2D Mozilla WebGLRenderingContextBase.texImage2D documentation> 
texImage2DView ::
               (MonadIO m, IsWebGLRenderingContextBase self,
                IsArrayBufferView pixels) =>
                 self ->
                   GLenum ->
                     GLint ->
                       GLenum ->
                         GLsizei ->
                           GLsizei -> GLint -> GLenum -> GLenum -> Maybe pixels -> m ()
texImage2DView self target level internalformat width height border
  format type' pixels
  = liftIO
      (js_texImage2DView (toWebGLRenderingContextBase self) target level
         internalformat
         width
         height
         border
         format
         type'
         (maybeToOptional (fmap toArrayBufferView pixels)))
 
foreign import javascript safe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7)" js_texImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLenum -> GLenum -> GLenum -> Optional TexImageSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texImage2D Mozilla WebGLRenderingContextBase.texImage2D documentation> 
texImage2D ::
           (MonadIO m, IsWebGLRenderingContextBase self,
            IsTexImageSource source) =>
             self ->
               GLenum ->
                 GLint -> GLenum -> GLenum -> GLenum -> Maybe source -> m ()
texImage2D self target level internalformat format type' source
  = liftIO
      (js_texImage2D (toWebGLRenderingContextBase self) target level
         internalformat
         format
         type'
         (maybeToOptional (fmap toTexImageSource source)))
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10)"
        js_texSubImage2DView ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLsizei ->
                    GLsizei -> GLenum -> GLenum -> Optional ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texSubImage2D Mozilla WebGLRenderingContextBase.texSubImage2D documentation> 
texSubImage2DView ::
                  (MonadIO m, IsWebGLRenderingContextBase self,
                   IsArrayBufferView pixels) =>
                    self ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLsizei -> GLsizei -> GLenum -> GLenum -> Maybe pixels -> m ()
texSubImage2DView self target level xoffset yoffset width height
  format type' pixels
  = liftIO
      (js_texSubImage2DView (toWebGLRenderingContextBase self) target
         level
         xoffset
         yoffset
         width
         height
         format
         type'
         (maybeToOptional (fmap toArrayBufferView pixels)))
 
foreign import javascript safe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8)"
        js_texSubImage2D ::
        WebGLRenderingContextBase ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLenum -> GLenum -> Optional TexImageSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.texSubImage2D Mozilla WebGLRenderingContextBase.texSubImage2D documentation> 
texSubImage2D ::
              (MonadIO m, IsWebGLRenderingContextBase self,
               IsTexImageSource source) =>
                self ->
                  GLenum ->
                    GLint -> GLint -> GLint -> GLenum -> GLenum -> Maybe source -> m ()
texSubImage2D self target level xoffset yoffset format type' source
  = liftIO
      (js_texSubImage2D (toWebGLRenderingContextBase self) target level
         xoffset
         yoffset
         format
         type'
         (maybeToOptional (fmap toTexImageSource source)))
 
foreign import javascript unsafe "$1[\"uniform1f\"]($2, $3)"
        js_uniform1f ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1f Mozilla WebGLRenderingContextBase.uniform1f documentation> 
uniform1f ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLfloat -> m ()
uniform1f self location x
  = liftIO
      (js_uniform1f (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x)
 
foreign import javascript unsafe "$1[\"uniform2f\"]($2, $3, $4)"
        js_uniform2f ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2f Mozilla WebGLRenderingContextBase.uniform2f documentation> 
uniform2f ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLfloat -> GLfloat -> m ()
uniform2f self location x y
  = liftIO
      (js_uniform2f (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"uniform3f\"]($2, $3, $4, $5)" js_uniform3f ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation ->
            GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3f Mozilla WebGLRenderingContextBase.uniform3f documentation> 
uniform3f ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation -> GLfloat -> GLfloat -> GLfloat -> m ()
uniform3f self location x y z
  = liftIO
      (js_uniform3f (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y
         z)
 
foreign import javascript unsafe
        "$1[\"uniform4f\"]($2, $3, $4, $5,\n$6)" js_uniform4f ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation ->
            GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4f Mozilla WebGLRenderingContextBase.uniform4f documentation> 
uniform4f ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation ->
                GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
uniform4f self location x y z w
  = liftIO
      (js_uniform4f (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y
         z
         w)
 
foreign import javascript unsafe "$1[\"uniform1i\"]($2, $3)"
        js_uniform1i ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1i Mozilla WebGLRenderingContextBase.uniform1i documentation> 
uniform1i ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLint -> m ()
uniform1i self location x
  = liftIO
      (js_uniform1i (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x)
 
foreign import javascript unsafe "$1[\"uniform2i\"]($2, $3, $4)"
        js_uniform2i ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2i Mozilla WebGLRenderingContextBase.uniform2i documentation> 
uniform2i ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> Maybe WebGLUniformLocation -> GLint -> GLint -> m ()
uniform2i self location x y
  = liftIO
      (js_uniform2i (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y)
 
foreign import javascript unsafe
        "$1[\"uniform3i\"]($2, $3, $4, $5)" js_uniform3i ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3i Mozilla WebGLRenderingContextBase.uniform3i documentation> 
uniform3i ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation -> GLint -> GLint -> GLint -> m ()
uniform3i self location x y z
  = liftIO
      (js_uniform3i (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y
         z)
 
foreign import javascript unsafe
        "$1[\"uniform4i\"]($2, $3, $4, $5,\n$6)" js_uniform4i ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation ->
            GLint -> GLint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4i Mozilla WebGLRenderingContextBase.uniform4i documentation> 
uniform4i ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self ->
              Maybe WebGLUniformLocation ->
                GLint -> GLint -> GLint -> GLint -> m ()
uniform4i self location x y z w
  = liftIO
      (js_uniform4i (toWebGLRenderingContextBase self)
         (maybeToOptional location)
         x
         y
         z
         w)
 
foreign import javascript unsafe "$1[\"uniform1fv\"]($2, $3)"
        js_uniform1fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1fv Mozilla WebGLRenderingContextBase.uniform1fv documentation> 
uniform1fv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform1fv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform1fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Float32List v'))
 
foreign import javascript unsafe "$1[\"uniform2fv\"]($2, $3)"
        js_uniform2fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2fv Mozilla WebGLRenderingContextBase.uniform2fv documentation> 
uniform2fv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform2fv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform2fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Float32List v'))
 
foreign import javascript unsafe "$1[\"uniform3fv\"]($2, $3)"
        js_uniform3fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3fv Mozilla WebGLRenderingContextBase.uniform3fv documentation> 
uniform3fv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform3fv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform3fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Float32List v'))
 
foreign import javascript unsafe "$1[\"uniform4fv\"]($2, $3)"
        js_uniform4fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4fv Mozilla WebGLRenderingContextBase.uniform4fv documentation> 
uniform4fv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsFloat32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform4fv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform4fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Float32List v'))
 
foreign import javascript unsafe "$1[\"uniform1iv\"]($2, $3)"
        js_uniform1iv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Int32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform1iv Mozilla WebGLRenderingContextBase.uniform1iv documentation> 
uniform1iv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform1iv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform1iv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Int32List v'))
 
foreign import javascript unsafe "$1[\"uniform2iv\"]($2, $3)"
        js_uniform2iv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Int32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform2iv Mozilla WebGLRenderingContextBase.uniform2iv documentation> 
uniform2iv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform2iv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform2iv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Int32List v'))
 
foreign import javascript unsafe "$1[\"uniform3iv\"]($2, $3)"
        js_uniform3iv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Int32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform3iv Mozilla WebGLRenderingContextBase.uniform3iv documentation> 
uniform3iv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform3iv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform3iv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Int32List v'))
 
foreign import javascript unsafe "$1[\"uniform4iv\"]($2, $3)"
        js_uniform4iv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> Int32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniform4iv Mozilla WebGLRenderingContextBase.uniform4iv documentation> 
uniform4iv ::
           (MonadIO m, IsWebGLRenderingContextBase self, IsInt32List v) =>
             self -> Maybe WebGLUniformLocation -> v -> m ()
uniform4iv self location v
  = liftIO
      (toJSVal v >>=
         \ v' ->
           js_uniform4iv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             (Int32List v'))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix2fv\"]($2, $3,\n$4)" js_uniformMatrix2fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLboolean -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix2fv Mozilla WebGLRenderingContextBase.uniformMatrix2fv documentation> 
uniformMatrix2fv ::
                 (MonadIO m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix2fv self location transpose array
  = liftIO
      (toJSVal array >>=
         \ array' ->
           js_uniformMatrix2fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             transpose
             (Float32List array'))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix3fv\"]($2, $3,\n$4)" js_uniformMatrix3fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLboolean -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix3fv Mozilla WebGLRenderingContextBase.uniformMatrix3fv documentation> 
uniformMatrix3fv ::
                 (MonadIO m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix3fv self location transpose array
  = liftIO
      (toJSVal array >>=
         \ array' ->
           js_uniformMatrix3fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             transpose
             (Float32List array'))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix4fv\"]($2, $3,\n$4)" js_uniformMatrix4fv ::
        WebGLRenderingContextBase ->
          Optional WebGLUniformLocation -> GLboolean -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.uniformMatrix4fv Mozilla WebGLRenderingContextBase.uniformMatrix4fv documentation> 
uniformMatrix4fv ::
                 (MonadIO m, IsWebGLRenderingContextBase self,
                  IsFloat32List array) =>
                   self -> Maybe WebGLUniformLocation -> GLboolean -> array -> m ()
uniformMatrix4fv self location transpose array
  = liftIO
      (toJSVal array >>=
         \ array' ->
           js_uniformMatrix4fv (toWebGLRenderingContextBase self)
             (maybeToOptional location)
             transpose
             (Float32List array'))
 
foreign import javascript unsafe "$1[\"useProgram\"]($2)"
        js_useProgram ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.useProgram Mozilla WebGLRenderingContextBase.useProgram documentation> 
useProgram ::
           (MonadIO m, IsWebGLRenderingContextBase self) =>
             self -> Maybe WebGLProgram -> m ()
useProgram self program
  = liftIO
      (js_useProgram (toWebGLRenderingContextBase self)
         (maybeToOptional program))
 
foreign import javascript unsafe "$1[\"validateProgram\"]($2)"
        js_validateProgram ::
        WebGLRenderingContextBase -> Optional WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.validateProgram Mozilla WebGLRenderingContextBase.validateProgram documentation> 
validateProgram ::
                (MonadIO m, IsWebGLRenderingContextBase self) =>
                  self -> Maybe WebGLProgram -> m ()
validateProgram self program
  = liftIO
      (js_validateProgram (toWebGLRenderingContextBase self)
         (maybeToOptional program))
 
foreign import javascript unsafe "$1[\"vertexAttrib1f\"]($2, $3)"
        js_vertexAttrib1f ::
        WebGLRenderingContextBase -> GLuint -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib1f Mozilla WebGLRenderingContextBase.vertexAttrib1f documentation> 
vertexAttrib1f ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> m ()
vertexAttrib1f self index x
  = liftIO
      (js_vertexAttrib1f (toWebGLRenderingContextBase self) index x)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib2f\"]($2, $3, $4)" js_vertexAttrib2f ::
        WebGLRenderingContextBase -> GLuint -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib2f Mozilla WebGLRenderingContextBase.vertexAttrib2f documentation> 
vertexAttrib2f ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> m ()
vertexAttrib2f self index x y
  = liftIO
      (js_vertexAttrib2f (toWebGLRenderingContextBase self) index x y)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib3f\"]($2, $3, $4,\n$5)" js_vertexAttrib3f ::
        WebGLRenderingContextBase ->
          GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib3f Mozilla WebGLRenderingContextBase.vertexAttrib3f documentation> 
vertexAttrib3f ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> GLfloat -> m ()
vertexAttrib3f self index x y z
  = liftIO
      (js_vertexAttrib3f (toWebGLRenderingContextBase self) index x y z)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib4f\"]($2, $3, $4,\n$5, $6)" js_vertexAttrib4f ::
        WebGLRenderingContextBase ->
          GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib4f Mozilla WebGLRenderingContextBase.vertexAttrib4f documentation> 
vertexAttrib4f ::
               (MonadIO m, IsWebGLRenderingContextBase self) =>
                 self -> GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> m ()
vertexAttrib4f self index x y z w
  = liftIO
      (js_vertexAttrib4f (toWebGLRenderingContextBase self) index x y z
         w)
 
foreign import javascript unsafe "$1[\"vertexAttrib1fv\"]($2, $3)"
        js_vertexAttrib1fv ::
        WebGLRenderingContextBase -> GLuint -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib1fv Mozilla WebGLRenderingContextBase.vertexAttrib1fv documentation> 
vertexAttrib1fv ::
                (MonadIO m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib1fv self index values
  = liftIO
      (toJSVal values >>=
         \ values' ->
           js_vertexAttrib1fv (toWebGLRenderingContextBase self) index
             (Float32List values'))
 
foreign import javascript unsafe "$1[\"vertexAttrib2fv\"]($2, $3)"
        js_vertexAttrib2fv ::
        WebGLRenderingContextBase -> GLuint -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib2fv Mozilla WebGLRenderingContextBase.vertexAttrib2fv documentation> 
vertexAttrib2fv ::
                (MonadIO m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib2fv self index values
  = liftIO
      (toJSVal values >>=
         \ values' ->
           js_vertexAttrib2fv (toWebGLRenderingContextBase self) index
             (Float32List values'))
 
foreign import javascript unsafe "$1[\"vertexAttrib3fv\"]($2, $3)"
        js_vertexAttrib3fv ::
        WebGLRenderingContextBase -> GLuint -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib3fv Mozilla WebGLRenderingContextBase.vertexAttrib3fv documentation> 
vertexAttrib3fv ::
                (MonadIO m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib3fv self index values
  = liftIO
      (toJSVal values >>=
         \ values' ->
           js_vertexAttrib3fv (toWebGLRenderingContextBase self) index
             (Float32List values'))
 
foreign import javascript unsafe "$1[\"vertexAttrib4fv\"]($2, $3)"
        js_vertexAttrib4fv ::
        WebGLRenderingContextBase -> GLuint -> Float32List -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttrib4fv Mozilla WebGLRenderingContextBase.vertexAttrib4fv documentation> 
vertexAttrib4fv ::
                (MonadIO m, IsWebGLRenderingContextBase self,
                 IsFloat32List values) =>
                  self -> GLuint -> values -> m ()
vertexAttrib4fv self index values
  = liftIO
      (toJSVal values >>=
         \ values' ->
           js_vertexAttrib4fv (toWebGLRenderingContextBase self) index
             (Float32List values'))
 
foreign import javascript unsafe
        "$1[\"vertexAttribPointer\"]($2,\n$3, $4, $5, $6, $7)"
        js_vertexAttribPointer ::
        WebGLRenderingContextBase ->
          GLuint ->
            GLint -> GLenum -> GLboolean -> GLsizei -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.vertexAttribPointer Mozilla WebGLRenderingContextBase.vertexAttribPointer documentation> 
vertexAttribPointer ::
                    (MonadIO m, IsWebGLRenderingContextBase self) =>
                      self ->
                        GLuint ->
                          GLint -> GLenum -> GLboolean -> GLsizei -> GLintptr -> m ()
vertexAttribPointer self indx size type' normalized stride offset
  = liftIO
      (js_vertexAttribPointer (toWebGLRenderingContextBase self) indx
         size
         type'
         normalized
         stride
         (fromIntegral offset))
 
foreign import javascript unsafe "$1[\"viewport\"]($2, $3, $4, $5)"
        js_viewport ::
        WebGLRenderingContextBase ->
          GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.viewport Mozilla WebGLRenderingContextBase.viewport documentation> 
viewport ::
         (MonadIO m, IsWebGLRenderingContextBase self) =>
           self -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
viewport self x y width height
  = liftIO
      (js_viewport (toWebGLRenderingContextBase self) x y width height)
pattern DEPTH_BUFFER_BIT = 256
pattern STENCIL_BUFFER_BIT = 1024
pattern COLOR_BUFFER_BIT = 16384
pattern POINTS = 0
pattern LINES = 1
pattern LINE_LOOP = 2
pattern LINE_STRIP = 3
pattern TRIANGLES = 4
pattern TRIANGLE_STRIP = 5
pattern TRIANGLE_FAN = 6
pattern ZERO = 0
pattern ONE = 1
pattern SRC_COLOR = 768
pattern ONE_MINUS_SRC_COLOR = 769
pattern SRC_ALPHA = 770
pattern ONE_MINUS_SRC_ALPHA = 771
pattern DST_ALPHA = 772
pattern ONE_MINUS_DST_ALPHA = 773
pattern DST_COLOR = 774
pattern ONE_MINUS_DST_COLOR = 775
pattern SRC_ALPHA_SATURATE = 776
pattern FUNC_ADD = 32774
pattern BLEND_EQUATION = 32777
pattern BLEND_EQUATION_RGB = 32777
pattern BLEND_EQUATION_ALPHA = 34877
pattern FUNC_SUBTRACT = 32778
pattern FUNC_REVERSE_SUBTRACT = 32779
pattern BLEND_DST_RGB = 32968
pattern BLEND_SRC_RGB = 32969
pattern BLEND_DST_ALPHA = 32970
pattern BLEND_SRC_ALPHA = 32971
pattern CONSTANT_COLOR = 32769
pattern ONE_MINUS_CONSTANT_COLOR = 32770
pattern CONSTANT_ALPHA = 32771
pattern ONE_MINUS_CONSTANT_ALPHA = 32772
pattern BLEND_COLOR = 32773
pattern ARRAY_BUFFER = 34962
pattern ELEMENT_ARRAY_BUFFER = 34963
pattern ARRAY_BUFFER_BINDING = 34964
pattern ELEMENT_ARRAY_BUFFER_BINDING = 34965
pattern STREAM_DRAW = 35040
pattern STATIC_DRAW = 35044
pattern DYNAMIC_DRAW = 35048
pattern BUFFER_SIZE = 34660
pattern BUFFER_USAGE = 34661
pattern CURRENT_VERTEX_ATTRIB = 34342
pattern FRONT = 1028
pattern BACK = 1029
pattern FRONT_AND_BACK = 1032
pattern TEXTURE_2D = 3553
pattern CULL_FACE = 2884
pattern BLEND = 3042
pattern DITHER = 3024
pattern STENCIL_TEST = 2960
pattern DEPTH_TEST = 2929
pattern SCISSOR_TEST = 3089
pattern POLYGON_OFFSET_FILL = 32823
pattern SAMPLE_ALPHA_TO_COVERAGE = 32926
pattern SAMPLE_COVERAGE = 32928
pattern NO_ERROR = 0
pattern INVALID_ENUM = 1280
pattern INVALID_VALUE = 1281
pattern INVALID_OPERATION = 1282
pattern OUT_OF_MEMORY = 1285
pattern CW = 2304
pattern CCW = 2305
pattern LINE_WIDTH = 2849
pattern ALIASED_POINT_SIZE_RANGE = 33901
pattern ALIASED_LINE_WIDTH_RANGE = 33902
pattern CULL_FACE_MODE = 2885
pattern FRONT_FACE = 2886
pattern DEPTH_RANGE = 2928
pattern DEPTH_WRITEMASK = 2930
pattern DEPTH_CLEAR_VALUE = 2931
pattern DEPTH_FUNC = 2932
pattern STENCIL_CLEAR_VALUE = 2961
pattern STENCIL_FUNC = 2962
pattern STENCIL_FAIL = 2964
pattern STENCIL_PASS_DEPTH_FAIL = 2965
pattern STENCIL_PASS_DEPTH_PASS = 2966
pattern STENCIL_REF = 2967
pattern STENCIL_VALUE_MASK = 2963
pattern STENCIL_WRITEMASK = 2968
pattern STENCIL_BACK_FUNC = 34816
pattern STENCIL_BACK_FAIL = 34817
pattern STENCIL_BACK_PASS_DEPTH_FAIL = 34818
pattern STENCIL_BACK_PASS_DEPTH_PASS = 34819
pattern STENCIL_BACK_REF = 36003
pattern STENCIL_BACK_VALUE_MASK = 36004
pattern STENCIL_BACK_WRITEMASK = 36005
pattern VIEWPORT = 2978
pattern SCISSOR_BOX = 3088
pattern COLOR_CLEAR_VALUE = 3106
pattern COLOR_WRITEMASK = 3107
pattern UNPACK_ALIGNMENT = 3317
pattern PACK_ALIGNMENT = 3333
pattern MAX_TEXTURE_SIZE = 3379
pattern MAX_VIEWPORT_DIMS = 3386
pattern SUBPIXEL_BITS = 3408
pattern RED_BITS = 3410
pattern GREEN_BITS = 3411
pattern BLUE_BITS = 3412
pattern ALPHA_BITS = 3413
pattern DEPTH_BITS = 3414
pattern STENCIL_BITS = 3415
pattern POLYGON_OFFSET_UNITS = 10752
pattern POLYGON_OFFSET_FACTOR = 32824
pattern TEXTURE_BINDING_2D = 32873
pattern SAMPLE_BUFFERS = 32936
pattern SAMPLES = 32937
pattern SAMPLE_COVERAGE_VALUE = 32938
pattern SAMPLE_COVERAGE_INVERT = 32939
pattern COMPRESSED_TEXTURE_FORMATS = 34467
pattern DONT_CARE = 4352
pattern FASTEST = 4353
pattern NICEST = 4354
pattern GENERATE_MIPMAP_HINT = 33170
pattern BYTE = 5120
pattern UNSIGNED_BYTE = 5121
pattern SHORT = 5122
pattern UNSIGNED_SHORT = 5123
pattern INT = 5124
pattern UNSIGNED_INT = 5125
pattern FLOAT = 5126
pattern DEPTH_COMPONENT = 6402
pattern ALPHA = 6406
pattern RGB = 6407
pattern RGBA = 6408
pattern LUMINANCE = 6409
pattern LUMINANCE_ALPHA = 6410
pattern UNSIGNED_SHORT_4_4_4_4 = 32819
pattern UNSIGNED_SHORT_5_5_5_1 = 32820
pattern UNSIGNED_SHORT_5_6_5 = 33635
pattern FRAGMENT_SHADER = 35632
pattern VERTEX_SHADER = 35633
pattern MAX_VERTEX_ATTRIBS = 34921
pattern MAX_VERTEX_UNIFORM_VECTORS = 36347
pattern MAX_VARYING_VECTORS = 36348
pattern MAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661
pattern MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660
pattern MAX_TEXTURE_IMAGE_UNITS = 34930
pattern MAX_FRAGMENT_UNIFORM_VECTORS = 36349
pattern SHADER_TYPE = 35663
pattern DELETE_STATUS = 35712
pattern LINK_STATUS = 35714
pattern VALIDATE_STATUS = 35715
pattern ATTACHED_SHADERS = 35717
pattern ACTIVE_UNIFORMS = 35718
pattern ACTIVE_ATTRIBUTES = 35721
pattern SHADING_LANGUAGE_VERSION = 35724
pattern CURRENT_PROGRAM = 35725
pattern NEVER = 512
pattern LESS = 513
pattern EQUAL = 514
pattern LEQUAL = 515
pattern GREATER = 516
pattern NOTEQUAL = 517
pattern GEQUAL = 518
pattern ALWAYS = 519
pattern KEEP = 7680
pattern REPLACE = 7681
pattern INCR = 7682
pattern DECR = 7683
pattern INVERT = 5386
pattern INCR_WRAP = 34055
pattern DECR_WRAP = 34056
pattern VENDOR = 7936
pattern RENDERER = 7937
pattern VERSION = 7938
pattern NEAREST = 9728
pattern LINEAR = 9729
pattern NEAREST_MIPMAP_NEAREST = 9984
pattern LINEAR_MIPMAP_NEAREST = 9985
pattern NEAREST_MIPMAP_LINEAR = 9986
pattern LINEAR_MIPMAP_LINEAR = 9987
pattern TEXTURE_MAG_FILTER = 10240
pattern TEXTURE_MIN_FILTER = 10241
pattern TEXTURE_WRAP_S = 10242
pattern TEXTURE_WRAP_T = 10243
pattern TEXTURE = 5890
pattern TEXTURE_CUBE_MAP = 34067
pattern TEXTURE_BINDING_CUBE_MAP = 34068
pattern TEXTURE_CUBE_MAP_POSITIVE_X = 34069
pattern TEXTURE_CUBE_MAP_NEGATIVE_X = 34070
pattern TEXTURE_CUBE_MAP_POSITIVE_Y = 34071
pattern TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072
pattern TEXTURE_CUBE_MAP_POSITIVE_Z = 34073
pattern TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074
pattern MAX_CUBE_MAP_TEXTURE_SIZE = 34076
pattern TEXTURE0 = 33984
pattern TEXTURE1 = 33985
pattern TEXTURE2 = 33986
pattern TEXTURE3 = 33987
pattern TEXTURE4 = 33988
pattern TEXTURE5 = 33989
pattern TEXTURE6 = 33990
pattern TEXTURE7 = 33991
pattern TEXTURE8 = 33992
pattern TEXTURE9 = 33993
pattern TEXTURE10 = 33994
pattern TEXTURE11 = 33995
pattern TEXTURE12 = 33996
pattern TEXTURE13 = 33997
pattern TEXTURE14 = 33998
pattern TEXTURE15 = 33999
pattern TEXTURE16 = 34000
pattern TEXTURE17 = 34001
pattern TEXTURE18 = 34002
pattern TEXTURE19 = 34003
pattern TEXTURE20 = 34004
pattern TEXTURE21 = 34005
pattern TEXTURE22 = 34006
pattern TEXTURE23 = 34007
pattern TEXTURE24 = 34008
pattern TEXTURE25 = 34009
pattern TEXTURE26 = 34010
pattern TEXTURE27 = 34011
pattern TEXTURE28 = 34012
pattern TEXTURE29 = 34013
pattern TEXTURE30 = 34014
pattern TEXTURE31 = 34015
pattern ACTIVE_TEXTURE = 34016
pattern REPEAT = 10497
pattern CLAMP_TO_EDGE = 33071
pattern MIRRORED_REPEAT = 33648
pattern FLOAT_VEC2 = 35664
pattern FLOAT_VEC3 = 35665
pattern FLOAT_VEC4 = 35666
pattern INT_VEC2 = 35667
pattern INT_VEC3 = 35668
pattern INT_VEC4 = 35669
pattern BOOL = 35670
pattern BOOL_VEC2 = 35671
pattern BOOL_VEC3 = 35672
pattern BOOL_VEC4 = 35673
pattern FLOAT_MAT2 = 35674
pattern FLOAT_MAT3 = 35675
pattern FLOAT_MAT4 = 35676
pattern SAMPLER_2D = 35678
pattern SAMPLER_CUBE = 35680
pattern VERTEX_ATTRIB_ARRAY_ENABLED = 34338
pattern VERTEX_ATTRIB_ARRAY_SIZE = 34339
pattern VERTEX_ATTRIB_ARRAY_STRIDE = 34340
pattern VERTEX_ATTRIB_ARRAY_TYPE = 34341
pattern VERTEX_ATTRIB_ARRAY_NORMALIZED = 34922
pattern VERTEX_ATTRIB_ARRAY_POINTER = 34373
pattern VERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975
pattern IMPLEMENTATION_COLOR_READ_TYPE = 35738
pattern IMPLEMENTATION_COLOR_READ_FORMAT = 35739
pattern COMPILE_STATUS = 35713
pattern LOW_FLOAT = 36336
pattern MEDIUM_FLOAT = 36337
pattern HIGH_FLOAT = 36338
pattern LOW_INT = 36339
pattern MEDIUM_INT = 36340
pattern HIGH_INT = 36341
pattern FRAMEBUFFER = 36160
pattern RENDERBUFFER = 36161
pattern RGBA4 = 32854
pattern RGB5_A1 = 32855
pattern RGB565 = 36194
pattern DEPTH_COMPONENT16 = 33189
pattern STENCIL_INDEX = 6401
pattern STENCIL_INDEX8 = 36168
pattern DEPTH_STENCIL = 34041
pattern RENDERBUFFER_WIDTH = 36162
pattern RENDERBUFFER_HEIGHT = 36163
pattern RENDERBUFFER_INTERNAL_FORMAT = 36164
pattern RENDERBUFFER_RED_SIZE = 36176
pattern RENDERBUFFER_GREEN_SIZE = 36177
pattern RENDERBUFFER_BLUE_SIZE = 36178
pattern RENDERBUFFER_ALPHA_SIZE = 36179
pattern RENDERBUFFER_DEPTH_SIZE = 36180
pattern RENDERBUFFER_STENCIL_SIZE = 36181
pattern FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048
pattern FRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051
pattern COLOR_ATTACHMENT0 = 36064
pattern DEPTH_ATTACHMENT = 36096
pattern STENCIL_ATTACHMENT = 36128
pattern DEPTH_STENCIL_ATTACHMENT = 33306
pattern NONE = 0
pattern FRAMEBUFFER_COMPLETE = 36053
pattern FRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054
pattern FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055
pattern FRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057
pattern FRAMEBUFFER_UNSUPPORTED = 36061
pattern FRAMEBUFFER_BINDING = 36006
pattern RENDERBUFFER_BINDING = 36007
pattern MAX_RENDERBUFFER_SIZE = 34024
pattern INVALID_FRAMEBUFFER_OPERATION = 1286
pattern UNPACK_FLIP_Y_WEBGL = 37440
pattern UNPACK_PREMULTIPLY_ALPHA_WEBGL = 37441
pattern CONTEXT_LOST_WEBGL = 37442
pattern UNPACK_COLORSPACE_CONVERSION_WEBGL = 37443
pattern BROWSER_DEFAULT_WEBGL = 37444
 
foreign import javascript unsafe "$1[\"canvas\"]" js_getCanvas ::
        WebGLRenderingContextBase -> IO HTMLCanvasElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.canvas Mozilla WebGLRenderingContextBase.canvas documentation> 
getCanvas ::
          (MonadIO m, IsWebGLRenderingContextBase self) =>
            self -> m HTMLCanvasElement
getCanvas self
  = liftIO (js_getCanvas (toWebGLRenderingContextBase self))
 
foreign import javascript unsafe "$1[\"drawingBufferWidth\"]"
        js_getDrawingBufferWidth :: WebGLRenderingContextBase -> IO GLsizei

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawingBufferWidth Mozilla WebGLRenderingContextBase.drawingBufferWidth documentation> 
getDrawingBufferWidth ::
                      (MonadIO m, IsWebGLRenderingContextBase self) => self -> m GLsizei
getDrawingBufferWidth self
  = liftIO
      (js_getDrawingBufferWidth (toWebGLRenderingContextBase self))
 
foreign import javascript unsafe "$1[\"drawingBufferHeight\"]"
        js_getDrawingBufferHeight ::
        WebGLRenderingContextBase -> IO GLsizei

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContextBase.drawingBufferHeight Mozilla WebGLRenderingContextBase.drawingBufferHeight documentation> 
getDrawingBufferHeight ::
                       (MonadIO m, IsWebGLRenderingContextBase self) => self -> m GLsizei
getDrawingBufferHeight self
  = liftIO
      (js_getDrawingBufferHeight (toWebGLRenderingContextBase self))