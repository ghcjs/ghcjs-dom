{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGL2RenderingContext
       (js_copyBufferSubData, copyBufferSubData, js_getBufferSubDataView,
        getBufferSubDataView, js_getBufferSubData, getBufferSubData,
        js_getFramebufferAttachmentParameter,
        getFramebufferAttachmentParameter, js_blitFramebuffer,
        blitFramebuffer, js_framebufferTextureLayer,
        framebufferTextureLayer, js_getInternalformatParameter,
        getInternalformatParameter, js_invalidateFramebuffer,
        invalidateFramebuffer, js_invalidateSubFramebuffer,
        invalidateSubFramebuffer, js_readBuffer, readBuffer,
        js_renderbufferStorageMultisample, renderbufferStorageMultisample,
        js_texStorage2D, texStorage2D, js_texStorage3D, texStorage3D,
        js_texImage3D, texImage3D, js_texSubImage3DView, texSubImage3DView,
        js_texSubImage3DData, texSubImage3DData, js_texSubImage3D,
        texSubImage3D, js_texSubImage3DCanvas, texSubImage3DCanvas,
        js_texSubImage3DVideo, texSubImage3DVideo, js_copyTexSubImage3D,
        copyTexSubImage3D, js_compressedTexImage3D, compressedTexImage3D,
        js_compressedTexSubImage3D, compressedTexSubImage3D,
        js_getFragDataLocation, getFragDataLocation, js_uniform1ui,
        uniform1ui, js_uniform2ui, uniform2ui, js_uniform3ui, uniform3ui,
        js_uniform4ui, uniform4ui, js_uniform1uiv, uniform1uiv,
        js_uniform2uiv, uniform2uiv, js_uniform3uiv, uniform3uiv,
        js_uniform4uiv, uniform4uiv, js_uniformMatrix2x3fv,
        uniformMatrix2x3fv, js_uniformMatrix3x2fv, uniformMatrix3x2fv,
        js_uniformMatrix2x4fv, uniformMatrix2x4fv, js_uniformMatrix4x2fv,
        uniformMatrix4x2fv, js_uniformMatrix3x4fv, uniformMatrix3x4fv,
        js_uniformMatrix4x3fv, uniformMatrix4x3fv, js_vertexAttribI4i,
        vertexAttribI4i, js_vertexAttribI4iv, vertexAttribI4iv,
        js_vertexAttribI4ui, vertexAttribI4ui, js_vertexAttribI4uiv,
        vertexAttribI4uiv, js_vertexAttribIPointer, vertexAttribIPointer,
        js_vertexAttribDivisor, vertexAttribDivisor,
        js_drawArraysInstanced, drawArraysInstanced,
        js_drawElementsInstanced, drawElementsInstanced,
        js_drawRangeElements, drawRangeElements, js_drawBuffers,
        drawBuffers, js_clearBufferiv, clearBufferiv, js_clearBufferuiv,
        clearBufferuiv, js_clearBufferfv, clearBufferfv, js_clearBufferfi,
        clearBufferfi, js_createQuery, createQuery, js_deleteQuery,
        deleteQuery, js_isQuery, isQuery, js_beginQuery, beginQuery,
        js_endQuery, endQuery, js_getQuery, getQuery, js_getQueryParameter,
        getQueryParameter, js_createSampler, createSampler,
        js_deleteSampler, deleteSampler, js_isSampler, isSampler,
        js_bindSampler, bindSampler, js_samplerParameteri,
        samplerParameteri, js_samplerParameterf, samplerParameterf,
        js_getSamplerParameter, getSamplerParameter, js_fenceSync,
        fenceSync, js_isSync, isSync, js_deleteSync, deleteSync,
        js_clientWaitSync, clientWaitSync, js_waitSync, waitSync,
        js_getSyncParameter, getSyncParameter, js_createTransformFeedback,
        createTransformFeedback, js_deleteTransformFeedback,
        deleteTransformFeedback, js_isTransformFeedback,
        isTransformFeedback, js_bindTransformFeedback,
        bindTransformFeedback, js_beginTransformFeedback,
        beginTransformFeedback, js_endTransformFeedback,
        endTransformFeedback, js_transformFeedbackVaryings,
        transformFeedbackVaryings, js_getTransformFeedbackVarying,
        getTransformFeedbackVarying, js_pauseTransformFeedback,
        pauseTransformFeedback, js_resumeTransformFeedback,
        resumeTransformFeedback, js_bindBufferBase, bindBufferBase,
        js_bindBufferRange, bindBufferRange, js_getIndexedParameter,
        getIndexedParameter, js_getUniformIndices, getUniformIndices,
        js_getActiveUniforms, getActiveUniforms, js_getUniformBlockIndex,
        getUniformBlockIndex, js_getActiveUniformBlockParameter,
        getActiveUniformBlockParameter, js_getActiveUniformBlockName,
        getActiveUniformBlockName, js_uniformBlockBinding,
        uniformBlockBinding, js_createVertexArray, createVertexArray,
        js_deleteVertexArray, deleteVertexArray, js_isVertexArray,
        isVertexArray, js_bindVertexArray, bindVertexArray,
        pattern READ_BUFFER, pattern UNPACK_ROW_LENGTH,
        pattern UNPACK_SKIP_ROWS, pattern UNPACK_SKIP_PIXELS,
        pattern PACK_ROW_LENGTH, pattern PACK_SKIP_ROWS,
        pattern PACK_SKIP_PIXELS, pattern COLOR, pattern DEPTH,
        pattern STENCIL, pattern RED, pattern RGB8, pattern RGBA8,
        pattern RGB10_A2, pattern TEXTURE_BINDING_3D,
        pattern UNPACK_SKIP_IMAGES, pattern UNPACK_IMAGE_HEIGHT,
        pattern TEXTURE_3D, pattern TEXTURE_WRAP_R,
        pattern MAX_3D_TEXTURE_SIZE, pattern UNSIGNED_INT_2_10_10_10_REV,
        pattern MAX_ELEMENTS_VERTICES, pattern MAX_ELEMENTS_INDICES,
        pattern TEXTURE_MIN_LOD, pattern TEXTURE_MAX_LOD,
        pattern TEXTURE_BASE_LEVEL, pattern TEXTURE_MAX_LEVEL, pattern MIN,
        pattern MAX, pattern DEPTH_COMPONENT24,
        pattern MAX_TEXTURE_LOD_BIAS, pattern TEXTURE_COMPARE_MODE,
        pattern TEXTURE_COMPARE_FUNC, pattern CURRENT_QUERY,
        pattern QUERY_RESULT, pattern QUERY_RESULT_AVAILABLE,
        pattern STREAM_READ, pattern STREAM_COPY, pattern STATIC_READ,
        pattern STATIC_COPY, pattern DYNAMIC_READ, pattern DYNAMIC_COPY,
        pattern MAX_DRAW_BUFFERS, pattern DRAW_BUFFER0,
        pattern DRAW_BUFFER1, pattern DRAW_BUFFER2, pattern DRAW_BUFFER3,
        pattern DRAW_BUFFER4, pattern DRAW_BUFFER5, pattern DRAW_BUFFER6,
        pattern DRAW_BUFFER7, pattern DRAW_BUFFER8, pattern DRAW_BUFFER9,
        pattern DRAW_BUFFER10, pattern DRAW_BUFFER11,
        pattern DRAW_BUFFER12, pattern DRAW_BUFFER13,
        pattern DRAW_BUFFER14, pattern DRAW_BUFFER15,
        pattern MAX_FRAGMENT_UNIFORM_COMPONENTS,
        pattern MAX_VERTEX_UNIFORM_COMPONENTS, pattern SAMPLER_3D,
        pattern SAMPLER_2D_SHADOW, pattern FRAGMENT_SHADER_DERIVATIVE_HINT,
        pattern PIXEL_PACK_BUFFER, pattern PIXEL_UNPACK_BUFFER,
        pattern PIXEL_PACK_BUFFER_BINDING,
        pattern PIXEL_UNPACK_BUFFER_BINDING, pattern FLOAT_MAT2x3,
        pattern FLOAT_MAT2x4, pattern FLOAT_MAT3x2, pattern FLOAT_MAT3x4,
        pattern FLOAT_MAT4x2, pattern FLOAT_MAT4x3, pattern SRGB,
        pattern SRGB8, pattern SRGB8_ALPHA8,
        pattern COMPARE_REF_TO_TEXTURE, pattern RGBA32F, pattern RGB32F,
        pattern RGBA16F, pattern RGB16F,
        pattern VERTEX_ATTRIB_ARRAY_INTEGER,
        pattern MAX_ARRAY_TEXTURE_LAYERS, pattern MIN_PROGRAM_TEXEL_OFFSET,
        pattern MAX_PROGRAM_TEXEL_OFFSET, pattern MAX_VARYING_COMPONENTS,
        pattern TEXTURE_2D_ARRAY, pattern TEXTURE_BINDING_2D_ARRAY,
        pattern R11F_G11F_B10F, pattern UNSIGNED_INT_10F_11F_11F_REV,
        pattern RGB9_E5, pattern UNSIGNED_INT_5_9_9_9_REV,
        pattern TRANSFORM_FEEDBACK_BUFFER_MODE,
        pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS,
        pattern TRANSFORM_FEEDBACK_VARYINGS,
        pattern TRANSFORM_FEEDBACK_BUFFER_START,
        pattern TRANSFORM_FEEDBACK_BUFFER_SIZE,
        pattern TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN,
        pattern RASTERIZER_DISCARD,
        pattern MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS,
        pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS,
        pattern INTERLEAVED_ATTRIBS, pattern SEPARATE_ATTRIBS,
        pattern TRANSFORM_FEEDBACK_BUFFER,
        pattern TRANSFORM_FEEDBACK_BUFFER_BINDING, pattern RGBA32UI,
        pattern RGB32UI, pattern RGBA16UI, pattern RGB16UI,
        pattern RGBA8UI, pattern RGB8UI, pattern RGBA32I, pattern RGB32I,
        pattern RGBA16I, pattern RGB16I, pattern RGBA8I, pattern RGB8I,
        pattern RED_INTEGER, pattern RGB_INTEGER, pattern RGBA_INTEGER,
        pattern SAMPLER_2D_ARRAY, pattern SAMPLER_2D_ARRAY_SHADOW,
        pattern SAMPLER_CUBE_SHADOW, pattern UNSIGNED_INT_VEC2,
        pattern UNSIGNED_INT_VEC3, pattern UNSIGNED_INT_VEC4,
        pattern INT_SAMPLER_2D, pattern INT_SAMPLER_3D,
        pattern INT_SAMPLER_CUBE, pattern INT_SAMPLER_2D_ARRAY,
        pattern UNSIGNED_INT_SAMPLER_2D, pattern UNSIGNED_INT_SAMPLER_3D,
        pattern UNSIGNED_INT_SAMPLER_CUBE,
        pattern UNSIGNED_INT_SAMPLER_2D_ARRAY, pattern DEPTH_COMPONENT32F,
        pattern DEPTH32F_STENCIL8, pattern FLOAT_32_UNSIGNED_INT_24_8_REV,
        pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING,
        pattern FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE,
        pattern FRAMEBUFFER_ATTACHMENT_RED_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_GREEN_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_BLUE_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE,
        pattern FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE,
        pattern FRAMEBUFFER_DEFAULT, pattern DEPTH_STENCIL_ATTACHMENT,
        pattern DEPTH_STENCIL, pattern UNSIGNED_INT_24_8,
        pattern DEPTH24_STENCIL8, pattern UNSIGNED_NORMALIZED,
        pattern DRAW_FRAMEBUFFER_BINDING, pattern READ_FRAMEBUFFER,
        pattern DRAW_FRAMEBUFFER, pattern READ_FRAMEBUFFER_BINDING,
        pattern RENDERBUFFER_SAMPLES,
        pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER,
        pattern MAX_COLOR_ATTACHMENTS, pattern COLOR_ATTACHMENT1,
        pattern COLOR_ATTACHMENT2, pattern COLOR_ATTACHMENT3,
        pattern COLOR_ATTACHMENT4, pattern COLOR_ATTACHMENT5,
        pattern COLOR_ATTACHMENT6, pattern COLOR_ATTACHMENT7,
        pattern COLOR_ATTACHMENT8, pattern COLOR_ATTACHMENT9,
        pattern COLOR_ATTACHMENT10, pattern COLOR_ATTACHMENT11,
        pattern COLOR_ATTACHMENT12, pattern COLOR_ATTACHMENT13,
        pattern COLOR_ATTACHMENT14, pattern COLOR_ATTACHMENT15,
        pattern FRAMEBUFFER_INCOMPLETE_MULTISAMPLE, pattern MAX_SAMPLES,
        pattern HALF_FLOAT, pattern RG, pattern RG_INTEGER, pattern R8,
        pattern RG8, pattern R16F, pattern R32F, pattern RG16F,
        pattern RG32F, pattern R8I, pattern R8UI, pattern R16I,
        pattern R16UI, pattern R32I, pattern R32UI, pattern RG8I,
        pattern RG8UI, pattern RG16I, pattern RG16UI, pattern RG32I,
        pattern RG32UI, pattern VERTEX_ARRAY_BINDING, pattern R8_SNORM,
        pattern RG8_SNORM, pattern RGB8_SNORM, pattern RGBA8_SNORM,
        pattern SIGNED_NORMALIZED, pattern PRIMITIVE_RESTART_FIXED_INDEX,
        pattern COPY_READ_BUFFER, pattern COPY_WRITE_BUFFER,
        pattern COPY_READ_BUFFER_BINDING,
        pattern COPY_WRITE_BUFFER_BINDING, pattern UNIFORM_BUFFER,
        pattern UNIFORM_BUFFER_BINDING, pattern UNIFORM_BUFFER_START,
        pattern UNIFORM_BUFFER_SIZE, pattern MAX_VERTEX_UNIFORM_BLOCKS,
        pattern MAX_FRAGMENT_UNIFORM_BLOCKS,
        pattern MAX_COMBINED_UNIFORM_BLOCKS,
        pattern MAX_UNIFORM_BUFFER_BINDINGS,
        pattern MAX_UNIFORM_BLOCK_SIZE,
        pattern MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS,
        pattern MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS,
        pattern UNIFORM_BUFFER_OFFSET_ALIGNMENT,
        pattern ACTIVE_UNIFORM_BLOCKS, pattern UNIFORM_TYPE,
        pattern UNIFORM_SIZE, pattern UNIFORM_BLOCK_INDEX,
        pattern UNIFORM_OFFSET, pattern UNIFORM_ARRAY_STRIDE,
        pattern UNIFORM_MATRIX_STRIDE, pattern UNIFORM_IS_ROW_MAJOR,
        pattern UNIFORM_BLOCK_BINDING, pattern UNIFORM_BLOCK_DATA_SIZE,
        pattern UNIFORM_BLOCK_ACTIVE_UNIFORMS,
        pattern UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES,
        pattern UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER,
        pattern UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER,
        pattern INVALID_INDEX, pattern MAX_VERTEX_OUTPUT_COMPONENTS,
        pattern MAX_FRAGMENT_INPUT_COMPONENTS,
        pattern MAX_SERVER_WAIT_TIMEOUT, pattern OBJECT_TYPE,
        pattern SYNC_CONDITION, pattern SYNC_STATUS, pattern SYNC_FLAGS,
        pattern SYNC_FENCE, pattern SYNC_GPU_COMMANDS_COMPLETE,
        pattern UNSIGNALED, pattern SIGNALED, pattern ALREADY_SIGNALED,
        pattern TIMEOUT_EXPIRED, pattern CONDITION_SATISFIED,
        pattern WAIT_FAILED, pattern SYNC_FLUSH_COMMANDS_BIT,
        pattern VERTEX_ATTRIB_ARRAY_DIVISOR, pattern ANY_SAMPLES_PASSED,
        pattern ANY_SAMPLES_PASSED_CONSERVATIVE, pattern SAMPLER_BINDING,
        pattern RGB10_A2UI, pattern TEXTURE_SWIZZLE_R,
        pattern TEXTURE_SWIZZLE_G, pattern TEXTURE_SWIZZLE_B,
        pattern TEXTURE_SWIZZLE_A, pattern GREEN, pattern BLUE,
        pattern INT_2_10_10_10_REV, pattern TRANSFORM_FEEDBACK,
        pattern TRANSFORM_FEEDBACK_PAUSED,
        pattern TRANSFORM_FEEDBACK_ACTIVE,
        pattern TRANSFORM_FEEDBACK_BINDING, pattern COMPRESSED_R11_EAC,
        pattern COMPRESSED_SIGNED_R11_EAC, pattern COMPRESSED_RG11_EAC,
        pattern COMPRESSED_SIGNED_RG11_EAC, pattern COMPRESSED_RGB8_ETC2,
        pattern COMPRESSED_SRGB8_ETC2,
        pattern COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        pattern COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2,
        pattern COMPRESSED_RGBA8_ETC2_EAC,
        pattern COMPRESSED_SRGB8_ALPHA8_ETC2_EAC,
        pattern TEXTURE_IMMUTABLE_FORMAT, pattern MAX_ELEMENT_INDEX,
        pattern NUM_SAMPLE_COUNTS, pattern TEXTURE_IMMUTABLE_LEVELS,
        pattern TIMEOUT_IGNORED, WebGL2RenderingContext,
        castToWebGL2RenderingContext, gTypeWebGL2RenderingContext)
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
 
foreign import javascript unsafe
        "$1[\"copyBufferSubData\"]($2, $3,\n$4, $5, $6)"
        js_copyBufferSubData ::
        WebGL2RenderingContext ->
          GLenum -> GLenum -> Double -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.copyBufferSubData Mozilla WebGL2RenderingContext.copyBufferSubData documentation> 
copyBufferSubData ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      GLenum -> GLenum -> GLintptr -> GLintptr -> GLsizeiptr -> m ()
copyBufferSubData self readTarget writeTarget readOffset
  writeOffset size
  = liftIO
      (js_copyBufferSubData (self) readTarget writeTarget
         (fromIntegral readOffset)
         (fromIntegral writeOffset)
         (fromIntegral size))
 
foreign import javascript unsafe
        "$1[\"getBufferSubData\"]($2, $3,\n$4)" js_getBufferSubDataView ::
        WebGL2RenderingContext ->
          GLenum -> Double -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getBufferSubData Mozilla WebGL2RenderingContext.getBufferSubData documentation> 
getBufferSubDataView ::
                     (MonadIO m, IsArrayBufferView returnedData) =>
                       WebGL2RenderingContext ->
                         GLenum -> GLintptr -> Maybe returnedData -> m ()
getBufferSubDataView self target offset returnedData
  = liftIO
      (js_getBufferSubDataView (self) target (fromIntegral offset)
         (maybeToNullable (fmap toArrayBufferView returnedData)))
 
foreign import javascript unsafe
        "$1[\"getBufferSubData\"]($2, $3,\n$4)" js_getBufferSubData ::
        WebGL2RenderingContext ->
          GLenum -> Double -> Nullable ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getBufferSubData Mozilla WebGL2RenderingContext.getBufferSubData documentation> 
getBufferSubData ::
                 (MonadIO m, IsArrayBuffer returnedData) =>
                   WebGL2RenderingContext ->
                     GLenum -> GLintptr -> Maybe returnedData -> m ()
getBufferSubData self target offset returnedData
  = liftIO
      (js_getBufferSubData (self) target (fromIntegral offset)
         (maybeToNullable (fmap toArrayBuffer returnedData)))
 
foreign import javascript unsafe
        "$1[\"getFramebufferAttachmentParameter\"]($2,\n$3, $4)"
        js_getFramebufferAttachmentParameter ::
        WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getFramebufferAttachmentParameter Mozilla WebGL2RenderingContext.getFramebufferAttachmentParameter documentation> 
getFramebufferAttachmentParameter ::
                                  (MonadIO m) =>
                                    WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> m JSVal
getFramebufferAttachmentParameter self target attachment pname
  = liftIO
      (js_getFramebufferAttachmentParameter (self) target attachment
         pname)
 
foreign import javascript unsafe
        "$1[\"blitFramebuffer\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10,\n$11)"
        js_blitFramebuffer ::
        WebGL2RenderingContext ->
          GLint ->
            GLint ->
              GLint ->
                GLint ->
                  GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.blitFramebuffer Mozilla WebGL2RenderingContext.blitFramebuffer documentation> 
blitFramebuffer ::
                (MonadIO m) =>
                  WebGL2RenderingContext ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLint -> GLint -> GLbitfield -> GLenum -> m ()
blitFramebuffer self srcX0 srcY0 srcX1 srcY1 dstX0 dstY0 dstX1
  dstY1 mask filter
  = liftIO
      (js_blitFramebuffer (self) srcX0 srcY0 srcX1 srcY1 dstX0 dstY0
         dstX1
         dstY1
         mask
         filter)
 
foreign import javascript unsafe
        "$1[\"framebufferTextureLayer\"]($2,\n$3, $4, $5, $6)"
        js_framebufferTextureLayer ::
        WebGL2RenderingContext ->
          GLenum -> GLenum -> GLuint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.framebufferTextureLayer Mozilla WebGL2RenderingContext.framebufferTextureLayer documentation> 
framebufferTextureLayer ::
                        (MonadIO m) =>
                          WebGL2RenderingContext ->
                            GLenum -> GLenum -> GLuint -> GLint -> GLint -> m ()
framebufferTextureLayer self target attachment texture level layer
  = liftIO
      (js_framebufferTextureLayer (self) target attachment texture level
         layer)
 
foreign import javascript unsafe
        "$1[\"getInternalformatParameter\"]($2,\n$3, $4)"
        js_getInternalformatParameter ::
        WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getInternalformatParameter Mozilla WebGL2RenderingContext.getInternalformatParameter documentation> 
getInternalformatParameter ::
                           (MonadIO m) =>
                             WebGL2RenderingContext -> GLenum -> GLenum -> GLenum -> m JSVal
getInternalformatParameter self target internalformat pname
  = liftIO
      (js_getInternalformatParameter (self) target internalformat pname)
 
foreign import javascript unsafe
        "$1[\"invalidateFramebuffer\"]($2,\n$3)" js_invalidateFramebuffer
        :: WebGL2RenderingContext -> GLenum -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.invalidateFramebuffer Mozilla WebGL2RenderingContext.invalidateFramebuffer documentation> 
invalidateFramebuffer ::
                      (MonadIO m) => WebGL2RenderingContext -> GLenum -> [GLenum] -> m ()
invalidateFramebuffer self target attachments
  = liftIO
      (toJSVal attachments >>=
         \ attachments' ->
           js_invalidateFramebuffer (self) target attachments')
 
foreign import javascript unsafe
        "$1[\"invalidateSubFramebuffer\"]($2,\n$3, $4, $5, $6, $7)"
        js_invalidateSubFramebuffer ::
        WebGL2RenderingContext ->
          GLenum -> JSVal -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.invalidateSubFramebuffer Mozilla WebGL2RenderingContext.invalidateSubFramebuffer documentation> 
invalidateSubFramebuffer ::
                         (MonadIO m) =>
                           WebGL2RenderingContext ->
                             GLenum -> [GLenum] -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
invalidateSubFramebuffer self target attachments x y width height
  = liftIO
      (toJSVal attachments >>=
         \ attachments' ->
           js_invalidateSubFramebuffer (self) target attachments'
         x
         y
         width
         height)
 
foreign import javascript unsafe "$1[\"readBuffer\"]($2)"
        js_readBuffer :: WebGL2RenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.readBuffer Mozilla WebGL2RenderingContext.readBuffer documentation> 
readBuffer ::
           (MonadIO m) => WebGL2RenderingContext -> GLenum -> m ()
readBuffer self src = liftIO (js_readBuffer (self) src)
 
foreign import javascript unsafe
        "$1[\"renderbufferStorageMultisample\"]($2,\n$3, $4, $5, $6)"
        js_renderbufferStorageMultisample ::
        WebGL2RenderingContext ->
          GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.renderbufferStorageMultisample Mozilla WebGL2RenderingContext.renderbufferStorageMultisample documentation> 
renderbufferStorageMultisample ::
                               (MonadIO m) =>
                                 WebGL2RenderingContext ->
                                   GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
renderbufferStorageMultisample self target samples internalformat
  width height
  = liftIO
      (js_renderbufferStorageMultisample (self) target samples
         internalformat
         width
         height)
 
foreign import javascript unsafe
        "$1[\"texStorage2D\"]($2, $3, $4,\n$5, $6)" js_texStorage2D ::
        WebGL2RenderingContext ->
          GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texStorage2D Mozilla WebGL2RenderingContext.texStorage2D documentation> 
texStorage2D ::
             (MonadIO m) =>
               WebGL2RenderingContext ->
                 GLenum -> GLsizei -> GLenum -> GLsizei -> GLsizei -> m ()
texStorage2D self target levels internalformat width height
  = liftIO
      (js_texStorage2D (self) target levels internalformat width height)
 
foreign import javascript unsafe
        "$1[\"texStorage3D\"]($2, $3, $4,\n$5, $6, $7)" js_texStorage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texStorage3D Mozilla WebGL2RenderingContext.texStorage3D documentation> 
texStorage3D ::
             (MonadIO m) =>
               WebGL2RenderingContext ->
                 GLenum ->
                   GLsizei -> GLenum -> GLsizei -> GLsizei -> GLsizei -> m ()
texStorage3D self target levels internalformat width height depth
  = liftIO
      (js_texStorage3D (self) target levels internalformat width height
         depth)
 
foreign import javascript unsafe
        "$1[\"texImage3D\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10, $11)"
        js_texImage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLsizei ->
                  GLsizei ->
                    GLsizei ->
                      GLint -> GLenum -> GLenum -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texImage3D Mozilla WebGL2RenderingContext.texImage3D documentation> 
texImage3D ::
           (MonadIO m, IsArrayBufferView pixels) =>
             WebGL2RenderingContext ->
               GLenum ->
                 GLint ->
                   GLint ->
                     GLsizei ->
                       GLsizei ->
                         GLsizei -> GLint -> GLenum -> GLenum -> Maybe pixels -> m ()
texImage3D self target level internalformat width height depth
  border format type' pixels
  = liftIO
      (js_texImage3D (self) target level internalformat width height
         depth
         border
         format
         type'
         (maybeToNullable (fmap toArrayBufferView pixels)))
 
foreign import javascript unsafe
        "$1[\"texSubImage3D\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10, $11,\n$12)"
        js_texSubImage3DView ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLint ->
                    GLsizei ->
                      GLsizei ->
                        GLsizei -> GLenum -> GLenum -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DView ::
                  (MonadIO m, IsArrayBufferView pixels) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint ->
                              GLint ->
                                GLsizei ->
                                  GLsizei -> GLsizei -> GLenum -> GLenum -> Maybe pixels -> m ()
texSubImage3DView self target level xoffset yoffset zoffset width
  height depth format type' pixels
  = liftIO
      (js_texSubImage3DView (self) target level xoffset yoffset zoffset
         width
         height
         depth
         format
         type'
         (maybeToNullable (fmap toArrayBufferView pixels)))
 
foreign import javascript unsafe
        "$1[\"texSubImage3D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        js_texSubImage3DData ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLint -> GLenum -> GLenum -> Nullable ImageData -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DData ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLenum -> GLenum -> Maybe ImageData -> m ()
texSubImage3DData self target level xoffset yoffset zoffset format
  type' source
  = liftIO
      (js_texSubImage3DData (self) target level xoffset yoffset zoffset
         format
         type'
         (maybeToNullable source))
 
foreign import javascript unsafe
        "$1[\"texSubImage3D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        js_texSubImage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLint -> GLenum -> GLenum -> Nullable HTMLImageElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3D ::
              (MonadIO m) =>
                WebGL2RenderingContext ->
                  GLenum ->
                    GLint ->
                      GLint ->
                        GLint ->
                          GLint -> GLenum -> GLenum -> Maybe HTMLImageElement -> m ()
texSubImage3D self target level xoffset yoffset zoffset format
  type' source
  = liftIO
      (js_texSubImage3D (self) target level xoffset yoffset zoffset
         format
         type'
         (maybeToNullable source))
 
foreign import javascript unsafe
        "$1[\"texSubImage3D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        js_texSubImage3DCanvas ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLint -> GLenum -> GLenum -> Nullable HTMLCanvasElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DCanvas ::
                    (MonadIO m) =>
                      WebGL2RenderingContext ->
                        GLenum ->
                          GLint ->
                            GLint ->
                              GLint ->
                                GLint -> GLenum -> GLenum -> Maybe HTMLCanvasElement -> m ()
texSubImage3DCanvas self target level xoffset yoffset zoffset
  format type' source
  = liftIO
      (js_texSubImage3DCanvas (self) target level xoffset yoffset zoffset
         format
         type'
         (maybeToNullable source))
 
foreign import javascript unsafe
        "$1[\"texSubImage3D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        js_texSubImage3DVideo ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLint -> GLenum -> GLenum -> Nullable HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.texSubImage3D Mozilla WebGL2RenderingContext.texSubImage3D documentation> 
texSubImage3DVideo ::
                   (MonadIO m) =>
                     WebGL2RenderingContext ->
                       GLenum ->
                         GLint ->
                           GLint ->
                             GLint ->
                               GLint -> GLenum -> GLenum -> Maybe HTMLVideoElement -> m ()
texSubImage3DVideo self target level xoffset yoffset zoffset format
  type' source
  = liftIO
      (js_texSubImage3DVideo (self) target level xoffset yoffset zoffset
         format
         type'
         (maybeToNullable source))
 
foreign import javascript unsafe
        "$1[\"copyTexSubImage3D\"]($2, $3,\n$4, $5, $6, $7, $8, $9, $10)"
        js_copyTexSubImage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.copyTexSubImage3D Mozilla WebGL2RenderingContext.copyTexSubImage3D documentation> 
copyTexSubImage3D ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      GLenum ->
                        GLint ->
                          GLint ->
                            GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> m ()
copyTexSubImage3D self target level xoffset yoffset zoffset x y
  width height
  = liftIO
      (js_copyTexSubImage3D (self) target level xoffset yoffset zoffset x
         y
         width
         height)
 
foreign import javascript unsafe
        "$1[\"compressedTexImage3D\"]($2,\n$3, $4, $5, $6, $7, $8, $9, $10)"
        js_compressedTexImage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLenum ->
                GLsizei ->
                  GLsizei ->
                    GLsizei -> GLint -> GLsizei -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.compressedTexImage3D Mozilla WebGL2RenderingContext.compressedTexImage3D documentation> 
compressedTexImage3D ::
                     (MonadIO m, IsArrayBufferView data') =>
                       WebGL2RenderingContext ->
                         GLenum ->
                           GLint ->
                             GLenum ->
                               GLsizei ->
                                 GLsizei -> GLsizei -> GLint -> GLsizei -> Maybe data' -> m ()
compressedTexImage3D self target level internalformat width height
  depth border imageSize data'
  = liftIO
      (js_compressedTexImage3D (self) target level internalformat width
         height
         depth
         border
         imageSize
         (maybeToNullable (fmap toArrayBufferView data')))
 
foreign import javascript unsafe
        "$1[\"compressedTexSubImage3D\"]($2,\n$3, $4, $5, $6, $7, $8, $9, $10,\n$11, $12)"
        js_compressedTexSubImage3D ::
        WebGL2RenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLint ->
                    GLsizei ->
                      GLsizei ->
                        GLsizei -> GLenum -> GLsizei -> Nullable ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.compressedTexSubImage3D Mozilla WebGL2RenderingContext.compressedTexSubImage3D documentation> 
compressedTexSubImage3D ::
                        (MonadIO m, IsArrayBufferView data') =>
                          WebGL2RenderingContext ->
                            GLenum ->
                              GLint ->
                                GLint ->
                                  GLint ->
                                    GLint ->
                                      GLsizei ->
                                        GLsizei ->
                                          GLsizei -> GLenum -> GLsizei -> Maybe data' -> m ()
compressedTexSubImage3D self target level xoffset yoffset zoffset
  width height depth format imageSize data'
  = liftIO
      (js_compressedTexSubImage3D (self) target level xoffset yoffset
         zoffset
         width
         height
         depth
         format
         imageSize
         (maybeToNullable (fmap toArrayBufferView data')))
 
foreign import javascript unsafe
        "$1[\"getFragDataLocation\"]($2,\n$3)" js_getFragDataLocation ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> JSString -> IO GLint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getFragDataLocation Mozilla WebGL2RenderingContext.getFragDataLocation documentation> 
getFragDataLocation ::
                    (MonadIO m, ToJSString name) =>
                      WebGL2RenderingContext -> Maybe WebGLProgram -> name -> m GLint
getFragDataLocation self program name
  = liftIO
      (js_getFragDataLocation (self) (maybeToNullable program)
         (toJSString name))
 
foreign import javascript unsafe "$1[\"uniform1ui\"]($2, $3)"
        js_uniform1ui ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform1ui Mozilla WebGL2RenderingContext.uniform1ui documentation> 
uniform1ui ::
           (MonadIO m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> m ()
uniform1ui self location v0
  = liftIO (js_uniform1ui (self) (maybeToNullable location) v0)
 
foreign import javascript unsafe "$1[\"uniform2ui\"]($2, $3, $4)"
        js_uniform2ui ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform2ui Mozilla WebGL2RenderingContext.uniform2ui documentation> 
uniform2ui ::
           (MonadIO m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> GLuint -> m ()
uniform2ui self location v0 v1
  = liftIO (js_uniform2ui (self) (maybeToNullable location) v0 v1)
 
foreign import javascript unsafe
        "$1[\"uniform3ui\"]($2, $3, $4, $5)" js_uniform3ui ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLuint -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform3ui Mozilla WebGL2RenderingContext.uniform3ui documentation> 
uniform3ui ::
           (MonadIO m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation -> GLuint -> GLuint -> GLuint -> m ()
uniform3ui self location v0 v1 v2
  = liftIO (js_uniform3ui (self) (maybeToNullable location) v0 v1 v2)
 
foreign import javascript unsafe
        "$1[\"uniform4ui\"]($2, $3, $4, $5,\n$6)" js_uniform4ui ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLuint -> GLuint -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform4ui Mozilla WebGL2RenderingContext.uniform4ui documentation> 
uniform4ui ::
           (MonadIO m) =>
             WebGL2RenderingContext ->
               Maybe WebGLUniformLocation ->
                 GLuint -> GLuint -> GLuint -> GLuint -> m ()
uniform4ui self location v0 v1 v2 v3
  = liftIO
      (js_uniform4ui (self) (maybeToNullable location) v0 v1 v2 v3)
 
foreign import javascript unsafe "$1[\"uniform1uiv\"]($2, $3)"
        js_uniform1uiv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform1uiv Mozilla WebGL2RenderingContext.uniform1uiv documentation> 
uniform1uiv ::
            (MonadIO m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform1uiv self location value
  = liftIO
      (js_uniform1uiv (self) (maybeToNullable location)
         (maybeToNullable (fmap toUint32Array value)))
 
foreign import javascript unsafe "$1[\"uniform2uiv\"]($2, $3)"
        js_uniform2uiv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform2uiv Mozilla WebGL2RenderingContext.uniform2uiv documentation> 
uniform2uiv ::
            (MonadIO m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform2uiv self location value
  = liftIO
      (js_uniform2uiv (self) (maybeToNullable location)
         (maybeToNullable (fmap toUint32Array value)))
 
foreign import javascript unsafe "$1[\"uniform3uiv\"]($2, $3)"
        js_uniform3uiv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform3uiv Mozilla WebGL2RenderingContext.uniform3uiv documentation> 
uniform3uiv ::
            (MonadIO m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform3uiv self location value
  = liftIO
      (js_uniform3uiv (self) (maybeToNullable location)
         (maybeToNullable (fmap toUint32Array value)))
 
foreign import javascript unsafe "$1[\"uniform4uiv\"]($2, $3)"
        js_uniform4uiv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniform4uiv Mozilla WebGL2RenderingContext.uniform4uiv documentation> 
uniform4uiv ::
            (MonadIO m, IsUint32Array value) =>
              WebGL2RenderingContext ->
                Maybe WebGLUniformLocation -> Maybe value -> m ()
uniform4uiv self location value
  = liftIO
      (js_uniform4uiv (self) (maybeToNullable location)
         (maybeToNullable (fmap toUint32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix2x3fv\"]($2, $3,\n$4)" js_uniformMatrix2x3fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix2x3fv Mozilla WebGL2RenderingContext.uniformMatrix2x3fv documentation> 
uniformMatrix2x3fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix2x3fv self location transpose value
  = liftIO
      (js_uniformMatrix2x3fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix3x2fv\"]($2, $3,\n$4)" js_uniformMatrix3x2fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix3x2fv Mozilla WebGL2RenderingContext.uniformMatrix3x2fv documentation> 
uniformMatrix3x2fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix3x2fv self location transpose value
  = liftIO
      (js_uniformMatrix3x2fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix2x4fv\"]($2, $3,\n$4)" js_uniformMatrix2x4fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix2x4fv Mozilla WebGL2RenderingContext.uniformMatrix2x4fv documentation> 
uniformMatrix2x4fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix2x4fv self location transpose value
  = liftIO
      (js_uniformMatrix2x4fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix4x2fv\"]($2, $3,\n$4)" js_uniformMatrix4x2fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix4x2fv Mozilla WebGL2RenderingContext.uniformMatrix4x2fv documentation> 
uniformMatrix4x2fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix4x2fv self location transpose value
  = liftIO
      (js_uniformMatrix4x2fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix3x4fv\"]($2, $3,\n$4)" js_uniformMatrix3x4fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix3x4fv Mozilla WebGL2RenderingContext.uniformMatrix3x4fv documentation> 
uniformMatrix3x4fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix3x4fv self location transpose value
  = liftIO
      (js_uniformMatrix3x4fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"uniformMatrix4x3fv\"]($2, $3,\n$4)" js_uniformMatrix4x3fv ::
        WebGL2RenderingContext ->
          Nullable WebGLUniformLocation ->
            GLboolean -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformMatrix4x3fv Mozilla WebGL2RenderingContext.uniformMatrix4x3fv documentation> 
uniformMatrix4x3fv ::
                   (MonadIO m, IsFloat32Array value) =>
                     WebGL2RenderingContext ->
                       Maybe WebGLUniformLocation -> GLboolean -> Maybe value -> m ()
uniformMatrix4x3fv self location transpose value
  = liftIO
      (js_uniformMatrix4x3fv (self) (maybeToNullable location) transpose
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"vertexAttribI4i\"]($2, $3,\n$4, $5, $6)" js_vertexAttribI4i
        ::
        WebGL2RenderingContext ->
          GLuint -> GLint -> GLint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4i Mozilla WebGL2RenderingContext.vertexAttribI4i documentation> 
vertexAttribI4i ::
                (MonadIO m) =>
                  WebGL2RenderingContext ->
                    GLuint -> GLint -> GLint -> GLint -> GLint -> m ()
vertexAttribI4i self index x y z w
  = liftIO (js_vertexAttribI4i (self) index x y z w)
 
foreign import javascript unsafe "$1[\"vertexAttribI4iv\"]($2, $3)"
        js_vertexAttribI4iv ::
        WebGL2RenderingContext -> GLuint -> Nullable Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4iv Mozilla WebGL2RenderingContext.vertexAttribI4iv documentation> 
vertexAttribI4iv ::
                 (MonadIO m, IsInt32Array v) =>
                   WebGL2RenderingContext -> GLuint -> Maybe v -> m ()
vertexAttribI4iv self index v
  = liftIO
      (js_vertexAttribI4iv (self) index
         (maybeToNullable (fmap toInt32Array v)))
 
foreign import javascript unsafe
        "$1[\"vertexAttribI4ui\"]($2, $3,\n$4, $5, $6)" js_vertexAttribI4ui
        ::
        WebGL2RenderingContext ->
          GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4ui Mozilla WebGL2RenderingContext.vertexAttribI4ui documentation> 
vertexAttribI4ui ::
                 (MonadIO m) =>
                   WebGL2RenderingContext ->
                     GLuint -> GLuint -> GLuint -> GLuint -> GLuint -> m ()
vertexAttribI4ui self index x y z w
  = liftIO (js_vertexAttribI4ui (self) index x y z w)
 
foreign import javascript unsafe
        "$1[\"vertexAttribI4uiv\"]($2, $3)" js_vertexAttribI4uiv ::
        WebGL2RenderingContext -> GLuint -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribI4uiv Mozilla WebGL2RenderingContext.vertexAttribI4uiv documentation> 
vertexAttribI4uiv ::
                  (MonadIO m, IsUint32Array v) =>
                    WebGL2RenderingContext -> GLuint -> Maybe v -> m ()
vertexAttribI4uiv self index v
  = liftIO
      (js_vertexAttribI4uiv (self) index
         (maybeToNullable (fmap toUint32Array v)))
 
foreign import javascript unsafe
        "$1[\"vertexAttribIPointer\"]($2,\n$3, $4, $5, $6)"
        js_vertexAttribIPointer ::
        WebGL2RenderingContext ->
          GLuint -> GLint -> GLenum -> GLsizei -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribIPointer Mozilla WebGL2RenderingContext.vertexAttribIPointer documentation> 
vertexAttribIPointer ::
                     (MonadIO m) =>
                       WebGL2RenderingContext ->
                         GLuint -> GLint -> GLenum -> GLsizei -> GLintptr -> m ()
vertexAttribIPointer self index size type' stride offset
  = liftIO
      (js_vertexAttribIPointer (self) index size type' stride
         (fromIntegral offset))
 
foreign import javascript unsafe
        "$1[\"vertexAttribDivisor\"]($2,\n$3)" js_vertexAttribDivisor ::
        WebGL2RenderingContext -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.vertexAttribDivisor Mozilla WebGL2RenderingContext.vertexAttribDivisor documentation> 
vertexAttribDivisor ::
                    (MonadIO m) => WebGL2RenderingContext -> GLuint -> GLuint -> m ()
vertexAttribDivisor self index divisor
  = liftIO (js_vertexAttribDivisor (self) index divisor)
 
foreign import javascript unsafe
        "$1[\"drawArraysInstanced\"]($2,\n$3, $4, $5)"
        js_drawArraysInstanced ::
        WebGL2RenderingContext ->
          GLenum -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawArraysInstanced Mozilla WebGL2RenderingContext.drawArraysInstanced documentation> 
drawArraysInstanced ::
                    (MonadIO m) =>
                      WebGL2RenderingContext ->
                        GLenum -> GLint -> GLsizei -> GLsizei -> m ()
drawArraysInstanced self mode first count instanceCount
  = liftIO
      (js_drawArraysInstanced (self) mode first count instanceCount)
 
foreign import javascript unsafe
        "$1[\"drawElementsInstanced\"]($2,\n$3, $4, $5, $6)"
        js_drawElementsInstanced ::
        WebGL2RenderingContext ->
          GLenum -> GLsizei -> GLenum -> Double -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawElementsInstanced Mozilla WebGL2RenderingContext.drawElementsInstanced documentation> 
drawElementsInstanced ::
                      (MonadIO m) =>
                        WebGL2RenderingContext ->
                          GLenum -> GLsizei -> GLenum -> GLintptr -> GLsizei -> m ()
drawElementsInstanced self mode count type' offset instanceCount
  = liftIO
      (js_drawElementsInstanced (self) mode count type'
         (fromIntegral offset)
         instanceCount)
 
foreign import javascript unsafe
        "$1[\"drawRangeElements\"]($2, $3,\n$4, $5, $6, $7)"
        js_drawRangeElements ::
        WebGL2RenderingContext ->
          GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawRangeElements Mozilla WebGL2RenderingContext.drawRangeElements documentation> 
drawRangeElements ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      GLenum -> GLuint -> GLuint -> GLsizei -> GLenum -> GLintptr -> m ()
drawRangeElements self mode start end count type' offset
  = liftIO
      (js_drawRangeElements (self) mode start end count type'
         (fromIntegral offset))
 
foreign import javascript unsafe "$1[\"drawBuffers\"]($2)"
        js_drawBuffers :: WebGL2RenderingContext -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.drawBuffers Mozilla WebGL2RenderingContext.drawBuffers documentation> 
drawBuffers ::
            (MonadIO m) => WebGL2RenderingContext -> [GLenum] -> m ()
drawBuffers self buffers
  = liftIO
      (toJSVal buffers >>= \ buffers' -> js_drawBuffers (self) buffers')
 
foreign import javascript unsafe
        "$1[\"clearBufferiv\"]($2, $3, $4)" js_clearBufferiv ::
        WebGL2RenderingContext ->
          GLenum -> GLint -> Nullable Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferiv Mozilla WebGL2RenderingContext.clearBufferiv documentation> 
clearBufferiv ::
              (MonadIO m, IsInt32Array value) =>
                WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferiv self buffer drawbuffer value
  = liftIO
      (js_clearBufferiv (self) buffer drawbuffer
         (maybeToNullable (fmap toInt32Array value)))
 
foreign import javascript unsafe
        "$1[\"clearBufferuiv\"]($2, $3, $4)" js_clearBufferuiv ::
        WebGL2RenderingContext ->
          GLenum -> GLint -> Nullable Uint32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferuiv Mozilla WebGL2RenderingContext.clearBufferuiv documentation> 
clearBufferuiv ::
               (MonadIO m, IsUint32Array value) =>
                 WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferuiv self buffer drawbuffer value
  = liftIO
      (js_clearBufferuiv (self) buffer drawbuffer
         (maybeToNullable (fmap toUint32Array value)))
 
foreign import javascript unsafe
        "$1[\"clearBufferfv\"]($2, $3, $4)" js_clearBufferfv ::
        WebGL2RenderingContext ->
          GLenum -> GLint -> Nullable Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferfv Mozilla WebGL2RenderingContext.clearBufferfv documentation> 
clearBufferfv ::
              (MonadIO m, IsFloat32Array value) =>
                WebGL2RenderingContext -> GLenum -> GLint -> Maybe value -> m ()
clearBufferfv self buffer drawbuffer value
  = liftIO
      (js_clearBufferfv (self) buffer drawbuffer
         (maybeToNullable (fmap toFloat32Array value)))
 
foreign import javascript unsafe
        "$1[\"clearBufferfi\"]($2, $3, $4,\n$5)" js_clearBufferfi ::
        WebGL2RenderingContext ->
          GLenum -> GLint -> GLfloat -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clearBufferfi Mozilla WebGL2RenderingContext.clearBufferfi documentation> 
clearBufferfi ::
              (MonadIO m) =>
                WebGL2RenderingContext ->
                  GLenum -> GLint -> GLfloat -> GLint -> m ()
clearBufferfi self buffer drawbuffer depth stencil
  = liftIO (js_clearBufferfi (self) buffer drawbuffer depth stencil)
 
foreign import javascript unsafe "$1[\"createQuery\"]()"
        js_createQuery ::
        WebGL2RenderingContext -> IO (Nullable WebGLQuery)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createQuery Mozilla WebGL2RenderingContext.createQuery documentation> 
createQuery ::
            (MonadIO m) => WebGL2RenderingContext -> m (Maybe WebGLQuery)
createQuery self
  = liftIO (nullableToMaybe <$> (js_createQuery (self)))
 
foreign import javascript unsafe "$1[\"deleteQuery\"]($2)"
        js_deleteQuery ::
        WebGL2RenderingContext -> Nullable WebGLQuery -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteQuery Mozilla WebGL2RenderingContext.deleteQuery documentation> 
deleteQuery ::
            (MonadIO m) => WebGL2RenderingContext -> Maybe WebGLQuery -> m ()
deleteQuery self query
  = liftIO (js_deleteQuery (self) (maybeToNullable query))
 
foreign import javascript unsafe "$1[\"isQuery\"]($2)" js_isQuery
        :: WebGL2RenderingContext -> Nullable WebGLQuery -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isQuery Mozilla WebGL2RenderingContext.isQuery documentation> 
isQuery ::
        (MonadIO m) =>
          WebGL2RenderingContext -> Maybe WebGLQuery -> m GLboolean
isQuery self query
  = liftIO (js_isQuery (self) (maybeToNullable query))
 
foreign import javascript unsafe "$1[\"beginQuery\"]($2, $3)"
        js_beginQuery ::
        WebGL2RenderingContext -> GLenum -> Nullable WebGLQuery -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.beginQuery Mozilla WebGL2RenderingContext.beginQuery documentation> 
beginQuery ::
           (MonadIO m) =>
             WebGL2RenderingContext -> GLenum -> Maybe WebGLQuery -> m ()
beginQuery self target query
  = liftIO (js_beginQuery (self) target (maybeToNullable query))
 
foreign import javascript unsafe "$1[\"endQuery\"]($2)" js_endQuery
        :: WebGL2RenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.endQuery Mozilla WebGL2RenderingContext.endQuery documentation> 
endQuery :: (MonadIO m) => WebGL2RenderingContext -> GLenum -> m ()
endQuery self target = liftIO (js_endQuery (self) target)
 
foreign import javascript unsafe "$1[\"getQuery\"]($2, $3)"
        js_getQuery ::
        WebGL2RenderingContext ->
          GLenum -> GLenum -> IO (Nullable WebGLQuery)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getQuery Mozilla WebGL2RenderingContext.getQuery documentation> 
getQuery ::
         (MonadIO m) =>
           WebGL2RenderingContext -> GLenum -> GLenum -> m (Maybe WebGLQuery)
getQuery self target pname
  = liftIO (nullableToMaybe <$> (js_getQuery (self) target pname))
 
foreign import javascript unsafe
        "$1[\"getQueryParameter\"]($2, $3)" js_getQueryParameter ::
        WebGL2RenderingContext -> Nullable WebGLQuery -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getQueryParameter Mozilla WebGL2RenderingContext.getQueryParameter documentation> 
getQueryParameter ::
                  (MonadIO m) =>
                    WebGL2RenderingContext -> Maybe WebGLQuery -> GLenum -> m JSVal
getQueryParameter self query pname
  = liftIO
      (js_getQueryParameter (self) (maybeToNullable query) pname)
 
foreign import javascript unsafe "$1[\"createSampler\"]()"
        js_createSampler ::
        WebGL2RenderingContext -> IO (Nullable WebGLSampler)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createSampler Mozilla WebGL2RenderingContext.createSampler documentation> 
createSampler ::
              (MonadIO m) => WebGL2RenderingContext -> m (Maybe WebGLSampler)
createSampler self
  = liftIO (nullableToMaybe <$> (js_createSampler (self)))
 
foreign import javascript unsafe "$1[\"deleteSampler\"]($2)"
        js_deleteSampler ::
        WebGL2RenderingContext -> Nullable WebGLSampler -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteSampler Mozilla WebGL2RenderingContext.deleteSampler documentation> 
deleteSampler ::
              (MonadIO m) => WebGL2RenderingContext -> Maybe WebGLSampler -> m ()
deleteSampler self sampler
  = liftIO (js_deleteSampler (self) (maybeToNullable sampler))
 
foreign import javascript unsafe "$1[\"isSampler\"]($2)"
        js_isSampler ::
        WebGL2RenderingContext -> Nullable WebGLSampler -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isSampler Mozilla WebGL2RenderingContext.isSampler documentation> 
isSampler ::
          (MonadIO m) =>
            WebGL2RenderingContext -> Maybe WebGLSampler -> m GLboolean
isSampler self sampler
  = liftIO (js_isSampler (self) (maybeToNullable sampler))
 
foreign import javascript unsafe "$1[\"bindSampler\"]($2, $3)"
        js_bindSampler ::
        WebGL2RenderingContext -> GLuint -> Nullable WebGLSampler -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindSampler Mozilla WebGL2RenderingContext.bindSampler documentation> 
bindSampler ::
            (MonadIO m) =>
              WebGL2RenderingContext -> GLuint -> Maybe WebGLSampler -> m ()
bindSampler self unit sampler
  = liftIO (js_bindSampler (self) unit (maybeToNullable sampler))
 
foreign import javascript unsafe
        "$1[\"samplerParameteri\"]($2, $3,\n$4)" js_samplerParameteri ::
        WebGL2RenderingContext ->
          Nullable WebGLSampler -> GLenum -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.samplerParameteri Mozilla WebGL2RenderingContext.samplerParameteri documentation> 
samplerParameteri ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLSampler -> GLenum -> GLint -> m ()
samplerParameteri self sampler pname param
  = liftIO
      (js_samplerParameteri (self) (maybeToNullable sampler) pname param)
 
foreign import javascript unsafe
        "$1[\"samplerParameterf\"]($2, $3,\n$4)" js_samplerParameterf ::
        WebGL2RenderingContext ->
          Nullable WebGLSampler -> GLenum -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.samplerParameterf Mozilla WebGL2RenderingContext.samplerParameterf documentation> 
samplerParameterf ::
                  (MonadIO m) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLSampler -> GLenum -> GLfloat -> m ()
samplerParameterf self sampler pname param
  = liftIO
      (js_samplerParameterf (self) (maybeToNullable sampler) pname param)
 
foreign import javascript unsafe
        "$1[\"getSamplerParameter\"]($2,\n$3)" js_getSamplerParameter ::
        WebGL2RenderingContext ->
          Nullable WebGLSampler -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getSamplerParameter Mozilla WebGL2RenderingContext.getSamplerParameter documentation> 
getSamplerParameter ::
                    (MonadIO m) =>
                      WebGL2RenderingContext -> Maybe WebGLSampler -> GLenum -> m JSVal
getSamplerParameter self sampler pname
  = liftIO
      (js_getSamplerParameter (self) (maybeToNullable sampler) pname)
 
foreign import javascript unsafe "$1[\"fenceSync\"]($2, $3)"
        js_fenceSync ::
        WebGL2RenderingContext ->
          GLenum -> GLbitfield -> IO (Nullable WebGLSync)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.fenceSync Mozilla WebGL2RenderingContext.fenceSync documentation> 
fenceSync ::
          (MonadIO m) =>
            WebGL2RenderingContext ->
              GLenum -> GLbitfield -> m (Maybe WebGLSync)
fenceSync self condition flags
  = liftIO
      (nullableToMaybe <$> (js_fenceSync (self) condition flags))
 
foreign import javascript unsafe "$1[\"isSync\"]($2)" js_isSync ::
        WebGL2RenderingContext -> Nullable WebGLSync -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isSync Mozilla WebGL2RenderingContext.isSync documentation> 
isSync ::
       (MonadIO m) =>
         WebGL2RenderingContext -> Maybe WebGLSync -> m GLboolean
isSync self sync = liftIO (js_isSync (self) (maybeToNullable sync))
 
foreign import javascript unsafe "$1[\"deleteSync\"]($2)"
        js_deleteSync ::
        WebGL2RenderingContext -> Nullable WebGLSync -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteSync Mozilla WebGL2RenderingContext.deleteSync documentation> 
deleteSync ::
           (MonadIO m) => WebGL2RenderingContext -> Maybe WebGLSync -> m ()
deleteSync self sync
  = liftIO (js_deleteSync (self) (maybeToNullable sync))
 
foreign import javascript unsafe
        "$1[\"clientWaitSync\"]($2, $3, $4)" js_clientWaitSync ::
        WebGL2RenderingContext ->
          Nullable WebGLSync -> GLbitfield -> Double -> IO GLenum

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.clientWaitSync Mozilla WebGL2RenderingContext.clientWaitSync documentation> 
clientWaitSync ::
               (MonadIO m) =>
                 WebGL2RenderingContext ->
                   Maybe WebGLSync -> GLbitfield -> GLuint64 -> m GLenum
clientWaitSync self sync flags timeout
  = liftIO
      (js_clientWaitSync (self) (maybeToNullable sync) flags
         (fromIntegral timeout))
 
foreign import javascript unsafe "$1[\"waitSync\"]($2, $3, $4)"
        js_waitSync ::
        WebGL2RenderingContext ->
          Nullable WebGLSync -> GLbitfield -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.waitSync Mozilla WebGL2RenderingContext.waitSync documentation> 
waitSync ::
         (MonadIO m) =>
           WebGL2RenderingContext ->
             Maybe WebGLSync -> GLbitfield -> GLuint64 -> m ()
waitSync self sync flags timeout
  = liftIO
      (js_waitSync (self) (maybeToNullable sync) flags
         (fromIntegral timeout))
 
foreign import javascript unsafe "$1[\"getSyncParameter\"]($2, $3)"
        js_getSyncParameter ::
        WebGL2RenderingContext -> Nullable WebGLSync -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getSyncParameter Mozilla WebGL2RenderingContext.getSyncParameter documentation> 
getSyncParameter ::
                 (MonadIO m) =>
                   WebGL2RenderingContext -> Maybe WebGLSync -> GLenum -> m JSVal
getSyncParameter self sync pname
  = liftIO (js_getSyncParameter (self) (maybeToNullable sync) pname)
 
foreign import javascript unsafe
        "$1[\"createTransformFeedback\"]()" js_createTransformFeedback ::
        WebGL2RenderingContext -> IO (Nullable WebGLTransformFeedback)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createTransformFeedback Mozilla WebGL2RenderingContext.createTransformFeedback documentation> 
createTransformFeedback ::
                        (MonadIO m) =>
                          WebGL2RenderingContext -> m (Maybe WebGLTransformFeedback)
createTransformFeedback self
  = liftIO (nullableToMaybe <$> (js_createTransformFeedback (self)))
 
foreign import javascript unsafe
        "$1[\"deleteTransformFeedback\"]($2)" js_deleteTransformFeedback ::
        WebGL2RenderingContext -> Nullable WebGLTransformFeedback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteTransformFeedback Mozilla WebGL2RenderingContext.deleteTransformFeedback documentation> 
deleteTransformFeedback ::
                        (MonadIO m) =>
                          WebGL2RenderingContext -> Maybe WebGLTransformFeedback -> m ()
deleteTransformFeedback self id
  = liftIO (js_deleteTransformFeedback (self) (maybeToNullable id))
 
foreign import javascript unsafe "$1[\"isTransformFeedback\"]($2)"
        js_isTransformFeedback ::
        WebGL2RenderingContext ->
          Nullable WebGLTransformFeedback -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isTransformFeedback Mozilla WebGL2RenderingContext.isTransformFeedback documentation> 
isTransformFeedback ::
                    (MonadIO m) =>
                      WebGL2RenderingContext ->
                        Maybe WebGLTransformFeedback -> m GLboolean
isTransformFeedback self id
  = liftIO (js_isTransformFeedback (self) (maybeToNullable id))
 
foreign import javascript unsafe
        "$1[\"bindTransformFeedback\"]($2,\n$3)" js_bindTransformFeedback
        ::
        WebGL2RenderingContext ->
          GLenum -> Nullable WebGLTransformFeedback -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindTransformFeedback Mozilla WebGL2RenderingContext.bindTransformFeedback documentation> 
bindTransformFeedback ::
                      (MonadIO m) =>
                        WebGL2RenderingContext ->
                          GLenum -> Maybe WebGLTransformFeedback -> m ()
bindTransformFeedback self target id
  = liftIO
      (js_bindTransformFeedback (self) target (maybeToNullable id))
 
foreign import javascript unsafe
        "$1[\"beginTransformFeedback\"]($2)" js_beginTransformFeedback ::
        WebGL2RenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.beginTransformFeedback Mozilla WebGL2RenderingContext.beginTransformFeedback documentation> 
beginTransformFeedback ::
                       (MonadIO m) => WebGL2RenderingContext -> GLenum -> m ()
beginTransformFeedback self primitiveMode
  = liftIO (js_beginTransformFeedback (self) primitiveMode)
 
foreign import javascript unsafe "$1[\"endTransformFeedback\"]()"
        js_endTransformFeedback :: WebGL2RenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.endTransformFeedback Mozilla WebGL2RenderingContext.endTransformFeedback documentation> 
endTransformFeedback ::
                     (MonadIO m) => WebGL2RenderingContext -> m ()
endTransformFeedback self = liftIO (js_endTransformFeedback (self))
 
foreign import javascript unsafe
        "$1[\"transformFeedbackVaryings\"]($2,\n$3, $4)"
        js_transformFeedbackVaryings ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> JSVal -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.transformFeedbackVaryings Mozilla WebGL2RenderingContext.transformFeedbackVaryings documentation> 
transformFeedbackVaryings ::
                          (MonadIO m, ToJSString varyings) =>
                            WebGL2RenderingContext ->
                              Maybe WebGLProgram -> [varyings] -> GLenum -> m ()
transformFeedbackVaryings self program varyings bufferMode
  = liftIO
      (toJSVal varyings >>=
         \ varyings' ->
           js_transformFeedbackVaryings (self) (maybeToNullable program)
             varyings'
         bufferMode)
 
foreign import javascript unsafe
        "$1[\"getTransformFeedbackVarying\"]($2,\n$3)"
        js_getTransformFeedbackVarying ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> GLuint -> IO (Nullable WebGLActiveInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getTransformFeedbackVarying Mozilla WebGL2RenderingContext.getTransformFeedbackVarying documentation> 
getTransformFeedbackVarying ::
                            (MonadIO m) =>
                              WebGL2RenderingContext ->
                                Maybe WebGLProgram -> GLuint -> m (Maybe WebGLActiveInfo)
getTransformFeedbackVarying self program index
  = liftIO
      (nullableToMaybe <$>
         (js_getTransformFeedbackVarying (self) (maybeToNullable program)
            index))
 
foreign import javascript unsafe "$1[\"pauseTransformFeedback\"]()"
        js_pauseTransformFeedback :: WebGL2RenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.pauseTransformFeedback Mozilla WebGL2RenderingContext.pauseTransformFeedback documentation> 
pauseTransformFeedback ::
                       (MonadIO m) => WebGL2RenderingContext -> m ()
pauseTransformFeedback self
  = liftIO (js_pauseTransformFeedback (self))
 
foreign import javascript unsafe
        "$1[\"resumeTransformFeedback\"]()" js_resumeTransformFeedback ::
        WebGL2RenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.resumeTransformFeedback Mozilla WebGL2RenderingContext.resumeTransformFeedback documentation> 
resumeTransformFeedback ::
                        (MonadIO m) => WebGL2RenderingContext -> m ()
resumeTransformFeedback self
  = liftIO (js_resumeTransformFeedback (self))
 
foreign import javascript unsafe
        "$1[\"bindBufferBase\"]($2, $3, $4)" js_bindBufferBase ::
        WebGL2RenderingContext ->
          GLenum -> GLuint -> Nullable WebGLBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindBufferBase Mozilla WebGL2RenderingContext.bindBufferBase documentation> 
bindBufferBase ::
               (MonadIO m) =>
                 WebGL2RenderingContext ->
                   GLenum -> GLuint -> Maybe WebGLBuffer -> m ()
bindBufferBase self target index buffer
  = liftIO
      (js_bindBufferBase (self) target index (maybeToNullable buffer))
 
foreign import javascript unsafe
        "$1[\"bindBufferRange\"]($2, $3,\n$4, $5, $6)" js_bindBufferRange
        ::
        WebGL2RenderingContext ->
          GLenum ->
            GLuint -> Nullable WebGLBuffer -> Double -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindBufferRange Mozilla WebGL2RenderingContext.bindBufferRange documentation> 
bindBufferRange ::
                (MonadIO m) =>
                  WebGL2RenderingContext ->
                    GLenum ->
                      GLuint -> Maybe WebGLBuffer -> GLintptr -> GLsizeiptr -> m ()
bindBufferRange self target index buffer offset size
  = liftIO
      (js_bindBufferRange (self) target index (maybeToNullable buffer)
         (fromIntegral offset)
         (fromIntegral size))
 
foreign import javascript unsafe
        "$1[\"getIndexedParameter\"]($2,\n$3)" js_getIndexedParameter ::
        WebGL2RenderingContext -> GLenum -> GLuint -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getIndexedParameter Mozilla WebGL2RenderingContext.getIndexedParameter documentation> 
getIndexedParameter ::
                    (MonadIO m) =>
                      WebGL2RenderingContext -> GLenum -> GLuint -> m JSVal
getIndexedParameter self target index
  = liftIO (js_getIndexedParameter (self) target index)
 
foreign import javascript unsafe
        "$1[\"getUniformIndices\"]($2, $3)" js_getUniformIndices ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> JSVal -> IO (Nullable Uint32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getUniformIndices Mozilla WebGL2RenderingContext.getUniformIndices documentation> 
getUniformIndices ::
                  (MonadIO m, ToJSString uniformNames) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLProgram -> [uniformNames] -> m (Maybe Uint32Array)
getUniformIndices self program uniformNames
  = liftIO
      (nullableToMaybe <$>
         (toJSVal uniformNames >>=
            \ uniformNames' ->
              js_getUniformIndices (self) (maybeToNullable program)
                uniformNames'))
 
foreign import javascript unsafe
        "$1[\"getActiveUniforms\"]($2, $3,\n$4)" js_getActiveUniforms ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram ->
            Nullable Uint32Array -> GLenum -> IO (Nullable Int32Array)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniforms Mozilla WebGL2RenderingContext.getActiveUniforms documentation> 
getActiveUniforms ::
                  (MonadIO m, IsUint32Array uniformIndices) =>
                    WebGL2RenderingContext ->
                      Maybe WebGLProgram ->
                        Maybe uniformIndices -> GLenum -> m (Maybe Int32Array)
getActiveUniforms self program uniformIndices pname
  = liftIO
      (nullableToMaybe <$>
         (js_getActiveUniforms (self) (maybeToNullable program)
            (maybeToNullable (fmap toUint32Array uniformIndices))
            pname))
 
foreign import javascript unsafe
        "$1[\"getUniformBlockIndex\"]($2,\n$3)" js_getUniformBlockIndex ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> JSString -> IO GLuint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getUniformBlockIndex Mozilla WebGL2RenderingContext.getUniformBlockIndex documentation> 
getUniformBlockIndex ::
                     (MonadIO m, ToJSString uniformBlockName) =>
                       WebGL2RenderingContext ->
                         Maybe WebGLProgram -> uniformBlockName -> m GLuint
getUniformBlockIndex self program uniformBlockName
  = liftIO
      (js_getUniformBlockIndex (self) (maybeToNullable program)
         (toJSString uniformBlockName))
 
foreign import javascript unsafe
        "$1[\"getActiveUniformBlockParameter\"]($2,\n$3, $4)"
        js_getActiveUniformBlockParameter ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> GLuint -> GLenum -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniformBlockParameter Mozilla WebGL2RenderingContext.getActiveUniformBlockParameter documentation> 
getActiveUniformBlockParameter ::
                               (MonadIO m) =>
                                 WebGL2RenderingContext ->
                                   Maybe WebGLProgram -> GLuint -> GLenum -> m JSVal
getActiveUniformBlockParameter self program uniformBlockIndex pname
  = liftIO
      (js_getActiveUniformBlockParameter (self) (maybeToNullable program)
         uniformBlockIndex
         pname)
 
foreign import javascript unsafe
        "$1[\"getActiveUniformBlockName\"]($2,\n$3)"
        js_getActiveUniformBlockName ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> GLuint -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.getActiveUniformBlockName Mozilla WebGL2RenderingContext.getActiveUniformBlockName documentation> 
getActiveUniformBlockName ::
                          (MonadIO m) =>
                            WebGL2RenderingContext -> Maybe WebGLProgram -> GLuint -> m JSVal
getActiveUniformBlockName self program uniformBlockIndex
  = liftIO
      (js_getActiveUniformBlockName (self) (maybeToNullable program)
         uniformBlockIndex)
 
foreign import javascript unsafe
        "$1[\"uniformBlockBinding\"]($2,\n$3, $4)" js_uniformBlockBinding
        ::
        WebGL2RenderingContext ->
          Nullable WebGLProgram -> GLuint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.uniformBlockBinding Mozilla WebGL2RenderingContext.uniformBlockBinding documentation> 
uniformBlockBinding ::
                    (MonadIO m) =>
                      WebGL2RenderingContext ->
                        Maybe WebGLProgram -> GLuint -> GLuint -> m ()
uniformBlockBinding self program uniformBlockIndex
  uniformBlockBinding
  = liftIO
      (js_uniformBlockBinding (self) (maybeToNullable program)
         uniformBlockIndex
         uniformBlockBinding)
 
foreign import javascript unsafe "$1[\"createVertexArray\"]()"
        js_createVertexArray ::
        WebGL2RenderingContext -> IO (Nullable WebGLVertexArrayObject)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.createVertexArray Mozilla WebGL2RenderingContext.createVertexArray documentation> 
createVertexArray ::
                  (MonadIO m) =>
                    WebGL2RenderingContext -> m (Maybe WebGLVertexArrayObject)
createVertexArray self
  = liftIO (nullableToMaybe <$> (js_createVertexArray (self)))
 
foreign import javascript unsafe "$1[\"deleteVertexArray\"]($2)"
        js_deleteVertexArray ::
        WebGL2RenderingContext -> Nullable WebGLVertexArrayObject -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.deleteVertexArray Mozilla WebGL2RenderingContext.deleteVertexArray documentation> 
deleteVertexArray ::
                  (MonadIO m) =>
                    WebGL2RenderingContext -> Maybe WebGLVertexArrayObject -> m ()
deleteVertexArray self vertexArray
  = liftIO
      (js_deleteVertexArray (self) (maybeToNullable vertexArray))
 
foreign import javascript unsafe "$1[\"isVertexArray\"]($2)"
        js_isVertexArray ::
        WebGL2RenderingContext ->
          Nullable WebGLVertexArrayObject -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.isVertexArray Mozilla WebGL2RenderingContext.isVertexArray documentation> 
isVertexArray ::
              (MonadIO m) =>
                WebGL2RenderingContext ->
                  Maybe WebGLVertexArrayObject -> m GLboolean
isVertexArray self vertexArray
  = liftIO (js_isVertexArray (self) (maybeToNullable vertexArray))
 
foreign import javascript unsafe "$1[\"bindVertexArray\"]($2)"
        js_bindVertexArray ::
        WebGL2RenderingContext -> Nullable WebGLVertexArrayObject -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGL2RenderingContext.bindVertexArray Mozilla WebGL2RenderingContext.bindVertexArray documentation> 
bindVertexArray ::
                (MonadIO m) =>
                  WebGL2RenderingContext -> Maybe WebGLVertexArrayObject -> m ()
bindVertexArray self vertexArray
  = liftIO (js_bindVertexArray (self) (maybeToNullable vertexArray))
pattern READ_BUFFER = 3074
pattern UNPACK_ROW_LENGTH = 3314
pattern UNPACK_SKIP_ROWS = 3315
pattern UNPACK_SKIP_PIXELS = 3316
pattern PACK_ROW_LENGTH = 3330
pattern PACK_SKIP_ROWS = 3331
pattern PACK_SKIP_PIXELS = 3332
pattern COLOR = 6144
pattern DEPTH = 6145
pattern STENCIL = 6146
pattern RED = 6403
pattern RGB8 = 32849
pattern RGBA8 = 32856
pattern RGB10_A2 = 32857
pattern TEXTURE_BINDING_3D = 32874
pattern UNPACK_SKIP_IMAGES = 32877
pattern UNPACK_IMAGE_HEIGHT = 32878
pattern TEXTURE_3D = 32879
pattern TEXTURE_WRAP_R = 32882
pattern MAX_3D_TEXTURE_SIZE = 32883
pattern UNSIGNED_INT_2_10_10_10_REV = 33640
pattern MAX_ELEMENTS_VERTICES = 33000
pattern MAX_ELEMENTS_INDICES = 33001
pattern TEXTURE_MIN_LOD = 33082
pattern TEXTURE_MAX_LOD = 33083
pattern TEXTURE_BASE_LEVEL = 33084
pattern TEXTURE_MAX_LEVEL = 33085
pattern MIN = 32775
pattern MAX = 32776
pattern DEPTH_COMPONENT24 = 33190
pattern MAX_TEXTURE_LOD_BIAS = 34045
pattern TEXTURE_COMPARE_MODE = 34892
pattern TEXTURE_COMPARE_FUNC = 34893
pattern CURRENT_QUERY = 34917
pattern QUERY_RESULT = 34918
pattern QUERY_RESULT_AVAILABLE = 34919
pattern STREAM_READ = 35041
pattern STREAM_COPY = 35042
pattern STATIC_READ = 35045
pattern STATIC_COPY = 35046
pattern DYNAMIC_READ = 35049
pattern DYNAMIC_COPY = 35050
pattern MAX_DRAW_BUFFERS = 34852
pattern DRAW_BUFFER0 = 34853
pattern DRAW_BUFFER1 = 34854
pattern DRAW_BUFFER2 = 34855
pattern DRAW_BUFFER3 = 34856
pattern DRAW_BUFFER4 = 34857
pattern DRAW_BUFFER5 = 34858
pattern DRAW_BUFFER6 = 34859
pattern DRAW_BUFFER7 = 34860
pattern DRAW_BUFFER8 = 34861
pattern DRAW_BUFFER9 = 34862
pattern DRAW_BUFFER10 = 34863
pattern DRAW_BUFFER11 = 34864
pattern DRAW_BUFFER12 = 34865
pattern DRAW_BUFFER13 = 34866
pattern DRAW_BUFFER14 = 34867
pattern DRAW_BUFFER15 = 34868
pattern MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657
pattern MAX_VERTEX_UNIFORM_COMPONENTS = 35658
pattern SAMPLER_3D = 35679
pattern SAMPLER_2D_SHADOW = 35682
pattern FRAGMENT_SHADER_DERIVATIVE_HINT = 35723
pattern PIXEL_PACK_BUFFER = 35051
pattern PIXEL_UNPACK_BUFFER = 35052
pattern PIXEL_PACK_BUFFER_BINDING = 35053
pattern PIXEL_UNPACK_BUFFER_BINDING = 35055
pattern FLOAT_MAT2x3 = 35685
pattern FLOAT_MAT2x4 = 35686
pattern FLOAT_MAT3x2 = 35687
pattern FLOAT_MAT3x4 = 35688
pattern FLOAT_MAT4x2 = 35689
pattern FLOAT_MAT4x3 = 35690
pattern SRGB = 35904
pattern SRGB8 = 35905
pattern SRGB8_ALPHA8 = 35907
pattern COMPARE_REF_TO_TEXTURE = 34894
pattern RGBA32F = 34836
pattern RGB32F = 34837
pattern RGBA16F = 34842
pattern RGB16F = 34843
pattern VERTEX_ATTRIB_ARRAY_INTEGER = 35069
pattern MAX_ARRAY_TEXTURE_LAYERS = 35071
pattern MIN_PROGRAM_TEXEL_OFFSET = 35076
pattern MAX_PROGRAM_TEXEL_OFFSET = 35077
pattern MAX_VARYING_COMPONENTS = 35659
pattern TEXTURE_2D_ARRAY = 35866
pattern TEXTURE_BINDING_2D_ARRAY = 35869
pattern R11F_G11F_B10F = 35898
pattern UNSIGNED_INT_10F_11F_11F_REV = 35899
pattern RGB9_E5 = 35901
pattern UNSIGNED_INT_5_9_9_9_REV = 35902
pattern TRANSFORM_FEEDBACK_BUFFER_MODE = 35967
pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS = 35968
pattern TRANSFORM_FEEDBACK_VARYINGS = 35971
pattern TRANSFORM_FEEDBACK_BUFFER_START = 35972
pattern TRANSFORM_FEEDBACK_BUFFER_SIZE = 35973
pattern TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN = 35976
pattern RASTERIZER_DISCARD = 35977
pattern MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = 35978
pattern MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS = 35979
pattern INTERLEAVED_ATTRIBS = 35980
pattern SEPARATE_ATTRIBS = 35981
pattern TRANSFORM_FEEDBACK_BUFFER = 35982
pattern TRANSFORM_FEEDBACK_BUFFER_BINDING = 35983
pattern RGBA32UI = 36208
pattern RGB32UI = 36209
pattern RGBA16UI = 36214
pattern RGB16UI = 36215
pattern RGBA8UI = 36220
pattern RGB8UI = 36221
pattern RGBA32I = 36226
pattern RGB32I = 36227
pattern RGBA16I = 36232
pattern RGB16I = 36233
pattern RGBA8I = 36238
pattern RGB8I = 36239
pattern RED_INTEGER = 36244
pattern RGB_INTEGER = 36248
pattern RGBA_INTEGER = 36249
pattern SAMPLER_2D_ARRAY = 36289
pattern SAMPLER_2D_ARRAY_SHADOW = 36292
pattern SAMPLER_CUBE_SHADOW = 36293
pattern UNSIGNED_INT_VEC2 = 36294
pattern UNSIGNED_INT_VEC3 = 36295
pattern UNSIGNED_INT_VEC4 = 36296
pattern INT_SAMPLER_2D = 36298
pattern INT_SAMPLER_3D = 36299
pattern INT_SAMPLER_CUBE = 36300
pattern INT_SAMPLER_2D_ARRAY = 36303
pattern UNSIGNED_INT_SAMPLER_2D = 36306
pattern UNSIGNED_INT_SAMPLER_3D = 36307
pattern UNSIGNED_INT_SAMPLER_CUBE = 36308
pattern UNSIGNED_INT_SAMPLER_2D_ARRAY = 36311
pattern DEPTH_COMPONENT32F = 36012
pattern DEPTH32F_STENCIL8 = 36013
pattern FLOAT_32_UNSIGNED_INT_24_8_REV = 36269
pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING = 33296
pattern FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE = 33297
pattern FRAMEBUFFER_ATTACHMENT_RED_SIZE = 33298
pattern FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = 33299
pattern FRAMEBUFFER_ATTACHMENT_BLUE_SIZE = 33300
pattern FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE = 33301
pattern FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE = 33302
pattern FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE = 33303
pattern FRAMEBUFFER_DEFAULT = 33304
pattern DEPTH_STENCIL_ATTACHMENT = 33306
pattern DEPTH_STENCIL = 34041
pattern UNSIGNED_INT_24_8 = 34042
pattern DEPTH24_STENCIL8 = 35056
pattern UNSIGNED_NORMALIZED = 35863
pattern DRAW_FRAMEBUFFER_BINDING = 36006
pattern READ_FRAMEBUFFER = 36008
pattern DRAW_FRAMEBUFFER = 36009
pattern READ_FRAMEBUFFER_BINDING = 36010
pattern RENDERBUFFER_SAMPLES = 36011
pattern FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER = 36052
pattern MAX_COLOR_ATTACHMENTS = 36063
pattern COLOR_ATTACHMENT1 = 36065
pattern COLOR_ATTACHMENT2 = 36066
pattern COLOR_ATTACHMENT3 = 36067
pattern COLOR_ATTACHMENT4 = 36068
pattern COLOR_ATTACHMENT5 = 36069
pattern COLOR_ATTACHMENT6 = 36070
pattern COLOR_ATTACHMENT7 = 36071
pattern COLOR_ATTACHMENT8 = 36072
pattern COLOR_ATTACHMENT9 = 36073
pattern COLOR_ATTACHMENT10 = 36074
pattern COLOR_ATTACHMENT11 = 36075
pattern COLOR_ATTACHMENT12 = 36076
pattern COLOR_ATTACHMENT13 = 36077
pattern COLOR_ATTACHMENT14 = 36078
pattern COLOR_ATTACHMENT15 = 36079
pattern FRAMEBUFFER_INCOMPLETE_MULTISAMPLE = 36182
pattern MAX_SAMPLES = 36183
pattern HALF_FLOAT = 5131
pattern RG = 33319
pattern RG_INTEGER = 33320
pattern R8 = 33321
pattern RG8 = 33323
pattern R16F = 33325
pattern R32F = 33326
pattern RG16F = 33327
pattern RG32F = 33328
pattern R8I = 33329
pattern R8UI = 33330
pattern R16I = 33331
pattern R16UI = 33332
pattern R32I = 33333
pattern R32UI = 33334
pattern RG8I = 33335
pattern RG8UI = 33336
pattern RG16I = 33337
pattern RG16UI = 33338
pattern RG32I = 33339
pattern RG32UI = 33340
pattern VERTEX_ARRAY_BINDING = 34229
pattern R8_SNORM = 36756
pattern RG8_SNORM = 36757
pattern RGB8_SNORM = 36758
pattern RGBA8_SNORM = 36759
pattern SIGNED_NORMALIZED = 36764
pattern PRIMITIVE_RESTART_FIXED_INDEX = 36201
pattern COPY_READ_BUFFER = 36662
pattern COPY_WRITE_BUFFER = 36663
pattern COPY_READ_BUFFER_BINDING = 36662
pattern COPY_WRITE_BUFFER_BINDING = 36663
pattern UNIFORM_BUFFER = 35345
pattern UNIFORM_BUFFER_BINDING = 35368
pattern UNIFORM_BUFFER_START = 35369
pattern UNIFORM_BUFFER_SIZE = 35370
pattern MAX_VERTEX_UNIFORM_BLOCKS = 35371
pattern MAX_FRAGMENT_UNIFORM_BLOCKS = 35373
pattern MAX_COMBINED_UNIFORM_BLOCKS = 35374
pattern MAX_UNIFORM_BUFFER_BINDINGS = 35375
pattern MAX_UNIFORM_BLOCK_SIZE = 35376
pattern MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377
pattern MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379
pattern UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380
pattern ACTIVE_UNIFORM_BLOCKS = 35382
pattern UNIFORM_TYPE = 35383
pattern UNIFORM_SIZE = 35384
pattern UNIFORM_BLOCK_INDEX = 35386
pattern UNIFORM_OFFSET = 35387
pattern UNIFORM_ARRAY_STRIDE = 35388
pattern UNIFORM_MATRIX_STRIDE = 35389
pattern UNIFORM_IS_ROW_MAJOR = 35390
pattern UNIFORM_BLOCK_BINDING = 35391
pattern UNIFORM_BLOCK_DATA_SIZE = 35392
pattern UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394
pattern UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395
pattern UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396
pattern UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398
pattern INVALID_INDEX = 4294967295
pattern MAX_VERTEX_OUTPUT_COMPONENTS = 37154
pattern MAX_FRAGMENT_INPUT_COMPONENTS = 37157
pattern MAX_SERVER_WAIT_TIMEOUT = 37137
pattern OBJECT_TYPE = 37138
pattern SYNC_CONDITION = 37139
pattern SYNC_STATUS = 37140
pattern SYNC_FLAGS = 37141
pattern SYNC_FENCE = 37142
pattern SYNC_GPU_COMMANDS_COMPLETE = 37143
pattern UNSIGNALED = 37144
pattern SIGNALED = 37145
pattern ALREADY_SIGNALED = 37146
pattern TIMEOUT_EXPIRED = 37147
pattern CONDITION_SATISFIED = 37148
pattern WAIT_FAILED = 37149
pattern SYNC_FLUSH_COMMANDS_BIT = 1
pattern VERTEX_ATTRIB_ARRAY_DIVISOR = 35070
pattern ANY_SAMPLES_PASSED = 35887
pattern ANY_SAMPLES_PASSED_CONSERVATIVE = 36202
pattern SAMPLER_BINDING = 35097
pattern RGB10_A2UI = 36975
pattern TEXTURE_SWIZZLE_R = 36418
pattern TEXTURE_SWIZZLE_G = 36419
pattern TEXTURE_SWIZZLE_B = 36420
pattern TEXTURE_SWIZZLE_A = 36421
pattern GREEN = 6404
pattern BLUE = 6405
pattern INT_2_10_10_10_REV = 36255
pattern TRANSFORM_FEEDBACK = 36386
pattern TRANSFORM_FEEDBACK_PAUSED = 36387
pattern TRANSFORM_FEEDBACK_ACTIVE = 36388
pattern TRANSFORM_FEEDBACK_BINDING = 36389
pattern COMPRESSED_R11_EAC = 37488
pattern COMPRESSED_SIGNED_R11_EAC = 37489
pattern COMPRESSED_RG11_EAC = 37490
pattern COMPRESSED_SIGNED_RG11_EAC = 37491
pattern COMPRESSED_RGB8_ETC2 = 37492
pattern COMPRESSED_SRGB8_ETC2 = 37493
pattern COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494
pattern COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495
pattern COMPRESSED_RGBA8_ETC2_EAC = 37496
pattern COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497
pattern TEXTURE_IMMUTABLE_FORMAT = 37167
pattern MAX_ELEMENT_INDEX = 36203
pattern NUM_SAMPLE_COUNTS = 37760
pattern TEXTURE_IMMUTABLE_LEVELS = 33503
pattern TIMEOUT_IGNORED = 18446744073709551615