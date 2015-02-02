{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLRenderingContext
       (ghcjs_dom_web_gl_rendering_context_active_texture,
        webGLRenderingContextActiveTexture,
        ghcjs_dom_web_gl_rendering_context_attach_shader,
        webGLRenderingContextAttachShader,
        ghcjs_dom_web_gl_rendering_context_bind_attrib_location,
        webGLRenderingContextBindAttribLocation,
        ghcjs_dom_web_gl_rendering_context_bind_buffer,
        webGLRenderingContextBindBuffer,
        ghcjs_dom_web_gl_rendering_context_bind_framebuffer,
        webGLRenderingContextBindFramebuffer,
        ghcjs_dom_web_gl_rendering_context_bind_renderbuffer,
        webGLRenderingContextBindRenderbuffer,
        ghcjs_dom_web_gl_rendering_context_bind_texture,
        webGLRenderingContextBindTexture,
        ghcjs_dom_web_gl_rendering_context_blend_color,
        webGLRenderingContextBlendColor,
        ghcjs_dom_web_gl_rendering_context_blend_equation,
        webGLRenderingContextBlendEquation,
        ghcjs_dom_web_gl_rendering_context_blend_equation_separate,
        webGLRenderingContextBlendEquationSeparate,
        ghcjs_dom_web_gl_rendering_context_blend_func,
        webGLRenderingContextBlendFunc,
        ghcjs_dom_web_gl_rendering_context_blend_func_separate,
        webGLRenderingContextBlendFuncSeparate,
        ghcjs_dom_web_gl_rendering_context_buffer_data,
        webGLRenderingContextBufferData,
        ghcjs_dom_web_gl_rendering_context_buffer_dataView,
        webGLRenderingContextBufferDataView,
        ghcjs_dom_web_gl_rendering_context_buffer_dataPtr,
        webGLRenderingContextBufferDataPtr,
        ghcjs_dom_web_gl_rendering_context_buffer_sub_data,
        webGLRenderingContextBufferSubData,
        ghcjs_dom_web_gl_rendering_context_buffer_sub_dataView,
        webGLRenderingContextBufferSubDataView,
        ghcjs_dom_web_gl_rendering_context_check_framebuffer_status,
        webGLRenderingContextCheckFramebufferStatus,
        ghcjs_dom_web_gl_rendering_context_clear,
        webGLRenderingContextClear,
        ghcjs_dom_web_gl_rendering_context_clear_color,
        webGLRenderingContextClearColor,
        ghcjs_dom_web_gl_rendering_context_clear_depth,
        webGLRenderingContextClearDepth,
        ghcjs_dom_web_gl_rendering_context_clear_stencil,
        webGLRenderingContextClearStencil,
        ghcjs_dom_web_gl_rendering_context_color_mask,
        webGLRenderingContextColorMask,
        ghcjs_dom_web_gl_rendering_context_compile_shader,
        webGLRenderingContextCompileShader,
        ghcjs_dom_web_gl_rendering_context_compressed_tex_image2_d,
        webGLRenderingContextCompressedTexImage2D,
        ghcjs_dom_web_gl_rendering_context_compressed_tex_sub_image2_d,
        webGLRenderingContextCompressedTexSubImage2D,
        ghcjs_dom_web_gl_rendering_context_copy_tex_image2_d,
        webGLRenderingContextCopyTexImage2D,
        ghcjs_dom_web_gl_rendering_context_copy_tex_sub_image2_d,
        webGLRenderingContextCopyTexSubImage2D,
        ghcjs_dom_web_gl_rendering_context_create_buffer,
        webGLRenderingContextCreateBuffer,
        ghcjs_dom_web_gl_rendering_context_create_framebuffer,
        webGLRenderingContextCreateFramebuffer,
        ghcjs_dom_web_gl_rendering_context_create_program,
        webGLRenderingContextCreateProgram,
        ghcjs_dom_web_gl_rendering_context_create_renderbuffer,
        webGLRenderingContextCreateRenderbuffer,
        ghcjs_dom_web_gl_rendering_context_create_shader,
        webGLRenderingContextCreateShader,
        ghcjs_dom_web_gl_rendering_context_create_texture,
        webGLRenderingContextCreateTexture,
        ghcjs_dom_web_gl_rendering_context_cull_face,
        webGLRenderingContextCullFace,
        ghcjs_dom_web_gl_rendering_context_delete_buffer,
        webGLRenderingContextDeleteBuffer,
        ghcjs_dom_web_gl_rendering_context_delete_framebuffer,
        webGLRenderingContextDeleteFramebuffer,
        ghcjs_dom_web_gl_rendering_context_delete_program,
        webGLRenderingContextDeleteProgram,
        ghcjs_dom_web_gl_rendering_context_delete_renderbuffer,
        webGLRenderingContextDeleteRenderbuffer,
        ghcjs_dom_web_gl_rendering_context_delete_shader,
        webGLRenderingContextDeleteShader,
        ghcjs_dom_web_gl_rendering_context_delete_texture,
        webGLRenderingContextDeleteTexture,
        ghcjs_dom_web_gl_rendering_context_depth_func,
        webGLRenderingContextDepthFunc,
        ghcjs_dom_web_gl_rendering_context_depth_mask,
        webGLRenderingContextDepthMask,
        ghcjs_dom_web_gl_rendering_context_depth_range,
        webGLRenderingContextDepthRange,
        ghcjs_dom_web_gl_rendering_context_detach_shader,
        webGLRenderingContextDetachShader,
        ghcjs_dom_web_gl_rendering_context_disable,
        webGLRenderingContextDisable,
        ghcjs_dom_web_gl_rendering_context_disable_vertex_attrib_array,
        webGLRenderingContextDisableVertexAttribArray,
        ghcjs_dom_web_gl_rendering_context_draw_arrays,
        webGLRenderingContextDrawArrays,
        ghcjs_dom_web_gl_rendering_context_draw_elements,
        webGLRenderingContextDrawElements,
        ghcjs_dom_web_gl_rendering_context_enable,
        webGLRenderingContextEnable,
        ghcjs_dom_web_gl_rendering_context_enable_vertex_attrib_array,
        webGLRenderingContextEnableVertexAttribArray,
        ghcjs_dom_web_gl_rendering_context_finish,
        webGLRenderingContextFinish,
        ghcjs_dom_web_gl_rendering_context_flush,
        webGLRenderingContextFlush,
        ghcjs_dom_web_gl_rendering_context_framebuffer_renderbuffer,
        webGLRenderingContextFramebufferRenderbuffer,
        ghcjs_dom_web_gl_rendering_context_framebuffer_texture2_d,
        webGLRenderingContextFramebufferTexture2D,
        ghcjs_dom_web_gl_rendering_context_front_face,
        webGLRenderingContextFrontFace,
        ghcjs_dom_web_gl_rendering_context_generate_mipmap,
        webGLRenderingContextGenerateMipmap,
        ghcjs_dom_web_gl_rendering_context_get_active_attrib,
        webGLRenderingContextGetActiveAttrib,
        ghcjs_dom_web_gl_rendering_context_get_active_uniform,
        webGLRenderingContextGetActiveUniform,
        ghcjs_dom_web_gl_rendering_context_get_attached_shaders,
        webGLRenderingContextGetAttachedShaders,
        ghcjs_dom_web_gl_rendering_context_get_attrib_location,
        webGLRenderingContextGetAttribLocation,
        ghcjs_dom_web_gl_rendering_context_get_buffer_parameter,
        webGLRenderingContextGetBufferParameter,
        ghcjs_dom_web_gl_rendering_context_get_context_attributes,
        webGLRenderingContextGetContextAttributes,
        ghcjs_dom_web_gl_rendering_context_get_error,
        webGLRenderingContextGetError,
        ghcjs_dom_web_gl_rendering_context_get_extension,
        webGLRenderingContextGetExtension,
        ghcjs_dom_web_gl_rendering_context_get_framebuffer_attachment_parameter,
        webGLRenderingContextGetFramebufferAttachmentParameter,
        ghcjs_dom_web_gl_rendering_context_get_parameter,
        webGLRenderingContextGetParameter,
        ghcjs_dom_web_gl_rendering_context_get_program_parameter,
        webGLRenderingContextGetProgramParameter,
        ghcjs_dom_web_gl_rendering_context_get_program_info_log,
        webGLRenderingContextGetProgramInfoLog,
        ghcjs_dom_web_gl_rendering_context_get_renderbuffer_parameter,
        webGLRenderingContextGetRenderbufferParameter,
        ghcjs_dom_web_gl_rendering_context_get_shader_parameter,
        webGLRenderingContextGetShaderParameter,
        ghcjs_dom_web_gl_rendering_context_get_shader_info_log,
        webGLRenderingContextGetShaderInfoLog,
        ghcjs_dom_web_gl_rendering_context_get_shader_precision_format,
        webGLRenderingContextGetShaderPrecisionFormat,
        ghcjs_dom_web_gl_rendering_context_get_shader_source,
        webGLRenderingContextGetShaderSource,
        ghcjs_dom_web_gl_rendering_context_get_supported_extensions,
        webGLRenderingContextGetSupportedExtensions,
        ghcjs_dom_web_gl_rendering_context_get_tex_parameter,
        webGLRenderingContextGetTexParameter,
        ghcjs_dom_web_gl_rendering_context_get_uniform,
        webGLRenderingContextGetUniform,
        ghcjs_dom_web_gl_rendering_context_get_uniform_location,
        webGLRenderingContextGetUniformLocation,
        ghcjs_dom_web_gl_rendering_context_get_vertex_attrib,
        webGLRenderingContextGetVertexAttrib,
        ghcjs_dom_web_gl_rendering_context_get_vertex_attrib_offset,
        webGLRenderingContextGetVertexAttribOffset,
        ghcjs_dom_web_gl_rendering_context_hint, webGLRenderingContextHint,
        ghcjs_dom_web_gl_rendering_context_is_buffer,
        webGLRenderingContextIsBuffer,
        ghcjs_dom_web_gl_rendering_context_is_context_lost,
        webGLRenderingContextIsContextLost,
        ghcjs_dom_web_gl_rendering_context_is_enabled,
        webGLRenderingContextIsEnabled,
        ghcjs_dom_web_gl_rendering_context_is_framebuffer,
        webGLRenderingContextIsFramebuffer,
        ghcjs_dom_web_gl_rendering_context_is_program,
        webGLRenderingContextIsProgram,
        ghcjs_dom_web_gl_rendering_context_is_renderbuffer,
        webGLRenderingContextIsRenderbuffer,
        ghcjs_dom_web_gl_rendering_context_is_shader,
        webGLRenderingContextIsShader,
        ghcjs_dom_web_gl_rendering_context_is_texture,
        webGLRenderingContextIsTexture,
        ghcjs_dom_web_gl_rendering_context_line_width,
        webGLRenderingContextLineWidth,
        ghcjs_dom_web_gl_rendering_context_link_program,
        webGLRenderingContextLinkProgram,
        ghcjs_dom_web_gl_rendering_context_pixel_storei,
        webGLRenderingContextPixelStorei,
        ghcjs_dom_web_gl_rendering_context_polygon_offset,
        webGLRenderingContextPolygonOffset,
        ghcjs_dom_web_gl_rendering_context_read_pixels,
        webGLRenderingContextReadPixels,
        ghcjs_dom_web_gl_rendering_context_release_shader_compiler,
        webGLRenderingContextReleaseShaderCompiler,
        ghcjs_dom_web_gl_rendering_context_renderbuffer_storage,
        webGLRenderingContextRenderbufferStorage,
        ghcjs_dom_web_gl_rendering_context_sample_coverage,
        webGLRenderingContextSampleCoverage,
        ghcjs_dom_web_gl_rendering_context_scissor,
        webGLRenderingContextScissor,
        ghcjs_dom_web_gl_rendering_context_shader_source,
        webGLRenderingContextShaderSource,
        ghcjs_dom_web_gl_rendering_context_stencil_func,
        webGLRenderingContextStencilFunc,
        ghcjs_dom_web_gl_rendering_context_stencil_func_separate,
        webGLRenderingContextStencilFuncSeparate,
        ghcjs_dom_web_gl_rendering_context_stencil_mask,
        webGLRenderingContextStencilMask,
        ghcjs_dom_web_gl_rendering_context_stencil_mask_separate,
        webGLRenderingContextStencilMaskSeparate,
        ghcjs_dom_web_gl_rendering_context_stencil_op,
        webGLRenderingContextStencilOp,
        ghcjs_dom_web_gl_rendering_context_stencil_op_separate,
        webGLRenderingContextStencilOpSeparate,
        ghcjs_dom_web_gl_rendering_context_tex_parameterf,
        webGLRenderingContextTexParameterf,
        ghcjs_dom_web_gl_rendering_context_tex_parameteri,
        webGLRenderingContextTexParameteri,
        ghcjs_dom_web_gl_rendering_context_tex_image2_dView,
        webGLRenderingContextTexImage2DView,
        ghcjs_dom_web_gl_rendering_context_tex_image2_dData,
        webGLRenderingContextTexImage2DData,
        ghcjs_dom_web_gl_rendering_context_tex_image2_d,
        webGLRenderingContextTexImage2D,
        ghcjs_dom_web_gl_rendering_context_tex_image2_dCanvas,
        webGLRenderingContextTexImage2DCanvas,
        ghcjs_dom_web_gl_rendering_context_tex_image2_dVideo,
        webGLRenderingContextTexImage2DVideo,
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dView,
        webGLRenderingContextTexSubImage2DView,
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dData,
        webGLRenderingContextTexSubImage2DData,
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_d,
        webGLRenderingContextTexSubImage2D,
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dCanvas,
        webGLRenderingContextTexSubImage2DCanvas,
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dVideo,
        webGLRenderingContextTexSubImage2DVideo,
        ghcjs_dom_web_gl_rendering_context_uniform1f,
        webGLRenderingContextUniform1f,
        ghcjs_dom_web_gl_rendering_context_uniform1fv,
        webGLRenderingContextUniform1fv,
        ghcjs_dom_web_gl_rendering_context_uniform1i,
        webGLRenderingContextUniform1i,
        ghcjs_dom_web_gl_rendering_context_uniform1iv,
        webGLRenderingContextUniform1iv,
        ghcjs_dom_web_gl_rendering_context_uniform2f,
        webGLRenderingContextUniform2f,
        ghcjs_dom_web_gl_rendering_context_uniform2fv,
        webGLRenderingContextUniform2fv,
        ghcjs_dom_web_gl_rendering_context_uniform2i,
        webGLRenderingContextUniform2i,
        ghcjs_dom_web_gl_rendering_context_uniform2iv,
        webGLRenderingContextUniform2iv,
        ghcjs_dom_web_gl_rendering_context_uniform3f,
        webGLRenderingContextUniform3f,
        ghcjs_dom_web_gl_rendering_context_uniform3fv,
        webGLRenderingContextUniform3fv,
        ghcjs_dom_web_gl_rendering_context_uniform3i,
        webGLRenderingContextUniform3i,
        ghcjs_dom_web_gl_rendering_context_uniform3iv,
        webGLRenderingContextUniform3iv,
        ghcjs_dom_web_gl_rendering_context_uniform4f,
        webGLRenderingContextUniform4f,
        ghcjs_dom_web_gl_rendering_context_uniform4fv,
        webGLRenderingContextUniform4fv,
        ghcjs_dom_web_gl_rendering_context_uniform4i,
        webGLRenderingContextUniform4i,
        ghcjs_dom_web_gl_rendering_context_uniform4iv,
        webGLRenderingContextUniform4iv,
        ghcjs_dom_web_gl_rendering_context_uniform_matrix2fv,
        webGLRenderingContextUniformMatrix2fv,
        ghcjs_dom_web_gl_rendering_context_uniform_matrix3fv,
        webGLRenderingContextUniformMatrix3fv,
        ghcjs_dom_web_gl_rendering_context_uniform_matrix4fv,
        webGLRenderingContextUniformMatrix4fv,
        ghcjs_dom_web_gl_rendering_context_use_program,
        webGLRenderingContextUseProgram,
        ghcjs_dom_web_gl_rendering_context_validate_program,
        webGLRenderingContextValidateProgram,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib1f,
        webGLRenderingContextVertexAttrib1f,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib1fv,
        webGLRenderingContextVertexAttrib1fv,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib2f,
        webGLRenderingContextVertexAttrib2f,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib2fv,
        webGLRenderingContextVertexAttrib2fv,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib3f,
        webGLRenderingContextVertexAttrib3f,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib3fv,
        webGLRenderingContextVertexAttrib3fv,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib4f,
        webGLRenderingContextVertexAttrib4f,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib4fv,
        webGLRenderingContextVertexAttrib4fv,
        ghcjs_dom_web_gl_rendering_context_vertex_attrib_pointer,
        webGLRenderingContextVertexAttribPointer,
        ghcjs_dom_web_gl_rendering_context_viewport,
        webGLRenderingContextViewport, cDEPTH_BUFFER_BIT,
        cSTENCIL_BUFFER_BIT, cCOLOR_BUFFER_BIT, cPOINTS, cLINES,
        cLINE_LOOP, cLINE_STRIP, cTRIANGLES, cTRIANGLE_STRIP,
        cTRIANGLE_FAN, cZERO, cONE, cSRC_COLOR, cONE_MINUS_SRC_COLOR,
        cSRC_ALPHA, cONE_MINUS_SRC_ALPHA, cDST_ALPHA, cONE_MINUS_DST_ALPHA,
        cDST_COLOR, cONE_MINUS_DST_COLOR, cSRC_ALPHA_SATURATE, cFUNC_ADD,
        cBLEND_EQUATION, cBLEND_EQUATION_RGB, cBLEND_EQUATION_ALPHA,
        cFUNC_SUBTRACT, cFUNC_REVERSE_SUBTRACT, cBLEND_DST_RGB,
        cBLEND_SRC_RGB, cBLEND_DST_ALPHA, cBLEND_SRC_ALPHA,
        cCONSTANT_COLOR, cONE_MINUS_CONSTANT_COLOR, cCONSTANT_ALPHA,
        cONE_MINUS_CONSTANT_ALPHA, cBLEND_COLOR, cARRAY_BUFFER,
        cELEMENT_ARRAY_BUFFER, cARRAY_BUFFER_BINDING,
        cELEMENT_ARRAY_BUFFER_BINDING, cSTREAM_DRAW, cSTATIC_DRAW,
        cDYNAMIC_DRAW, cBUFFER_SIZE, cBUFFER_USAGE, cCURRENT_VERTEX_ATTRIB,
        cFRONT, cBACK, cFRONT_AND_BACK, cTEXTURE_2D, cCULL_FACE, cBLEND,
        cDITHER, cSTENCIL_TEST, cDEPTH_TEST, cSCISSOR_TEST,
        cPOLYGON_OFFSET_FILL, cSAMPLE_ALPHA_TO_COVERAGE, cSAMPLE_COVERAGE,
        cNO_ERROR, cINVALID_ENUM, cINVALID_VALUE, cINVALID_OPERATION,
        cOUT_OF_MEMORY, cCW, cCCW, cLINE_WIDTH, cALIASED_POINT_SIZE_RANGE,
        cALIASED_LINE_WIDTH_RANGE, cCULL_FACE_MODE, cFRONT_FACE,
        cDEPTH_RANGE, cDEPTH_WRITEMASK, cDEPTH_CLEAR_VALUE, cDEPTH_FUNC,
        cSTENCIL_CLEAR_VALUE, cSTENCIL_FUNC, cSTENCIL_FAIL,
        cSTENCIL_PASS_DEPTH_FAIL, cSTENCIL_PASS_DEPTH_PASS, cSTENCIL_REF,
        cSTENCIL_VALUE_MASK, cSTENCIL_WRITEMASK, cSTENCIL_BACK_FUNC,
        cSTENCIL_BACK_FAIL, cSTENCIL_BACK_PASS_DEPTH_FAIL,
        cSTENCIL_BACK_PASS_DEPTH_PASS, cSTENCIL_BACK_REF,
        cSTENCIL_BACK_VALUE_MASK, cSTENCIL_BACK_WRITEMASK, cVIEWPORT,
        cSCISSOR_BOX, cCOLOR_CLEAR_VALUE, cCOLOR_WRITEMASK,
        cUNPACK_ALIGNMENT, cPACK_ALIGNMENT, cMAX_TEXTURE_SIZE,
        cMAX_VIEWPORT_DIMS, cSUBPIXEL_BITS, cRED_BITS, cGREEN_BITS,
        cBLUE_BITS, cALPHA_BITS, cDEPTH_BITS, cSTENCIL_BITS,
        cPOLYGON_OFFSET_UNITS, cPOLYGON_OFFSET_FACTOR, cTEXTURE_BINDING_2D,
        cSAMPLE_BUFFERS, cSAMPLES, cSAMPLE_COVERAGE_VALUE,
        cSAMPLE_COVERAGE_INVERT, cCOMPRESSED_TEXTURE_FORMATS, cDONT_CARE,
        cFASTEST, cNICEST, cGENERATE_MIPMAP_HINT, cBYTE, cUNSIGNED_BYTE,
        cSHORT, cUNSIGNED_SHORT, cINT, cUNSIGNED_INT, cFLOAT,
        cDEPTH_COMPONENT, cALPHA, cRGB, cRGBA, cLUMINANCE,
        cLUMINANCE_ALPHA, cUNSIGNED_SHORT_4_4_4_4, cUNSIGNED_SHORT_5_5_5_1,
        cUNSIGNED_SHORT_5_6_5, cFRAGMENT_SHADER, cVERTEX_SHADER,
        cMAX_VERTEX_ATTRIBS, cMAX_VERTEX_UNIFORM_VECTORS,
        cMAX_VARYING_VECTORS, cMAX_COMBINED_TEXTURE_IMAGE_UNITS,
        cMAX_VERTEX_TEXTURE_IMAGE_UNITS, cMAX_TEXTURE_IMAGE_UNITS,
        cMAX_FRAGMENT_UNIFORM_VECTORS, cSHADER_TYPE, cDELETE_STATUS,
        cLINK_STATUS, cVALIDATE_STATUS, cATTACHED_SHADERS,
        cACTIVE_UNIFORMS, cACTIVE_ATTRIBUTES, cSHADING_LANGUAGE_VERSION,
        cCURRENT_PROGRAM, cNEVER, cLESS, cEQUAL, cLEQUAL, cGREATER,
        cNOTEQUAL, cGEQUAL, cALWAYS, cKEEP, cREPLACE, cINCR, cDECR,
        cINVERT, cINCR_WRAP, cDECR_WRAP, cVENDOR, cRENDERER, cVERSION,
        cNEAREST, cLINEAR, cNEAREST_MIPMAP_NEAREST, cLINEAR_MIPMAP_NEAREST,
        cNEAREST_MIPMAP_LINEAR, cLINEAR_MIPMAP_LINEAR, cTEXTURE_MAG_FILTER,
        cTEXTURE_MIN_FILTER, cTEXTURE_WRAP_S, cTEXTURE_WRAP_T, cTEXTURE,
        cTEXTURE_CUBE_MAP, cTEXTURE_BINDING_CUBE_MAP,
        cTEXTURE_CUBE_MAP_POSITIVE_X, cTEXTURE_CUBE_MAP_NEGATIVE_X,
        cTEXTURE_CUBE_MAP_POSITIVE_Y, cTEXTURE_CUBE_MAP_NEGATIVE_Y,
        cTEXTURE_CUBE_MAP_POSITIVE_Z, cTEXTURE_CUBE_MAP_NEGATIVE_Z,
        cMAX_CUBE_MAP_TEXTURE_SIZE, cTEXTURE0, cTEXTURE1, cTEXTURE2,
        cTEXTURE3, cTEXTURE4, cTEXTURE5, cTEXTURE6, cTEXTURE7, cTEXTURE8,
        cTEXTURE9, cTEXTURE10, cTEXTURE11, cTEXTURE12, cTEXTURE13,
        cTEXTURE14, cTEXTURE15, cTEXTURE16, cTEXTURE17, cTEXTURE18,
        cTEXTURE19, cTEXTURE20, cTEXTURE21, cTEXTURE22, cTEXTURE23,
        cTEXTURE24, cTEXTURE25, cTEXTURE26, cTEXTURE27, cTEXTURE28,
        cTEXTURE29, cTEXTURE30, cTEXTURE31, cACTIVE_TEXTURE, cREPEAT,
        cCLAMP_TO_EDGE, cMIRRORED_REPEAT, cFLOAT_VEC2, cFLOAT_VEC3,
        cFLOAT_VEC4, cINT_VEC2, cINT_VEC3, cINT_VEC4, cBOOL, cBOOL_VEC2,
        cBOOL_VEC3, cBOOL_VEC4, cFLOAT_MAT2, cFLOAT_MAT3, cFLOAT_MAT4,
        cSAMPLER_2D, cSAMPLER_CUBE, cVERTEX_ATTRIB_ARRAY_ENABLED,
        cVERTEX_ATTRIB_ARRAY_SIZE, cVERTEX_ATTRIB_ARRAY_STRIDE,
        cVERTEX_ATTRIB_ARRAY_TYPE, cVERTEX_ATTRIB_ARRAY_NORMALIZED,
        cVERTEX_ATTRIB_ARRAY_POINTER, cVERTEX_ATTRIB_ARRAY_BUFFER_BINDING,
        cCOMPILE_STATUS, cLOW_FLOAT, cMEDIUM_FLOAT, cHIGH_FLOAT, cLOW_INT,
        cMEDIUM_INT, cHIGH_INT, cFRAMEBUFFER, cRENDERBUFFER, cRGBA4,
        cRGB5_A1, cRGB565, cDEPTH_COMPONENT16, cSTENCIL_INDEX,
        cSTENCIL_INDEX8, cDEPTH_STENCIL, cRENDERBUFFER_WIDTH,
        cRENDERBUFFER_HEIGHT, cRENDERBUFFER_INTERNAL_FORMAT,
        cRENDERBUFFER_RED_SIZE, cRENDERBUFFER_GREEN_SIZE,
        cRENDERBUFFER_BLUE_SIZE, cRENDERBUFFER_ALPHA_SIZE,
        cRENDERBUFFER_DEPTH_SIZE, cRENDERBUFFER_STENCIL_SIZE,
        cFRAMEBUFFER_ATTACHMENT_OBJECT_TYPE,
        cFRAMEBUFFER_ATTACHMENT_OBJECT_NAME,
        cFRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL,
        cFRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, cCOLOR_ATTACHMENT0,
        cDEPTH_ATTACHMENT, cSTENCIL_ATTACHMENT, cDEPTH_STENCIL_ATTACHMENT,
        cNONE, cFRAMEBUFFER_COMPLETE, cFRAMEBUFFER_INCOMPLETE_ATTACHMENT,
        cFRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT,
        cFRAMEBUFFER_INCOMPLETE_DIMENSIONS, cFRAMEBUFFER_UNSUPPORTED,
        cFRAMEBUFFER_BINDING, cRENDERBUFFER_BINDING,
        cMAX_RENDERBUFFER_SIZE, cINVALID_FRAMEBUFFER_OPERATION,
        cUNPACK_FLIP_Y_WEBGL, cUNPACK_PREMULTIPLY_ALPHA_WEBGL,
        cCONTEXT_LOST_WEBGL, cUNPACK_COLORSPACE_CONVERSION_WEBGL,
        cBROWSER_DEFAULT_WEBGL,
        ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_width,
        webGLRenderingContextGetDrawingBufferWidth,
        ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_height,
        webGLRenderingContextGetDrawingBufferHeight, WebGLRenderingContext,
        IsWebGLRenderingContext, castToWebGLRenderingContext,
        gTypeWebGLRenderingContext, toWebGLRenderingContext)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"activeTexture\"]($2)"
        ghcjs_dom_web_gl_rendering_context_active_texture ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.activeTexture Mozilla WebGLRenderingContext.activeTexture documentation> 
webGLRenderingContextActiveTexture ::
                                   (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextActiveTexture self texture
  = ghcjs_dom_web_gl_rendering_context_active_texture
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      texture
 
foreign import javascript unsafe "$1[\"attachShader\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_attach_shader ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> JSRef WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.attachShader Mozilla WebGLRenderingContext.attachShader documentation> 
webGLRenderingContextAttachShader ::
                                  (IsWebGLRenderingContext self, IsWebGLProgram program,
                                   IsWebGLShader shader) =>
                                    self -> Maybe program -> Maybe shader -> IO ()
webGLRenderingContextAttachShader self program shader
  = ghcjs_dom_web_gl_rendering_context_attach_shader
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
 
foreign import javascript unsafe
        "$1[\"bindAttribLocation\"]($2, $3,\n$4)"
        ghcjs_dom_web_gl_rendering_context_bind_attrib_location ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> GLuint -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bindAttribLocation Mozilla WebGLRenderingContext.bindAttribLocation documentation> 
webGLRenderingContextBindAttribLocation ::
                                        (IsWebGLRenderingContext self, IsWebGLProgram program,
                                         ToJSString name) =>
                                          self -> Maybe program -> GLuint -> name -> IO ()
webGLRenderingContextBindAttribLocation self program index name
  = ghcjs_dom_web_gl_rendering_context_bind_attrib_location
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      index
      (toJSString name)
 
foreign import javascript unsafe "$1[\"bindBuffer\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_bind_buffer ::
        JSRef WebGLRenderingContext -> GLenum -> JSRef WebGLBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bindBuffer Mozilla WebGLRenderingContext.bindBuffer documentation> 
webGLRenderingContextBindBuffer ::
                                (IsWebGLRenderingContext self, IsWebGLBuffer buffer) =>
                                  self -> GLenum -> Maybe buffer -> IO ()
webGLRenderingContextBindBuffer self target buffer
  = ghcjs_dom_web_gl_rendering_context_bind_buffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unWebGLBuffer . toWebGLBuffer) buffer)
 
foreign import javascript unsafe "$1[\"bindFramebuffer\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_bind_framebuffer ::
        JSRef WebGLRenderingContext ->
          GLenum -> JSRef WebGLFramebuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bindFramebuffer Mozilla WebGLRenderingContext.bindFramebuffer documentation> 
webGLRenderingContextBindFramebuffer ::
                                     (IsWebGLRenderingContext self,
                                      IsWebGLFramebuffer framebuffer) =>
                                       self -> GLenum -> Maybe framebuffer -> IO ()
webGLRenderingContextBindFramebuffer self target framebuffer
  = ghcjs_dom_web_gl_rendering_context_bind_framebuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unWebGLFramebuffer . toWebGLFramebuffer)
         framebuffer)
 
foreign import javascript unsafe "$1[\"bindRenderbuffer\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_bind_renderbuffer ::
        JSRef WebGLRenderingContext ->
          GLenum -> JSRef WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bindRenderbuffer Mozilla WebGLRenderingContext.bindRenderbuffer documentation> 
webGLRenderingContextBindRenderbuffer ::
                                      (IsWebGLRenderingContext self,
                                       IsWebGLRenderbuffer renderbuffer) =>
                                        self -> GLenum -> Maybe renderbuffer -> IO ()
webGLRenderingContextBindRenderbuffer self target renderbuffer
  = ghcjs_dom_web_gl_rendering_context_bind_renderbuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unWebGLRenderbuffer . toWebGLRenderbuffer)
         renderbuffer)
 
foreign import javascript unsafe "$1[\"bindTexture\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_bind_texture ::
        JSRef WebGLRenderingContext ->
          GLenum -> JSRef WebGLTexture -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bindTexture Mozilla WebGLRenderingContext.bindTexture documentation> 
webGLRenderingContextBindTexture ::
                                 (IsWebGLRenderingContext self, IsWebGLTexture texture) =>
                                   self -> GLenum -> Maybe texture -> IO ()
webGLRenderingContextBindTexture self target texture
  = ghcjs_dom_web_gl_rendering_context_bind_texture
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unWebGLTexture . toWebGLTexture) texture)
 
foreign import javascript unsafe
        "$1[\"blendColor\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_blend_color ::
        JSRef WebGLRenderingContext ->
          GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.blendColor Mozilla WebGLRenderingContext.blendColor documentation> 
webGLRenderingContextBlendColor ::
                                (IsWebGLRenderingContext self) =>
                                  self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()
webGLRenderingContextBlendColor self red green blue alpha
  = ghcjs_dom_web_gl_rendering_context_blend_color
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      red
      green
      blue
      alpha
 
foreign import javascript unsafe "$1[\"blendEquation\"]($2)"
        ghcjs_dom_web_gl_rendering_context_blend_equation ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.blendEquation Mozilla WebGLRenderingContext.blendEquation documentation> 
webGLRenderingContextBlendEquation ::
                                   (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextBlendEquation self mode
  = ghcjs_dom_web_gl_rendering_context_blend_equation
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mode
 
foreign import javascript unsafe
        "$1[\"blendEquationSeparate\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_blend_equation_separate ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.blendEquationSeparate Mozilla WebGLRenderingContext.blendEquationSeparate documentation> 
webGLRenderingContextBlendEquationSeparate ::
                                           (IsWebGLRenderingContext self) =>
                                             self -> GLenum -> GLenum -> IO ()
webGLRenderingContextBlendEquationSeparate self modeRGB modeAlpha
  = ghcjs_dom_web_gl_rendering_context_blend_equation_separate
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      modeRGB
      modeAlpha
 
foreign import javascript unsafe "$1[\"blendFunc\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_blend_func ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.blendFunc Mozilla WebGLRenderingContext.blendFunc documentation> 
webGLRenderingContextBlendFunc ::
                               (IsWebGLRenderingContext self) => self -> GLenum -> GLenum -> IO ()
webGLRenderingContextBlendFunc self sfactor dfactor
  = ghcjs_dom_web_gl_rendering_context_blend_func
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      sfactor
      dfactor
 
foreign import javascript unsafe
        "$1[\"blendFuncSeparate\"]($2, $3,\n$4, $5)"
        ghcjs_dom_web_gl_rendering_context_blend_func_separate ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.blendFuncSeparate Mozilla WebGLRenderingContext.blendFuncSeparate documentation> 
webGLRenderingContextBlendFuncSeparate ::
                                       (IsWebGLRenderingContext self) =>
                                         self -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
webGLRenderingContextBlendFuncSeparate self srcRGB dstRGB srcAlpha
  dstAlpha
  = ghcjs_dom_web_gl_rendering_context_blend_func_separate
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      srcRGB
      dstRGB
      srcAlpha
      dstAlpha
 
foreign import javascript unsafe "$1[\"bufferData\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_buffer_data ::
        JSRef WebGLRenderingContext ->
          GLenum -> JSRef ArrayBuffer -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferData Mozilla WebGLRenderingContext.bufferData documentation> 
webGLRenderingContextBufferData ::
                                (IsWebGLRenderingContext self, IsArrayBuffer data') =>
                                  self -> GLenum -> Maybe data' -> GLenum -> IO ()
webGLRenderingContextBufferData self target data' usage
  = ghcjs_dom_web_gl_rendering_context_buffer_data
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unArrayBuffer . toArrayBuffer) data')
      usage
 
foreign import javascript unsafe "$1[\"bufferData\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_buffer_dataView ::
        JSRef WebGLRenderingContext ->
          GLenum -> JSRef ArrayBufferView -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferDataView Mozilla WebGLRenderingContext.bufferDataView documentation> 
webGLRenderingContextBufferDataView ::
                                    (IsWebGLRenderingContext self, IsArrayBufferView data') =>
                                      self -> GLenum -> Maybe data' -> GLenum -> IO ()
webGLRenderingContextBufferDataView self target data' usage
  = ghcjs_dom_web_gl_rendering_context_buffer_dataView
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
      usage
 
foreign import javascript unsafe "$1[\"bufferData\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_buffer_dataPtr ::
        JSRef WebGLRenderingContext -> GLenum -> Double -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferDataPtr Mozilla WebGLRenderingContext.bufferDataPtr documentation> 
webGLRenderingContextBufferDataPtr ::
                                   (IsWebGLRenderingContext self) =>
                                     self -> GLenum -> GLsizeiptr -> GLenum -> IO ()
webGLRenderingContextBufferDataPtr self target size usage
  = ghcjs_dom_web_gl_rendering_context_buffer_dataPtr
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (fromIntegral size)
      usage
 
foreign import javascript unsafe
        "$1[\"bufferSubData\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_buffer_sub_data ::
        JSRef WebGLRenderingContext ->
          GLenum -> Double -> JSRef ArrayBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferSubData Mozilla WebGLRenderingContext.bufferSubData documentation> 
webGLRenderingContextBufferSubData ::
                                   (IsWebGLRenderingContext self, IsArrayBuffer data') =>
                                     self -> GLenum -> GLintptr -> Maybe data' -> IO ()
webGLRenderingContextBufferSubData self target offset data'
  = ghcjs_dom_web_gl_rendering_context_buffer_sub_data
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (fromIntegral offset)
      (maybe jsNull (unArrayBuffer . toArrayBuffer) data')
 
foreign import javascript unsafe
        "$1[\"bufferSubData\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_buffer_sub_dataView ::
        JSRef WebGLRenderingContext ->
          GLenum -> Double -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferSubDataView Mozilla WebGLRenderingContext.bufferSubDataView documentation> 
webGLRenderingContextBufferSubDataView ::
                                       (IsWebGLRenderingContext self, IsArrayBufferView data') =>
                                         self -> GLenum -> GLintptr -> Maybe data' -> IO ()
webGLRenderingContextBufferSubDataView self target offset data'
  = ghcjs_dom_web_gl_rendering_context_buffer_sub_dataView
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      (fromIntegral offset)
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe
        "$1[\"checkFramebufferStatus\"]($2)"
        ghcjs_dom_web_gl_rendering_context_check_framebuffer_status ::
        JSRef WebGLRenderingContext -> GLenum -> IO GLenum

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.checkFramebufferStatus Mozilla WebGLRenderingContext.checkFramebufferStatus documentation> 
webGLRenderingContextCheckFramebufferStatus ::
                                            (IsWebGLRenderingContext self) =>
                                              self -> GLenum -> IO GLenum
webGLRenderingContextCheckFramebufferStatus self target
  = ghcjs_dom_web_gl_rendering_context_check_framebuffer_status
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
 
foreign import javascript unsafe "$1[\"clear\"]($2)"
        ghcjs_dom_web_gl_rendering_context_clear ::
        JSRef WebGLRenderingContext -> GLbitfield -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.clear Mozilla WebGLRenderingContext.clear documentation> 
webGLRenderingContextClear ::
                           (IsWebGLRenderingContext self) => self -> GLbitfield -> IO ()
webGLRenderingContextClear self mask
  = ghcjs_dom_web_gl_rendering_context_clear
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mask
 
foreign import javascript unsafe
        "$1[\"clearColor\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_clear_color ::
        JSRef WebGLRenderingContext ->
          GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.clearColor Mozilla WebGLRenderingContext.clearColor documentation> 
webGLRenderingContextClearColor ::
                                (IsWebGLRenderingContext self) =>
                                  self -> GLclampf -> GLclampf -> GLclampf -> GLclampf -> IO ()
webGLRenderingContextClearColor self red green blue alpha
  = ghcjs_dom_web_gl_rendering_context_clear_color
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      red
      green
      blue
      alpha
 
foreign import javascript unsafe "$1[\"clearDepth\"]($2)"
        ghcjs_dom_web_gl_rendering_context_clear_depth ::
        JSRef WebGLRenderingContext -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.clearDepth Mozilla WebGLRenderingContext.clearDepth documentation> 
webGLRenderingContextClearDepth ::
                                (IsWebGLRenderingContext self) => self -> GLclampf -> IO ()
webGLRenderingContextClearDepth self depth
  = ghcjs_dom_web_gl_rendering_context_clear_depth
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      depth
 
foreign import javascript unsafe "$1[\"clearStencil\"]($2)"
        ghcjs_dom_web_gl_rendering_context_clear_stencil ::
        JSRef WebGLRenderingContext -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.clearStencil Mozilla WebGLRenderingContext.clearStencil documentation> 
webGLRenderingContextClearStencil ::
                                  (IsWebGLRenderingContext self) => self -> GLint -> IO ()
webGLRenderingContextClearStencil self s
  = ghcjs_dom_web_gl_rendering_context_clear_stencil
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      s
 
foreign import javascript unsafe
        "$1[\"colorMask\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_color_mask ::
        JSRef WebGLRenderingContext ->
          GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.colorMask Mozilla WebGLRenderingContext.colorMask documentation> 
webGLRenderingContextColorMask ::
                               (IsWebGLRenderingContext self) =>
                                 self -> GLboolean -> GLboolean -> GLboolean -> GLboolean -> IO ()
webGLRenderingContextColorMask self red green blue alpha
  = ghcjs_dom_web_gl_rendering_context_color_mask
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      red
      green
      blue
      alpha
 
foreign import javascript unsafe "$1[\"compileShader\"]($2)"
        ghcjs_dom_web_gl_rendering_context_compile_shader ::
        JSRef WebGLRenderingContext -> JSRef WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.compileShader Mozilla WebGLRenderingContext.compileShader documentation> 
webGLRenderingContextCompileShader ::
                                   (IsWebGLRenderingContext self, IsWebGLShader shader) =>
                                     self -> Maybe shader -> IO ()
webGLRenderingContextCompileShader self shader
  = ghcjs_dom_web_gl_rendering_context_compile_shader
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
 
foreign import javascript unsafe
        "$1[\"compressedTexImage2D\"]($2,\n$3, $4, $5, $6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_compressed_tex_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum ->
                GLsizei -> GLsizei -> GLint -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.compressedTexImage2D Mozilla WebGLRenderingContext.compressedTexImage2D documentation> 
webGLRenderingContextCompressedTexImage2D ::
                                          (IsWebGLRenderingContext self, IsArrayBufferView data') =>
                                            self ->
                                              GLenum ->
                                                GLint ->
                                                  GLenum ->
                                                    GLsizei ->
                                                      GLsizei -> GLint -> Maybe data' -> IO ()
webGLRenderingContextCompressedTexImage2D self target level
  internalformat width height border data'
  = ghcjs_dom_web_gl_rendering_context_compressed_tex_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      width
      height
      border
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe
        "$1[\"compressedTexSubImage2D\"]($2,\n$3, $4, $5, $6, $7, $8, $9)"
        ghcjs_dom_web_gl_rendering_context_compressed_tex_sub_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLsizei -> GLsizei -> GLenum -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.compressedTexSubImage2D Mozilla WebGLRenderingContext.compressedTexSubImage2D documentation> 
webGLRenderingContextCompressedTexSubImage2D ::
                                             (IsWebGLRenderingContext self,
                                              IsArrayBufferView data') =>
                                               self ->
                                                 GLenum ->
                                                   GLint ->
                                                     GLint ->
                                                       GLint ->
                                                         GLsizei ->
                                                           GLsizei -> GLenum -> Maybe data' -> IO ()
webGLRenderingContextCompressedTexSubImage2D self target level
  xoffset yoffset width height format data'
  = ghcjs_dom_web_gl_rendering_context_compressed_tex_sub_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      width
      height
      format
      (maybe jsNull (unArrayBufferView . toArrayBufferView) data')
 
foreign import javascript unsafe
        "$1[\"copyTexImage2D\"]($2, $3, $4,\n$5, $6, $7, $8, $9)"
        ghcjs_dom_web_gl_rendering_context_copy_tex_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum -> GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.copyTexImage2D Mozilla WebGLRenderingContext.copyTexImage2D documentation> 
webGLRenderingContextCopyTexImage2D ::
                                    (IsWebGLRenderingContext self) =>
                                      self ->
                                        GLenum ->
                                          GLint ->
                                            GLenum ->
                                              GLint -> GLint -> GLsizei -> GLsizei -> GLint -> IO ()
webGLRenderingContextCopyTexImage2D self target level
  internalformat x y width height border
  = ghcjs_dom_web_gl_rendering_context_copy_tex_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      x
      y
      width
      height
      border
 
foreign import javascript unsafe
        "$1[\"copyTexSubImage2D\"]($2, $3,\n$4, $5, $6, $7, $8, $9)"
        ghcjs_dom_web_gl_rendering_context_copy_tex_sub_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint -> GLint -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.copyTexSubImage2D Mozilla WebGLRenderingContext.copyTexSubImage2D documentation> 
webGLRenderingContextCopyTexSubImage2D ::
                                       (IsWebGLRenderingContext self) =>
                                         self ->
                                           GLenum ->
                                             GLint ->
                                               GLint ->
                                                 GLint ->
                                                   GLint -> GLint -> GLsizei -> GLsizei -> IO ()
webGLRenderingContextCopyTexSubImage2D self target level xoffset
  yoffset x y width height
  = ghcjs_dom_web_gl_rendering_context_copy_tex_sub_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      x
      y
      width
      height
 
foreign import javascript unsafe "$1[\"createBuffer\"]()"
        ghcjs_dom_web_gl_rendering_context_create_buffer ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createBuffer Mozilla WebGLRenderingContext.createBuffer documentation> 
webGLRenderingContextCreateBuffer ::
                                  (IsWebGLRenderingContext self) => self -> IO (Maybe WebGLBuffer)
webGLRenderingContextCreateBuffer self
  = (ghcjs_dom_web_gl_rendering_context_create_buffer
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createFramebuffer\"]()"
        ghcjs_dom_web_gl_rendering_context_create_framebuffer ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLFramebuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createFramebuffer Mozilla WebGLRenderingContext.createFramebuffer documentation> 
webGLRenderingContextCreateFramebuffer ::
                                       (IsWebGLRenderingContext self) =>
                                         self -> IO (Maybe WebGLFramebuffer)
webGLRenderingContextCreateFramebuffer self
  = (ghcjs_dom_web_gl_rendering_context_create_framebuffer
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createProgram\"]()"
        ghcjs_dom_web_gl_rendering_context_create_program ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLProgram)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createProgram Mozilla WebGLRenderingContext.createProgram documentation> 
webGLRenderingContextCreateProgram ::
                                   (IsWebGLRenderingContext self) => self -> IO (Maybe WebGLProgram)
webGLRenderingContextCreateProgram self
  = (ghcjs_dom_web_gl_rendering_context_create_program
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createRenderbuffer\"]()"
        ghcjs_dom_web_gl_rendering_context_create_renderbuffer ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLRenderbuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createRenderbuffer Mozilla WebGLRenderingContext.createRenderbuffer documentation> 
webGLRenderingContextCreateRenderbuffer ::
                                        (IsWebGLRenderingContext self) =>
                                          self -> IO (Maybe WebGLRenderbuffer)
webGLRenderingContextCreateRenderbuffer self
  = (ghcjs_dom_web_gl_rendering_context_create_renderbuffer
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createShader\"]($2)"
        ghcjs_dom_web_gl_rendering_context_create_shader ::
        JSRef WebGLRenderingContext -> GLenum -> IO (JSRef WebGLShader)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createShader Mozilla WebGLRenderingContext.createShader documentation> 
webGLRenderingContextCreateShader ::
                                  (IsWebGLRenderingContext self) =>
                                    self -> GLenum -> IO (Maybe WebGLShader)
webGLRenderingContextCreateShader self type'
  = (ghcjs_dom_web_gl_rendering_context_create_shader
       (unWebGLRenderingContext (toWebGLRenderingContext self))
       type')
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"createTexture\"]()"
        ghcjs_dom_web_gl_rendering_context_create_texture ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLTexture)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.createTexture Mozilla WebGLRenderingContext.createTexture documentation> 
webGLRenderingContextCreateTexture ::
                                   (IsWebGLRenderingContext self) => self -> IO (Maybe WebGLTexture)
webGLRenderingContextCreateTexture self
  = (ghcjs_dom_web_gl_rendering_context_create_texture
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"cullFace\"]($2)"
        ghcjs_dom_web_gl_rendering_context_cull_face ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.cullFace Mozilla WebGLRenderingContext.cullFace documentation> 
webGLRenderingContextCullFace ::
                              (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextCullFace self mode
  = ghcjs_dom_web_gl_rendering_context_cull_face
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mode
 
foreign import javascript unsafe "$1[\"deleteBuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_buffer ::
        JSRef WebGLRenderingContext -> JSRef WebGLBuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteBuffer Mozilla WebGLRenderingContext.deleteBuffer documentation> 
webGLRenderingContextDeleteBuffer ::
                                  (IsWebGLRenderingContext self, IsWebGLBuffer buffer) =>
                                    self -> Maybe buffer -> IO ()
webGLRenderingContextDeleteBuffer self buffer
  = ghcjs_dom_web_gl_rendering_context_delete_buffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLBuffer . toWebGLBuffer) buffer)
 
foreign import javascript unsafe "$1[\"deleteFramebuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_framebuffer ::
        JSRef WebGLRenderingContext -> JSRef WebGLFramebuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteFramebuffer Mozilla WebGLRenderingContext.deleteFramebuffer documentation> 
webGLRenderingContextDeleteFramebuffer ::
                                       (IsWebGLRenderingContext self,
                                        IsWebGLFramebuffer framebuffer) =>
                                         self -> Maybe framebuffer -> IO ()
webGLRenderingContextDeleteFramebuffer self framebuffer
  = ghcjs_dom_web_gl_rendering_context_delete_framebuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLFramebuffer . toWebGLFramebuffer)
         framebuffer)
 
foreign import javascript unsafe "$1[\"deleteProgram\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_program ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteProgram Mozilla WebGLRenderingContext.deleteProgram documentation> 
webGLRenderingContextDeleteProgram ::
                                   (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                     self -> Maybe program -> IO ()
webGLRenderingContextDeleteProgram self program
  = ghcjs_dom_web_gl_rendering_context_delete_program
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe "$1[\"deleteRenderbuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_renderbuffer ::
        JSRef WebGLRenderingContext -> JSRef WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteRenderbuffer Mozilla WebGLRenderingContext.deleteRenderbuffer documentation> 
webGLRenderingContextDeleteRenderbuffer ::
                                        (IsWebGLRenderingContext self,
                                         IsWebGLRenderbuffer renderbuffer) =>
                                          self -> Maybe renderbuffer -> IO ()
webGLRenderingContextDeleteRenderbuffer self renderbuffer
  = ghcjs_dom_web_gl_rendering_context_delete_renderbuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLRenderbuffer . toWebGLRenderbuffer)
         renderbuffer)
 
foreign import javascript unsafe "$1[\"deleteShader\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_shader ::
        JSRef WebGLRenderingContext -> JSRef WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteShader Mozilla WebGLRenderingContext.deleteShader documentation> 
webGLRenderingContextDeleteShader ::
                                  (IsWebGLRenderingContext self, IsWebGLShader shader) =>
                                    self -> Maybe shader -> IO ()
webGLRenderingContextDeleteShader self shader
  = ghcjs_dom_web_gl_rendering_context_delete_shader
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
 
foreign import javascript unsafe "$1[\"deleteTexture\"]($2)"
        ghcjs_dom_web_gl_rendering_context_delete_texture ::
        JSRef WebGLRenderingContext -> JSRef WebGLTexture -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.deleteTexture Mozilla WebGLRenderingContext.deleteTexture documentation> 
webGLRenderingContextDeleteTexture ::
                                   (IsWebGLRenderingContext self, IsWebGLTexture texture) =>
                                     self -> Maybe texture -> IO ()
webGLRenderingContextDeleteTexture self texture
  = ghcjs_dom_web_gl_rendering_context_delete_texture
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLTexture . toWebGLTexture) texture)
 
foreign import javascript unsafe "$1[\"depthFunc\"]($2)"
        ghcjs_dom_web_gl_rendering_context_depth_func ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.depthFunc Mozilla WebGLRenderingContext.depthFunc documentation> 
webGLRenderingContextDepthFunc ::
                               (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextDepthFunc self func
  = ghcjs_dom_web_gl_rendering_context_depth_func
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      func
 
foreign import javascript unsafe "$1[\"depthMask\"]($2)"
        ghcjs_dom_web_gl_rendering_context_depth_mask ::
        JSRef WebGLRenderingContext -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.depthMask Mozilla WebGLRenderingContext.depthMask documentation> 
webGLRenderingContextDepthMask ::
                               (IsWebGLRenderingContext self) => self -> GLboolean -> IO ()
webGLRenderingContextDepthMask self flag
  = ghcjs_dom_web_gl_rendering_context_depth_mask
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      flag
 
foreign import javascript unsafe "$1[\"depthRange\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_depth_range ::
        JSRef WebGLRenderingContext -> GLclampf -> GLclampf -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.depthRange Mozilla WebGLRenderingContext.depthRange documentation> 
webGLRenderingContextDepthRange ::
                                (IsWebGLRenderingContext self) =>
                                  self -> GLclampf -> GLclampf -> IO ()
webGLRenderingContextDepthRange self zNear zFar
  = ghcjs_dom_web_gl_rendering_context_depth_range
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      zNear
      zFar
 
foreign import javascript unsafe "$1[\"detachShader\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_detach_shader ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> JSRef WebGLShader -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.detachShader Mozilla WebGLRenderingContext.detachShader documentation> 
webGLRenderingContextDetachShader ::
                                  (IsWebGLRenderingContext self, IsWebGLProgram program,
                                   IsWebGLShader shader) =>
                                    self -> Maybe program -> Maybe shader -> IO ()
webGLRenderingContextDetachShader self program shader
  = ghcjs_dom_web_gl_rendering_context_detach_shader
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
 
foreign import javascript unsafe "$1[\"disable\"]($2)"
        ghcjs_dom_web_gl_rendering_context_disable ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.disable Mozilla WebGLRenderingContext.disable documentation> 
webGLRenderingContextDisable ::
                             (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextDisable self cap
  = ghcjs_dom_web_gl_rendering_context_disable
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      cap
 
foreign import javascript unsafe
        "$1[\"disableVertexAttribArray\"]($2)"
        ghcjs_dom_web_gl_rendering_context_disable_vertex_attrib_array ::
        JSRef WebGLRenderingContext -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.disableVertexAttribArray Mozilla WebGLRenderingContext.disableVertexAttribArray documentation> 
webGLRenderingContextDisableVertexAttribArray ::
                                              (IsWebGLRenderingContext self) =>
                                                self -> GLuint -> IO ()
webGLRenderingContextDisableVertexAttribArray self index
  = ghcjs_dom_web_gl_rendering_context_disable_vertex_attrib_array
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      index
 
foreign import javascript unsafe "$1[\"drawArrays\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_draw_arrays ::
        JSRef WebGLRenderingContext -> GLenum -> GLint -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.drawArrays Mozilla WebGLRenderingContext.drawArrays documentation> 
webGLRenderingContextDrawArrays ::
                                (IsWebGLRenderingContext self) =>
                                  self -> GLenum -> GLint -> GLsizei -> IO ()
webGLRenderingContextDrawArrays self mode first count
  = ghcjs_dom_web_gl_rendering_context_draw_arrays
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mode
      first
      count
 
foreign import javascript unsafe
        "$1[\"drawElements\"]($2, $3, $4,\n$5)"
        ghcjs_dom_web_gl_rendering_context_draw_elements ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLsizei -> GLenum -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.drawElements Mozilla WebGLRenderingContext.drawElements documentation> 
webGLRenderingContextDrawElements ::
                                  (IsWebGLRenderingContext self) =>
                                    self -> GLenum -> GLsizei -> GLenum -> GLintptr -> IO ()
webGLRenderingContextDrawElements self mode count type' offset
  = ghcjs_dom_web_gl_rendering_context_draw_elements
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mode
      count
      type'
      (fromIntegral offset)
 
foreign import javascript unsafe "$1[\"enable\"]($2)"
        ghcjs_dom_web_gl_rendering_context_enable ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.enable Mozilla WebGLRenderingContext.enable documentation> 
webGLRenderingContextEnable ::
                            (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextEnable self cap
  = ghcjs_dom_web_gl_rendering_context_enable
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      cap
 
foreign import javascript unsafe
        "$1[\"enableVertexAttribArray\"]($2)"
        ghcjs_dom_web_gl_rendering_context_enable_vertex_attrib_array ::
        JSRef WebGLRenderingContext -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.enableVertexAttribArray Mozilla WebGLRenderingContext.enableVertexAttribArray documentation> 
webGLRenderingContextEnableVertexAttribArray ::
                                             (IsWebGLRenderingContext self) =>
                                               self -> GLuint -> IO ()
webGLRenderingContextEnableVertexAttribArray self index
  = ghcjs_dom_web_gl_rendering_context_enable_vertex_attrib_array
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      index
 
foreign import javascript unsafe "$1[\"finish\"]()"
        ghcjs_dom_web_gl_rendering_context_finish ::
        JSRef WebGLRenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.finish Mozilla WebGLRenderingContext.finish documentation> 
webGLRenderingContextFinish ::
                            (IsWebGLRenderingContext self) => self -> IO ()
webGLRenderingContextFinish self
  = ghcjs_dom_web_gl_rendering_context_finish
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe "$1[\"flush\"]()"
        ghcjs_dom_web_gl_rendering_context_flush ::
        JSRef WebGLRenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.flush Mozilla WebGLRenderingContext.flush documentation> 
webGLRenderingContextFlush ::
                           (IsWebGLRenderingContext self) => self -> IO ()
webGLRenderingContextFlush self
  = ghcjs_dom_web_gl_rendering_context_flush
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe
        "$1[\"framebufferRenderbuffer\"]($2,\n$3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_framebuffer_renderbuffer ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLenum -> JSRef WebGLRenderbuffer -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.framebufferRenderbuffer Mozilla WebGLRenderingContext.framebufferRenderbuffer documentation> 
webGLRenderingContextFramebufferRenderbuffer ::
                                             (IsWebGLRenderingContext self,
                                              IsWebGLRenderbuffer renderbuffer) =>
                                               self ->
                                                 GLenum ->
                                                   GLenum -> GLenum -> Maybe renderbuffer -> IO ()
webGLRenderingContextFramebufferRenderbuffer self target attachment
  renderbuffertarget renderbuffer
  = ghcjs_dom_web_gl_rendering_context_framebuffer_renderbuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      attachment
      renderbuffertarget
      (maybe jsNull (unWebGLRenderbuffer . toWebGLRenderbuffer)
         renderbuffer)
 
foreign import javascript unsafe
        "$1[\"framebufferTexture2D\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_web_gl_rendering_context_framebuffer_texture2_d ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLenum -> JSRef WebGLTexture -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.framebufferTexture2D Mozilla WebGLRenderingContext.framebufferTexture2D documentation> 
webGLRenderingContextFramebufferTexture2D ::
                                          (IsWebGLRenderingContext self, IsWebGLTexture texture) =>
                                            self ->
                                              GLenum ->
                                                GLenum -> GLenum -> Maybe texture -> GLint -> IO ()
webGLRenderingContextFramebufferTexture2D self target attachment
  textarget texture level
  = ghcjs_dom_web_gl_rendering_context_framebuffer_texture2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      attachment
      textarget
      (maybe jsNull (unWebGLTexture . toWebGLTexture) texture)
      level
 
foreign import javascript unsafe "$1[\"frontFace\"]($2)"
        ghcjs_dom_web_gl_rendering_context_front_face ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.frontFace Mozilla WebGLRenderingContext.frontFace documentation> 
webGLRenderingContextFrontFace ::
                               (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextFrontFace self mode
  = ghcjs_dom_web_gl_rendering_context_front_face
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mode
 
foreign import javascript unsafe "$1[\"generateMipmap\"]($2)"
        ghcjs_dom_web_gl_rendering_context_generate_mipmap ::
        JSRef WebGLRenderingContext -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.generateMipmap Mozilla WebGLRenderingContext.generateMipmap documentation> 
webGLRenderingContextGenerateMipmap ::
                                    (IsWebGLRenderingContext self) => self -> GLenum -> IO ()
webGLRenderingContextGenerateMipmap self target
  = ghcjs_dom_web_gl_rendering_context_generate_mipmap
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
 
foreign import javascript unsafe "$1[\"getActiveAttrib\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_active_attrib ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> GLuint -> IO (JSRef WebGLActiveInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.activeAttrib Mozilla WebGLRenderingContext.activeAttrib documentation> 
webGLRenderingContextGetActiveAttrib ::
                                     (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                       self -> Maybe program -> GLuint -> IO (Maybe WebGLActiveInfo)
webGLRenderingContextGetActiveAttrib self program index
  = (ghcjs_dom_web_gl_rendering_context_get_active_attrib
       (unWebGLRenderingContext (toWebGLRenderingContext self))
       (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getActiveUniform\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_active_uniform ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> GLuint -> IO (JSRef WebGLActiveInfo)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.activeUniform Mozilla WebGLRenderingContext.activeUniform documentation> 
webGLRenderingContextGetActiveUniform ::
                                      (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                        self ->
                                          Maybe program -> GLuint -> IO (Maybe WebGLActiveInfo)
webGLRenderingContextGetActiveUniform self program index
  = (ghcjs_dom_web_gl_rendering_context_get_active_uniform
       (unWebGLRenderingContext (toWebGLRenderingContext self))
       (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
       index)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getAttachedShaders\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_attached_shaders ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.attachedShaders Mozilla WebGLRenderingContext.attachedShaders documentation> 
webGLRenderingContextGetAttachedShaders ::
                                        (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                          self -> Maybe program -> IO ()
webGLRenderingContextGetAttachedShaders self program
  = ghcjs_dom_web_gl_rendering_context_get_attached_shaders
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe
        "$1[\"getAttribLocation\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_attrib_location ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> JSString -> IO GLint

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.attribLocation Mozilla WebGLRenderingContext.attribLocation documentation> 
webGLRenderingContextGetAttribLocation ::
                                       (IsWebGLRenderingContext self, IsWebGLProgram program,
                                        ToJSString name) =>
                                         self -> Maybe program -> name -> IO GLint
webGLRenderingContextGetAttribLocation self program name
  = ghcjs_dom_web_gl_rendering_context_get_attrib_location
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      (toJSString name)
 
foreign import javascript unsafe
        "$1[\"getBufferParameter\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_buffer_parameter ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.bufferParameter Mozilla WebGLRenderingContext.bufferParameter documentation> 
webGLRenderingContextGetBufferParameter ::
                                        (IsWebGLRenderingContext self) =>
                                          self -> GLenum -> GLenum -> IO (JSRef a)
webGLRenderingContextGetBufferParameter self target pname
  = ghcjs_dom_web_gl_rendering_context_get_buffer_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      pname
 
foreign import javascript unsafe "$1[\"getContextAttributes\"]()"
        ghcjs_dom_web_gl_rendering_context_get_context_attributes ::
        JSRef WebGLRenderingContext -> IO (JSRef WebGLContextAttributes)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.contextAttributes Mozilla WebGLRenderingContext.contextAttributes documentation> 
webGLRenderingContextGetContextAttributes ::
                                          (IsWebGLRenderingContext self) =>
                                            self -> IO (Maybe WebGLContextAttributes)
webGLRenderingContextGetContextAttributes self
  = (ghcjs_dom_web_gl_rendering_context_get_context_attributes
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getError\"]()"
        ghcjs_dom_web_gl_rendering_context_get_error ::
        JSRef WebGLRenderingContext -> IO GLenum

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.error Mozilla WebGLRenderingContext.error documentation> 
webGLRenderingContextGetError ::
                              (IsWebGLRenderingContext self) => self -> IO GLenum
webGLRenderingContextGetError self
  = ghcjs_dom_web_gl_rendering_context_get_error
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe "$1[\"getExtension\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_extension ::
        JSRef WebGLRenderingContext -> JSString -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.extension Mozilla WebGLRenderingContext.extension documentation> 
webGLRenderingContextGetExtension ::
                                  (IsWebGLRenderingContext self, ToJSString name) =>
                                    self -> name -> IO (JSRef a)
webGLRenderingContextGetExtension self name
  = ghcjs_dom_web_gl_rendering_context_get_extension
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (toJSString name)
 
foreign import javascript unsafe
        "$1[\"getFramebufferAttachmentParameter\"]($2,\n$3, $4)"
        ghcjs_dom_web_gl_rendering_context_get_framebuffer_attachment_parameter
        ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.framebufferAttachmentParameter Mozilla WebGLRenderingContext.framebufferAttachmentParameter documentation> 
webGLRenderingContextGetFramebufferAttachmentParameter ::
                                                       (IsWebGLRenderingContext self) =>
                                                         self ->
                                                           GLenum ->
                                                             GLenum -> GLenum -> IO (JSRef a)
webGLRenderingContextGetFramebufferAttachmentParameter self target
  attachment pname
  = ghcjs_dom_web_gl_rendering_context_get_framebuffer_attachment_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      attachment
      pname
 
foreign import javascript unsafe "$1[\"getParameter\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_parameter ::
        JSRef WebGLRenderingContext -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.parameter Mozilla WebGLRenderingContext.parameter documentation> 
webGLRenderingContextGetParameter ::
                                  (IsWebGLRenderingContext self) => self -> GLenum -> IO (JSRef a)
webGLRenderingContextGetParameter self pname
  = ghcjs_dom_web_gl_rendering_context_get_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      pname
 
foreign import javascript unsafe
        "$1[\"getProgramParameter\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_get_program_parameter ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.programParameter Mozilla WebGLRenderingContext.programParameter documentation> 
webGLRenderingContextGetProgramParameter ::
                                         (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                           self -> Maybe program -> GLenum -> IO (JSRef a)
webGLRenderingContextGetProgramParameter self program pname
  = ghcjs_dom_web_gl_rendering_context_get_program_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      pname
 
foreign import javascript unsafe "$1[\"getProgramInfoLog\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_program_info_log ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.programInfoLog Mozilla WebGLRenderingContext.programInfoLog documentation> 
webGLRenderingContextGetProgramInfoLog ::
                                       (IsWebGLRenderingContext self, IsWebGLProgram program,
                                        FromJSString result) =>
                                         self -> Maybe program -> IO result
webGLRenderingContextGetProgramInfoLog self program
  = fromJSString <$>
      (ghcjs_dom_web_gl_rendering_context_get_program_info_log
         (unWebGLRenderingContext (toWebGLRenderingContext self))
         (maybe jsNull (unWebGLProgram . toWebGLProgram) program))
 
foreign import javascript unsafe
        "$1[\"getRenderbufferParameter\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_get_renderbuffer_parameter ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.renderbufferParameter Mozilla WebGLRenderingContext.renderbufferParameter documentation> 
webGLRenderingContextGetRenderbufferParameter ::
                                              (IsWebGLRenderingContext self) =>
                                                self -> GLenum -> GLenum -> IO (JSRef a)
webGLRenderingContextGetRenderbufferParameter self target pname
  = ghcjs_dom_web_gl_rendering_context_get_renderbuffer_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      pname
 
foreign import javascript unsafe
        "$1[\"getShaderParameter\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_shader_parameter ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLShader -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.shaderParameter Mozilla WebGLRenderingContext.shaderParameter documentation> 
webGLRenderingContextGetShaderParameter ::
                                        (IsWebGLRenderingContext self, IsWebGLShader shader) =>
                                          self -> Maybe shader -> GLenum -> IO (JSRef a)
webGLRenderingContextGetShaderParameter self shader pname
  = ghcjs_dom_web_gl_rendering_context_get_shader_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
      pname
 
foreign import javascript unsafe "$1[\"getShaderInfoLog\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_shader_info_log ::
        JSRef WebGLRenderingContext -> JSRef WebGLShader -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.shaderInfoLog Mozilla WebGLRenderingContext.shaderInfoLog documentation> 
webGLRenderingContextGetShaderInfoLog ::
                                      (IsWebGLRenderingContext self, IsWebGLShader shader,
                                       FromJSString result) =>
                                        self -> Maybe shader -> IO result
webGLRenderingContextGetShaderInfoLog self shader
  = fromJSString <$>
      (ghcjs_dom_web_gl_rendering_context_get_shader_info_log
         (unWebGLRenderingContext (toWebGLRenderingContext self))
         (maybe jsNull (unWebGLShader . toWebGLShader) shader))
 
foreign import javascript unsafe
        "$1[\"getShaderPrecisionFormat\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_get_shader_precision_format ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> IO (JSRef WebGLShaderPrecisionFormat)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.shaderPrecisionFormat Mozilla WebGLRenderingContext.shaderPrecisionFormat documentation> 
webGLRenderingContextGetShaderPrecisionFormat ::
                                              (IsWebGLRenderingContext self) =>
                                                self ->
                                                  GLenum ->
                                                    GLenum -> IO (Maybe WebGLShaderPrecisionFormat)
webGLRenderingContextGetShaderPrecisionFormat self shadertype
  precisiontype
  = (ghcjs_dom_web_gl_rendering_context_get_shader_precision_format
       (unWebGLRenderingContext (toWebGLRenderingContext self))
       shadertype
       precisiontype)
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getShaderSource\"]($2)"
        ghcjs_dom_web_gl_rendering_context_get_shader_source ::
        JSRef WebGLRenderingContext -> JSRef WebGLShader -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.shaderSource Mozilla WebGLRenderingContext.shaderSource documentation> 
webGLRenderingContextGetShaderSource ::
                                     (IsWebGLRenderingContext self, IsWebGLShader shader,
                                      FromJSString result) =>
                                       self -> Maybe shader -> IO result
webGLRenderingContextGetShaderSource self shader
  = fromJSString <$>
      (ghcjs_dom_web_gl_rendering_context_get_shader_source
         (unWebGLRenderingContext (toWebGLRenderingContext self))
         (maybe jsNull (unWebGLShader . toWebGLShader) shader))
 
foreign import javascript unsafe "$1[\"getSupportedExtensions\"]()"
        ghcjs_dom_web_gl_rendering_context_get_supported_extensions ::
        JSRef WebGLRenderingContext -> IO (JSRef [result])

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.supportedExtensions Mozilla WebGLRenderingContext.supportedExtensions documentation> 
webGLRenderingContextGetSupportedExtensions ::
                                            (IsWebGLRenderingContext self, FromJSString result) =>
                                              self -> IO [result]
webGLRenderingContextGetSupportedExtensions self
  = (ghcjs_dom_web_gl_rendering_context_get_supported_extensions
       (unWebGLRenderingContext (toWebGLRenderingContext self)))
      >>= fromJSRefUnchecked
 
foreign import javascript unsafe "$1[\"getTexParameter\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_tex_parameter ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texParameter Mozilla WebGLRenderingContext.texParameter documentation> 
webGLRenderingContextGetTexParameter ::
                                     (IsWebGLRenderingContext self) =>
                                       self -> GLenum -> GLenum -> IO (JSRef a)
webGLRenderingContextGetTexParameter self target pname
  = ghcjs_dom_web_gl_rendering_context_get_tex_parameter
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      pname
 
foreign import javascript unsafe "$1[\"getUniform\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_uniform ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> JSRef WebGLUniformLocation -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform Mozilla WebGLRenderingContext.uniform documentation> 
webGLRenderingContextGetUniform ::
                                (IsWebGLRenderingContext self, IsWebGLProgram program,
                                 IsWebGLUniformLocation location) =>
                                  self -> Maybe program -> Maybe location -> IO (JSRef a)
webGLRenderingContextGetUniform self program location
  = ghcjs_dom_web_gl_rendering_context_get_uniform
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
 
foreign import javascript unsafe
        "$1[\"getUniformLocation\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_uniform_location ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLProgram -> JSString -> IO (JSRef WebGLUniformLocation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniformLocation Mozilla WebGLRenderingContext.uniformLocation documentation> 
webGLRenderingContextGetUniformLocation ::
                                        (IsWebGLRenderingContext self, IsWebGLProgram program,
                                         ToJSString name) =>
                                          self ->
                                            Maybe program -> name -> IO (Maybe WebGLUniformLocation)
webGLRenderingContextGetUniformLocation self program name
  = (ghcjs_dom_web_gl_rendering_context_get_uniform_location
       (unWebGLRenderingContext (toWebGLRenderingContext self))
       (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
       (toJSString name))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"getVertexAttrib\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_get_vertex_attrib ::
        JSRef WebGLRenderingContext -> GLuint -> GLenum -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib Mozilla WebGLRenderingContext.vertexAttrib documentation> 
webGLRenderingContextGetVertexAttrib ::
                                     (IsWebGLRenderingContext self) =>
                                       self -> GLuint -> GLenum -> IO (JSRef a)
webGLRenderingContextGetVertexAttrib self index pname
  = ghcjs_dom_web_gl_rendering_context_get_vertex_attrib
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      index
      pname
 
foreign import javascript unsafe
        "$1[\"getVertexAttribOffset\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_get_vertex_attrib_offset ::
        JSRef WebGLRenderingContext -> GLuint -> GLenum -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttribOffset Mozilla WebGLRenderingContext.vertexAttribOffset documentation> 
webGLRenderingContextGetVertexAttribOffset ::
                                           (IsWebGLRenderingContext self) =>
                                             self -> GLuint -> GLenum -> IO GLsizeiptr
webGLRenderingContextGetVertexAttribOffset self index pname
  = round <$>
      (ghcjs_dom_web_gl_rendering_context_get_vertex_attrib_offset
         (unWebGLRenderingContext (toWebGLRenderingContext self))
         index
         pname)
 
foreign import javascript unsafe "$1[\"hint\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_hint ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.hint Mozilla WebGLRenderingContext.hint documentation> 
webGLRenderingContextHint ::
                          (IsWebGLRenderingContext self) => self -> GLenum -> GLenum -> IO ()
webGLRenderingContextHint self target mode
  = ghcjs_dom_web_gl_rendering_context_hint
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      mode
 
foreign import javascript unsafe "$1[\"isBuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_buffer ::
        JSRef WebGLRenderingContext -> JSRef WebGLBuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isBuffer Mozilla WebGLRenderingContext.isBuffer documentation> 
webGLRenderingContextIsBuffer ::
                              (IsWebGLRenderingContext self, IsWebGLBuffer buffer) =>
                                self -> Maybe buffer -> IO GLboolean
webGLRenderingContextIsBuffer self buffer
  = ghcjs_dom_web_gl_rendering_context_is_buffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLBuffer . toWebGLBuffer) buffer)
 
foreign import javascript unsafe "$1[\"isContextLost\"]()"
        ghcjs_dom_web_gl_rendering_context_is_context_lost ::
        JSRef WebGLRenderingContext -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isContextLost Mozilla WebGLRenderingContext.isContextLost documentation> 
webGLRenderingContextIsContextLost ::
                                   (IsWebGLRenderingContext self) => self -> IO GLboolean
webGLRenderingContextIsContextLost self
  = ghcjs_dom_web_gl_rendering_context_is_context_lost
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe "$1[\"isEnabled\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_enabled ::
        JSRef WebGLRenderingContext -> GLenum -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isEnabled Mozilla WebGLRenderingContext.isEnabled documentation> 
webGLRenderingContextIsEnabled ::
                               (IsWebGLRenderingContext self) => self -> GLenum -> IO GLboolean
webGLRenderingContextIsEnabled self cap
  = ghcjs_dom_web_gl_rendering_context_is_enabled
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      cap
 
foreign import javascript unsafe "$1[\"isFramebuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_framebuffer ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLFramebuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isFramebuffer Mozilla WebGLRenderingContext.isFramebuffer documentation> 
webGLRenderingContextIsFramebuffer ::
                                   (IsWebGLRenderingContext self, IsWebGLFramebuffer framebuffer) =>
                                     self -> Maybe framebuffer -> IO GLboolean
webGLRenderingContextIsFramebuffer self framebuffer
  = ghcjs_dom_web_gl_rendering_context_is_framebuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLFramebuffer . toWebGLFramebuffer)
         framebuffer)
 
foreign import javascript unsafe "$1[\"isProgram\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_program ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isProgram Mozilla WebGLRenderingContext.isProgram documentation> 
webGLRenderingContextIsProgram ::
                               (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                 self -> Maybe program -> IO GLboolean
webGLRenderingContextIsProgram self program
  = ghcjs_dom_web_gl_rendering_context_is_program
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe "$1[\"isRenderbuffer\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_renderbuffer ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLRenderbuffer -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isRenderbuffer Mozilla WebGLRenderingContext.isRenderbuffer documentation> 
webGLRenderingContextIsRenderbuffer ::
                                    (IsWebGLRenderingContext self,
                                     IsWebGLRenderbuffer renderbuffer) =>
                                      self -> Maybe renderbuffer -> IO GLboolean
webGLRenderingContextIsRenderbuffer self renderbuffer
  = ghcjs_dom_web_gl_rendering_context_is_renderbuffer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLRenderbuffer . toWebGLRenderbuffer)
         renderbuffer)
 
foreign import javascript unsafe "$1[\"isShader\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_shader ::
        JSRef WebGLRenderingContext -> JSRef WebGLShader -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isShader Mozilla WebGLRenderingContext.isShader documentation> 
webGLRenderingContextIsShader ::
                              (IsWebGLRenderingContext self, IsWebGLShader shader) =>
                                self -> Maybe shader -> IO GLboolean
webGLRenderingContextIsShader self shader
  = ghcjs_dom_web_gl_rendering_context_is_shader
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
 
foreign import javascript unsafe "$1[\"isTexture\"]($2)"
        ghcjs_dom_web_gl_rendering_context_is_texture ::
        JSRef WebGLRenderingContext -> JSRef WebGLTexture -> IO GLboolean

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.isTexture Mozilla WebGLRenderingContext.isTexture documentation> 
webGLRenderingContextIsTexture ::
                               (IsWebGLRenderingContext self, IsWebGLTexture texture) =>
                                 self -> Maybe texture -> IO GLboolean
webGLRenderingContextIsTexture self texture
  = ghcjs_dom_web_gl_rendering_context_is_texture
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLTexture . toWebGLTexture) texture)
 
foreign import javascript unsafe "$1[\"lineWidth\"]($2)"
        ghcjs_dom_web_gl_rendering_context_line_width ::
        JSRef WebGLRenderingContext -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.lineWidth Mozilla WebGLRenderingContext.lineWidth documentation> 
webGLRenderingContextLineWidth ::
                               (IsWebGLRenderingContext self) => self -> GLfloat -> IO ()
webGLRenderingContextLineWidth self width
  = ghcjs_dom_web_gl_rendering_context_line_width
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      width
 
foreign import javascript unsafe "$1[\"linkProgram\"]($2)"
        ghcjs_dom_web_gl_rendering_context_link_program ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.linkProgram Mozilla WebGLRenderingContext.linkProgram documentation> 
webGLRenderingContextLinkProgram ::
                                 (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                   self -> Maybe program -> IO ()
webGLRenderingContextLinkProgram self program
  = ghcjs_dom_web_gl_rendering_context_link_program
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe "$1[\"pixelStorei\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_pixel_storei ::
        JSRef WebGLRenderingContext -> GLenum -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.pixelStorei Mozilla WebGLRenderingContext.pixelStorei documentation> 
webGLRenderingContextPixelStorei ::
                                 (IsWebGLRenderingContext self) => self -> GLenum -> GLint -> IO ()
webGLRenderingContextPixelStorei self pname param
  = ghcjs_dom_web_gl_rendering_context_pixel_storei
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      pname
      param
 
foreign import javascript unsafe "$1[\"polygonOffset\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_polygon_offset ::
        JSRef WebGLRenderingContext -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.polygonOffset Mozilla WebGLRenderingContext.polygonOffset documentation> 
webGLRenderingContextPolygonOffset ::
                                   (IsWebGLRenderingContext self) =>
                                     self -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextPolygonOffset self factor units
  = ghcjs_dom_web_gl_rendering_context_polygon_offset
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      factor
      units
 
foreign import javascript unsafe
        "$1[\"readPixels\"]($2, $3, $4, $5,\n$6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_read_pixels ::
        JSRef WebGLRenderingContext ->
          GLint ->
            GLint ->
              GLsizei ->
                GLsizei -> GLenum -> GLenum -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.readPixels Mozilla WebGLRenderingContext.readPixels documentation> 
webGLRenderingContextReadPixels ::
                                (IsWebGLRenderingContext self, IsArrayBufferView pixels) =>
                                  self ->
                                    GLint ->
                                      GLint ->
                                        GLsizei ->
                                          GLsizei -> GLenum -> GLenum -> Maybe pixels -> IO ()
webGLRenderingContextReadPixels self x y width height format type'
  pixels
  = ghcjs_dom_web_gl_rendering_context_read_pixels
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      x
      y
      width
      height
      format
      type'
      (maybe jsNull (unArrayBufferView . toArrayBufferView) pixels)
 
foreign import javascript unsafe "$1[\"releaseShaderCompiler\"]()"
        ghcjs_dom_web_gl_rendering_context_release_shader_compiler ::
        JSRef WebGLRenderingContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.releaseShaderCompiler Mozilla WebGLRenderingContext.releaseShaderCompiler documentation> 
webGLRenderingContextReleaseShaderCompiler ::
                                           (IsWebGLRenderingContext self) => self -> IO ()
webGLRenderingContextReleaseShaderCompiler self
  = ghcjs_dom_web_gl_rendering_context_release_shader_compiler
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe
        "$1[\"renderbufferStorage\"]($2,\n$3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_renderbuffer_storage ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.renderbufferStorage Mozilla WebGLRenderingContext.renderbufferStorage documentation> 
webGLRenderingContextRenderbufferStorage ::
                                         (IsWebGLRenderingContext self) =>
                                           self -> GLenum -> GLenum -> GLsizei -> GLsizei -> IO ()
webGLRenderingContextRenderbufferStorage self target internalformat
  width height
  = ghcjs_dom_web_gl_rendering_context_renderbuffer_storage
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      internalformat
      width
      height
 
foreign import javascript unsafe "$1[\"sampleCoverage\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_sample_coverage ::
        JSRef WebGLRenderingContext -> GLclampf -> GLboolean -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.sampleCoverage Mozilla WebGLRenderingContext.sampleCoverage documentation> 
webGLRenderingContextSampleCoverage ::
                                    (IsWebGLRenderingContext self) =>
                                      self -> GLclampf -> GLboolean -> IO ()
webGLRenderingContextSampleCoverage self value invert
  = ghcjs_dom_web_gl_rendering_context_sample_coverage
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      value
      invert
 
foreign import javascript unsafe "$1[\"scissor\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_scissor ::
        JSRef WebGLRenderingContext ->
          GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.scissor Mozilla WebGLRenderingContext.scissor documentation> 
webGLRenderingContextScissor ::
                             (IsWebGLRenderingContext self) =>
                               self -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
webGLRenderingContextScissor self x y width height
  = ghcjs_dom_web_gl_rendering_context_scissor
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      x
      y
      width
      height
 
foreign import javascript unsafe "$1[\"shaderSource\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_shader_source ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLShader -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.shaderSource Mozilla WebGLRenderingContext.shaderSource documentation> 
webGLRenderingContextShaderSource ::
                                  (IsWebGLRenderingContext self, IsWebGLShader shader,
                                   ToJSString string) =>
                                    self -> Maybe shader -> string -> IO ()
webGLRenderingContextShaderSource self shader string
  = ghcjs_dom_web_gl_rendering_context_shader_source
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLShader . toWebGLShader) shader)
      (toJSString string)
 
foreign import javascript unsafe "$1[\"stencilFunc\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_stencil_func ::
        JSRef WebGLRenderingContext -> GLenum -> GLint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilFunc Mozilla WebGLRenderingContext.stencilFunc documentation> 
webGLRenderingContextStencilFunc ::
                                 (IsWebGLRenderingContext self) =>
                                   self -> GLenum -> GLint -> GLuint -> IO ()
webGLRenderingContextStencilFunc self func ref mask
  = ghcjs_dom_web_gl_rendering_context_stencil_func
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      func
      ref
      mask
 
foreign import javascript unsafe
        "$1[\"stencilFuncSeparate\"]($2,\n$3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_stencil_func_separate ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLint -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilFuncSeparate Mozilla WebGLRenderingContext.stencilFuncSeparate documentation> 
webGLRenderingContextStencilFuncSeparate ::
                                         (IsWebGLRenderingContext self) =>
                                           self -> GLenum -> GLenum -> GLint -> GLuint -> IO ()
webGLRenderingContextStencilFuncSeparate self face func ref mask
  = ghcjs_dom_web_gl_rendering_context_stencil_func_separate
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      face
      func
      ref
      mask
 
foreign import javascript unsafe "$1[\"stencilMask\"]($2)"
        ghcjs_dom_web_gl_rendering_context_stencil_mask ::
        JSRef WebGLRenderingContext -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilMask Mozilla WebGLRenderingContext.stencilMask documentation> 
webGLRenderingContextStencilMask ::
                                 (IsWebGLRenderingContext self) => self -> GLuint -> IO ()
webGLRenderingContextStencilMask self mask
  = ghcjs_dom_web_gl_rendering_context_stencil_mask
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      mask
 
foreign import javascript unsafe
        "$1[\"stencilMaskSeparate\"]($2,\n$3)"
        ghcjs_dom_web_gl_rendering_context_stencil_mask_separate ::
        JSRef WebGLRenderingContext -> GLenum -> GLuint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilMaskSeparate Mozilla WebGLRenderingContext.stencilMaskSeparate documentation> 
webGLRenderingContextStencilMaskSeparate ::
                                         (IsWebGLRenderingContext self) =>
                                           self -> GLenum -> GLuint -> IO ()
webGLRenderingContextStencilMaskSeparate self face mask
  = ghcjs_dom_web_gl_rendering_context_stencil_mask_separate
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      face
      mask
 
foreign import javascript unsafe "$1[\"stencilOp\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_stencil_op ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilOp Mozilla WebGLRenderingContext.stencilOp documentation> 
webGLRenderingContextStencilOp ::
                               (IsWebGLRenderingContext self) =>
                                 self -> GLenum -> GLenum -> GLenum -> IO ()
webGLRenderingContextStencilOp self fail zfail zpass
  = ghcjs_dom_web_gl_rendering_context_stencil_op
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      fail
      zfail
      zpass
 
foreign import javascript unsafe
        "$1[\"stencilOpSeparate\"]($2, $3,\n$4, $5)"
        ghcjs_dom_web_gl_rendering_context_stencil_op_separate ::
        JSRef WebGLRenderingContext ->
          GLenum -> GLenum -> GLenum -> GLenum -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.stencilOpSeparate Mozilla WebGLRenderingContext.stencilOpSeparate documentation> 
webGLRenderingContextStencilOpSeparate ::
                                       (IsWebGLRenderingContext self) =>
                                         self -> GLenum -> GLenum -> GLenum -> GLenum -> IO ()
webGLRenderingContextStencilOpSeparate self face fail zfail zpass
  = ghcjs_dom_web_gl_rendering_context_stencil_op_separate
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      face
      fail
      zfail
      zpass
 
foreign import javascript unsafe
        "$1[\"texParameterf\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_tex_parameterf ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texParameterf Mozilla WebGLRenderingContext.texParameterf documentation> 
webGLRenderingContextTexParameterf ::
                                   (IsWebGLRenderingContext self) =>
                                     self -> GLenum -> GLenum -> GLfloat -> IO ()
webGLRenderingContextTexParameterf self target pname param
  = ghcjs_dom_web_gl_rendering_context_tex_parameterf
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      pname
      param
 
foreign import javascript unsafe
        "$1[\"texParameteri\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_tex_parameteri ::
        JSRef WebGLRenderingContext -> GLenum -> GLenum -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texParameteri Mozilla WebGLRenderingContext.texParameteri documentation> 
webGLRenderingContextTexParameteri ::
                                   (IsWebGLRenderingContext self) =>
                                     self -> GLenum -> GLenum -> GLint -> IO ()
webGLRenderingContextTexParameteri self target pname param
  = ghcjs_dom_web_gl_rendering_context_tex_parameteri
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      pname
      param
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7, $8, $9, $10)"
        ghcjs_dom_web_gl_rendering_context_tex_image2_dView ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum ->
                GLsizei ->
                  GLsizei ->
                    GLint -> GLenum -> GLenum -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texImage2DView Mozilla WebGLRenderingContext.texImage2DView documentation> 
webGLRenderingContextTexImage2DView ::
                                    (IsWebGLRenderingContext self, IsArrayBufferView pixels) =>
                                      self ->
                                        GLenum ->
                                          GLint ->
                                            GLenum ->
                                              GLsizei ->
                                                GLsizei ->
                                                  GLint -> GLenum -> GLenum -> Maybe pixels -> IO ()
webGLRenderingContextTexImage2DView self target level
  internalformat width height border format type' pixels
  = ghcjs_dom_web_gl_rendering_context_tex_image2_dView
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      width
      height
      border
      format
      type'
      (maybe jsNull (unArrayBufferView . toArrayBufferView) pixels)
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7)"
        ghcjs_dom_web_gl_rendering_context_tex_image2_dData ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint -> GLenum -> GLenum -> GLenum -> JSRef ImageData -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texImage2DData Mozilla WebGLRenderingContext.texImage2DData documentation> 
webGLRenderingContextTexImage2DData ::
                                    (IsWebGLRenderingContext self, IsImageData pixels) =>
                                      self ->
                                        GLenum ->
                                          GLint ->
                                            GLenum -> GLenum -> GLenum -> Maybe pixels -> IO ()
webGLRenderingContextTexImage2DData self target level
  internalformat format type' pixels
  = ghcjs_dom_web_gl_rendering_context_tex_image2_dData
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      format
      type'
      (maybe jsNull (unImageData . toImageData) pixels)
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7)"
        ghcjs_dom_web_gl_rendering_context_tex_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum -> GLenum -> GLenum -> JSRef HTMLImageElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texImage2D Mozilla WebGLRenderingContext.texImage2D documentation> 
webGLRenderingContextTexImage2D ::
                                (IsWebGLRenderingContext self, IsHTMLImageElement image) =>
                                  self ->
                                    GLenum ->
                                      GLint -> GLenum -> GLenum -> GLenum -> Maybe image -> IO ()
webGLRenderingContextTexImage2D self target level internalformat
  format type' image
  = ghcjs_dom_web_gl_rendering_context_tex_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      format
      type'
      (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7)"
        ghcjs_dom_web_gl_rendering_context_tex_image2_dCanvas ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum -> GLenum -> GLenum -> JSRef HTMLCanvasElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texImage2DCanvas Mozilla WebGLRenderingContext.texImage2DCanvas documentation> 
webGLRenderingContextTexImage2DCanvas ::
                                      (IsWebGLRenderingContext self, IsHTMLCanvasElement canvas) =>
                                        self ->
                                          GLenum ->
                                            GLint ->
                                              GLenum -> GLenum -> GLenum -> Maybe canvas -> IO ()
webGLRenderingContextTexImage2DCanvas self target level
  internalformat format type' canvas
  = ghcjs_dom_web_gl_rendering_context_tex_image2_dCanvas
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      format
      type'
      (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
 
foreign import javascript unsafe
        "$1[\"texImage2D\"]($2, $3, $4, $5,\n$6, $7)"
        ghcjs_dom_web_gl_rendering_context_tex_image2_dVideo ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLenum -> GLenum -> GLenum -> JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texImage2DVideo Mozilla WebGLRenderingContext.texImage2DVideo documentation> 
webGLRenderingContextTexImage2DVideo ::
                                     (IsWebGLRenderingContext self, IsHTMLVideoElement video) =>
                                       self ->
                                         GLenum ->
                                           GLint ->
                                             GLenum -> GLenum -> GLenum -> Maybe video -> IO ()
webGLRenderingContextTexImage2DVideo self target level
  internalformat format type' video
  = ghcjs_dom_web_gl_rendering_context_tex_image2_dVideo
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      internalformat
      format
      type'
      (maybe jsNull (unHTMLVideoElement . toHTMLVideoElement) video)
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8, $9, $10)"
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dView ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint ->
                  GLsizei ->
                    GLsizei -> GLenum -> GLenum -> JSRef ArrayBufferView -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texSubImage2DView Mozilla WebGLRenderingContext.texSubImage2DView documentation> 
webGLRenderingContextTexSubImage2DView ::
                                       (IsWebGLRenderingContext self, IsArrayBufferView pixels) =>
                                         self ->
                                           GLenum ->
                                             GLint ->
                                               GLint ->
                                                 GLint ->
                                                   GLsizei ->
                                                     GLsizei ->
                                                       GLenum -> GLenum -> Maybe pixels -> IO ()
webGLRenderingContextTexSubImage2DView self target level xoffset
  yoffset width height format type' pixels
  = ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dView
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      width
      height
      format
      type'
      (maybe jsNull (unArrayBufferView . toArrayBufferView) pixels)
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dData ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint -> GLint -> GLenum -> GLenum -> JSRef ImageData -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texSubImage2DData Mozilla WebGLRenderingContext.texSubImage2DData documentation> 
webGLRenderingContextTexSubImage2DData ::
                                       (IsWebGLRenderingContext self, IsImageData pixels) =>
                                         self ->
                                           GLenum ->
                                             GLint ->
                                               GLint ->
                                                 GLint -> GLenum -> GLenum -> Maybe pixels -> IO ()
webGLRenderingContextTexSubImage2DData self target level xoffset
  yoffset format type' pixels
  = ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dData
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      format
      type'
      (maybe jsNull (unImageData . toImageData) pixels)
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_d ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLenum -> GLenum -> JSRef HTMLImageElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texSubImage2D Mozilla WebGLRenderingContext.texSubImage2D documentation> 
webGLRenderingContextTexSubImage2D ::
                                   (IsWebGLRenderingContext self, IsHTMLImageElement image) =>
                                     self ->
                                       GLenum ->
                                         GLint ->
                                           GLint ->
                                             GLint -> GLenum -> GLenum -> Maybe image -> IO ()
webGLRenderingContextTexSubImage2D self target level xoffset
  yoffset format type' image
  = ghcjs_dom_web_gl_rendering_context_tex_sub_image2_d
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      format
      type'
      (maybe jsNull (unHTMLImageElement . toHTMLImageElement) image)
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dCanvas ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLenum -> GLenum -> JSRef HTMLCanvasElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texSubImage2DCanvas Mozilla WebGLRenderingContext.texSubImage2DCanvas documentation> 
webGLRenderingContextTexSubImage2DCanvas ::
                                         (IsWebGLRenderingContext self,
                                          IsHTMLCanvasElement canvas) =>
                                           self ->
                                             GLenum ->
                                               GLint ->
                                                 GLint ->
                                                   GLint ->
                                                     GLenum -> GLenum -> Maybe canvas -> IO ()
webGLRenderingContextTexSubImage2DCanvas self target level xoffset
  yoffset format type' canvas
  = ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dCanvas
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      format
      type'
      (maybe jsNull (unHTMLCanvasElement . toHTMLCanvasElement) canvas)
 
foreign import javascript unsafe
        "$1[\"texSubImage2D\"]($2, $3, $4,\n$5, $6, $7, $8)"
        ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dVideo ::
        JSRef WebGLRenderingContext ->
          GLenum ->
            GLint ->
              GLint ->
                GLint -> GLenum -> GLenum -> JSRef HTMLVideoElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.texSubImage2DVideo Mozilla WebGLRenderingContext.texSubImage2DVideo documentation> 
webGLRenderingContextTexSubImage2DVideo ::
                                        (IsWebGLRenderingContext self, IsHTMLVideoElement video) =>
                                          self ->
                                            GLenum ->
                                              GLint ->
                                                GLint ->
                                                  GLint -> GLenum -> GLenum -> Maybe video -> IO ()
webGLRenderingContextTexSubImage2DVideo self target level xoffset
  yoffset format type' video
  = ghcjs_dom_web_gl_rendering_context_tex_sub_image2_dVideo
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      target
      level
      xoffset
      yoffset
      format
      type'
      (maybe jsNull (unHTMLVideoElement . toHTMLVideoElement) video)
 
foreign import javascript unsafe "$1[\"uniform1f\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform1f ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform1f Mozilla WebGLRenderingContext.uniform1f documentation> 
webGLRenderingContextUniform1f ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLfloat -> IO ()
webGLRenderingContextUniform1f self location x
  = ghcjs_dom_web_gl_rendering_context_uniform1f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
 
foreign import javascript unsafe "$1[\"uniform1fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform1fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform1fv Mozilla WebGLRenderingContext.uniform1fv documentation> 
webGLRenderingContextUniform1fv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsFloat32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform1fv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform1fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unFloat32Array . toFloat32Array) v)
 
foreign import javascript unsafe "$1[\"uniform1i\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform1i ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform1i Mozilla WebGLRenderingContext.uniform1i documentation> 
webGLRenderingContextUniform1i ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLint -> IO ()
webGLRenderingContextUniform1i self location x
  = ghcjs_dom_web_gl_rendering_context_uniform1i
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
 
foreign import javascript unsafe "$1[\"uniform1iv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform1iv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform1iv Mozilla WebGLRenderingContext.uniform1iv documentation> 
webGLRenderingContextUniform1iv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsInt32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform1iv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform1iv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unInt32Array . toInt32Array) v)
 
foreign import javascript unsafe "$1[\"uniform2f\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_uniform2f ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform2f Mozilla WebGLRenderingContext.uniform2f documentation> 
webGLRenderingContextUniform2f ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextUniform2f self location x y
  = ghcjs_dom_web_gl_rendering_context_uniform2f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
 
foreign import javascript unsafe "$1[\"uniform2fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform2fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform2fv Mozilla WebGLRenderingContext.uniform2fv documentation> 
webGLRenderingContextUniform2fv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsFloat32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform2fv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform2fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unFloat32Array . toFloat32Array) v)
 
foreign import javascript unsafe "$1[\"uniform2i\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_uniform2i ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform2i Mozilla WebGLRenderingContext.uniform2i documentation> 
webGLRenderingContextUniform2i ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLint -> GLint -> IO ()
webGLRenderingContextUniform2i self location x y
  = ghcjs_dom_web_gl_rendering_context_uniform2i
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
 
foreign import javascript unsafe "$1[\"uniform2iv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform2iv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform2iv Mozilla WebGLRenderingContext.uniform2iv documentation> 
webGLRenderingContextUniform2iv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsInt32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform2iv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform2iv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unInt32Array . toInt32Array) v)
 
foreign import javascript unsafe
        "$1[\"uniform3f\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_uniform3f ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform3f Mozilla WebGLRenderingContext.uniform3f documentation> 
webGLRenderingContextUniform3f ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLfloat -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextUniform3f self location x y z
  = ghcjs_dom_web_gl_rendering_context_uniform3f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
      z
 
foreign import javascript unsafe "$1[\"uniform3fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform3fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform3fv Mozilla WebGLRenderingContext.uniform3fv documentation> 
webGLRenderingContextUniform3fv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsFloat32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform3fv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform3fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unFloat32Array . toFloat32Array) v)
 
foreign import javascript unsafe
        "$1[\"uniform3i\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_uniform3i ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> GLint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform3i Mozilla WebGLRenderingContext.uniform3i documentation> 
webGLRenderingContextUniform3i ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLint -> GLint -> GLint -> IO ()
webGLRenderingContextUniform3i self location x y z
  = ghcjs_dom_web_gl_rendering_context_uniform3i
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
      z
 
foreign import javascript unsafe "$1[\"uniform3iv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform3iv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform3iv Mozilla WebGLRenderingContext.uniform3iv documentation> 
webGLRenderingContextUniform3iv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsInt32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform3iv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform3iv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unInt32Array . toInt32Array) v)
 
foreign import javascript unsafe
        "$1[\"uniform4f\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_web_gl_rendering_context_uniform4f ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform4f Mozilla WebGLRenderingContext.uniform4f documentation> 
webGLRenderingContextUniform4f ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self ->
                                   Maybe location ->
                                     GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextUniform4f self location x y z w
  = ghcjs_dom_web_gl_rendering_context_uniform4f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
      z
      w
 
foreign import javascript unsafe "$1[\"uniform4fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform4fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform4fv Mozilla WebGLRenderingContext.uniform4fv documentation> 
webGLRenderingContextUniform4fv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsFloat32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform4fv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform4fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unFloat32Array . toFloat32Array) v)
 
foreign import javascript unsafe
        "$1[\"uniform4i\"]($2, $3, $4, $5,\n$6)"
        ghcjs_dom_web_gl_rendering_context_uniform4i ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLint -> GLint -> GLint -> GLint -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform4i Mozilla WebGLRenderingContext.uniform4i documentation> 
webGLRenderingContextUniform4i ::
                               (IsWebGLRenderingContext self, IsWebGLUniformLocation location) =>
                                 self -> Maybe location -> GLint -> GLint -> GLint -> GLint -> IO ()
webGLRenderingContextUniform4i self location x y z w
  = ghcjs_dom_web_gl_rendering_context_uniform4i
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      x
      y
      z
      w
 
foreign import javascript unsafe "$1[\"uniform4iv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_uniform4iv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation -> JSRef Int32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniform4iv Mozilla WebGLRenderingContext.uniform4iv documentation> 
webGLRenderingContextUniform4iv ::
                                (IsWebGLRenderingContext self, IsWebGLUniformLocation location,
                                 IsInt32Array v) =>
                                  self -> Maybe location -> Maybe v -> IO ()
webGLRenderingContextUniform4iv self location v
  = ghcjs_dom_web_gl_rendering_context_uniform4iv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      (maybe jsNull (unInt32Array . toInt32Array) v)
 
foreign import javascript unsafe
        "$1[\"uniformMatrix2fv\"]($2, $3,\n$4)"
        ghcjs_dom_web_gl_rendering_context_uniform_matrix2fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLboolean -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniformMatrix2fv Mozilla WebGLRenderingContext.uniformMatrix2fv documentation> 
webGLRenderingContextUniformMatrix2fv ::
                                      (IsWebGLRenderingContext self,
                                       IsWebGLUniformLocation location, IsFloat32Array array) =>
                                        self -> Maybe location -> GLboolean -> Maybe array -> IO ()
webGLRenderingContextUniformMatrix2fv self location transpose array
  = ghcjs_dom_web_gl_rendering_context_uniform_matrix2fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      transpose
      (maybe jsNull (unFloat32Array . toFloat32Array) array)
 
foreign import javascript unsafe
        "$1[\"uniformMatrix3fv\"]($2, $3,\n$4)"
        ghcjs_dom_web_gl_rendering_context_uniform_matrix3fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLboolean -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniformMatrix3fv Mozilla WebGLRenderingContext.uniformMatrix3fv documentation> 
webGLRenderingContextUniformMatrix3fv ::
                                      (IsWebGLRenderingContext self,
                                       IsWebGLUniformLocation location, IsFloat32Array array) =>
                                        self -> Maybe location -> GLboolean -> Maybe array -> IO ()
webGLRenderingContextUniformMatrix3fv self location transpose array
  = ghcjs_dom_web_gl_rendering_context_uniform_matrix3fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      transpose
      (maybe jsNull (unFloat32Array . toFloat32Array) array)
 
foreign import javascript unsafe
        "$1[\"uniformMatrix4fv\"]($2, $3,\n$4)"
        ghcjs_dom_web_gl_rendering_context_uniform_matrix4fv ::
        JSRef WebGLRenderingContext ->
          JSRef WebGLUniformLocation ->
            GLboolean -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.uniformMatrix4fv Mozilla WebGLRenderingContext.uniformMatrix4fv documentation> 
webGLRenderingContextUniformMatrix4fv ::
                                      (IsWebGLRenderingContext self,
                                       IsWebGLUniformLocation location, IsFloat32Array array) =>
                                        self -> Maybe location -> GLboolean -> Maybe array -> IO ()
webGLRenderingContextUniformMatrix4fv self location transpose array
  = ghcjs_dom_web_gl_rendering_context_uniform_matrix4fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLUniformLocation . toWebGLUniformLocation)
         location)
      transpose
      (maybe jsNull (unFloat32Array . toFloat32Array) array)
 
foreign import javascript unsafe "$1[\"useProgram\"]($2)"
        ghcjs_dom_web_gl_rendering_context_use_program ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.useProgram Mozilla WebGLRenderingContext.useProgram documentation> 
webGLRenderingContextUseProgram ::
                                (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                  self -> Maybe program -> IO ()
webGLRenderingContextUseProgram self program
  = ghcjs_dom_web_gl_rendering_context_use_program
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe "$1[\"validateProgram\"]($2)"
        ghcjs_dom_web_gl_rendering_context_validate_program ::
        JSRef WebGLRenderingContext -> JSRef WebGLProgram -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.validateProgram Mozilla WebGLRenderingContext.validateProgram documentation> 
webGLRenderingContextValidateProgram ::
                                     (IsWebGLRenderingContext self, IsWebGLProgram program) =>
                                       self -> Maybe program -> IO ()
webGLRenderingContextValidateProgram self program
  = ghcjs_dom_web_gl_rendering_context_validate_program
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      (maybe jsNull (unWebGLProgram . toWebGLProgram) program)
 
foreign import javascript unsafe "$1[\"vertexAttrib1f\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib1f ::
        JSRef WebGLRenderingContext -> GLuint -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib1f Mozilla WebGLRenderingContext.vertexAttrib1f documentation> 
webGLRenderingContextVertexAttrib1f ::
                                    (IsWebGLRenderingContext self) =>
                                      self -> GLuint -> GLfloat -> IO ()
webGLRenderingContextVertexAttrib1f self indx x
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib1f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      x
 
foreign import javascript unsafe "$1[\"vertexAttrib1fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib1fv ::
        JSRef WebGLRenderingContext ->
          GLuint -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib1fv Mozilla WebGLRenderingContext.vertexAttrib1fv documentation> 
webGLRenderingContextVertexAttrib1fv ::
                                     (IsWebGLRenderingContext self, IsFloat32Array values) =>
                                       self -> GLuint -> Maybe values -> IO ()
webGLRenderingContextVertexAttrib1fv self indx values
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib1fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      (maybe jsNull (unFloat32Array . toFloat32Array) values)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib2f\"]($2, $3, $4)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib2f ::
        JSRef WebGLRenderingContext ->
          GLuint -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib2f Mozilla WebGLRenderingContext.vertexAttrib2f documentation> 
webGLRenderingContextVertexAttrib2f ::
                                    (IsWebGLRenderingContext self) =>
                                      self -> GLuint -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextVertexAttrib2f self indx x y
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib2f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      x
      y
 
foreign import javascript unsafe "$1[\"vertexAttrib2fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib2fv ::
        JSRef WebGLRenderingContext ->
          GLuint -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib2fv Mozilla WebGLRenderingContext.vertexAttrib2fv documentation> 
webGLRenderingContextVertexAttrib2fv ::
                                     (IsWebGLRenderingContext self, IsFloat32Array values) =>
                                       self -> GLuint -> Maybe values -> IO ()
webGLRenderingContextVertexAttrib2fv self indx values
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib2fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      (maybe jsNull (unFloat32Array . toFloat32Array) values)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib3f\"]($2, $3, $4,\n$5)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib3f ::
        JSRef WebGLRenderingContext ->
          GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib3f Mozilla WebGLRenderingContext.vertexAttrib3f documentation> 
webGLRenderingContextVertexAttrib3f ::
                                    (IsWebGLRenderingContext self) =>
                                      self -> GLuint -> GLfloat -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextVertexAttrib3f self indx x y z
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib3f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      x
      y
      z
 
foreign import javascript unsafe "$1[\"vertexAttrib3fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib3fv ::
        JSRef WebGLRenderingContext ->
          GLuint -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib3fv Mozilla WebGLRenderingContext.vertexAttrib3fv documentation> 
webGLRenderingContextVertexAttrib3fv ::
                                     (IsWebGLRenderingContext self, IsFloat32Array values) =>
                                       self -> GLuint -> Maybe values -> IO ()
webGLRenderingContextVertexAttrib3fv self indx values
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib3fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      (maybe jsNull (unFloat32Array . toFloat32Array) values)
 
foreign import javascript unsafe
        "$1[\"vertexAttrib4f\"]($2, $3, $4,\n$5, $6)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib4f ::
        JSRef WebGLRenderingContext ->
          GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib4f Mozilla WebGLRenderingContext.vertexAttrib4f documentation> 
webGLRenderingContextVertexAttrib4f ::
                                    (IsWebGLRenderingContext self) =>
                                      self ->
                                        GLuint -> GLfloat -> GLfloat -> GLfloat -> GLfloat -> IO ()
webGLRenderingContextVertexAttrib4f self indx x y z w
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib4f
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      x
      y
      z
      w
 
foreign import javascript unsafe "$1[\"vertexAttrib4fv\"]($2, $3)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib4fv ::
        JSRef WebGLRenderingContext ->
          GLuint -> JSRef Float32Array -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttrib4fv Mozilla WebGLRenderingContext.vertexAttrib4fv documentation> 
webGLRenderingContextVertexAttrib4fv ::
                                     (IsWebGLRenderingContext self, IsFloat32Array values) =>
                                       self -> GLuint -> Maybe values -> IO ()
webGLRenderingContextVertexAttrib4fv self indx values
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib4fv
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      (maybe jsNull (unFloat32Array . toFloat32Array) values)
 
foreign import javascript unsafe
        "$1[\"vertexAttribPointer\"]($2,\n$3, $4, $5, $6, $7)"
        ghcjs_dom_web_gl_rendering_context_vertex_attrib_pointer ::
        JSRef WebGLRenderingContext ->
          GLuint ->
            GLint -> GLenum -> GLboolean -> GLsizei -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.vertexAttribPointer Mozilla WebGLRenderingContext.vertexAttribPointer documentation> 
webGLRenderingContextVertexAttribPointer ::
                                         (IsWebGLRenderingContext self) =>
                                           self ->
                                             GLuint ->
                                               GLint ->
                                                 GLenum -> GLboolean -> GLsizei -> GLintptr -> IO ()
webGLRenderingContextVertexAttribPointer self indx size type'
  normalized stride offset
  = ghcjs_dom_web_gl_rendering_context_vertex_attrib_pointer
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      indx
      size
      type'
      normalized
      stride
      (fromIntegral offset)
 
foreign import javascript unsafe "$1[\"viewport\"]($2, $3, $4, $5)"
        ghcjs_dom_web_gl_rendering_context_viewport ::
        JSRef WebGLRenderingContext ->
          GLint -> GLint -> GLsizei -> GLsizei -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.viewport Mozilla WebGLRenderingContext.viewport documentation> 
webGLRenderingContextViewport ::
                              (IsWebGLRenderingContext self) =>
                                self -> GLint -> GLint -> GLsizei -> GLsizei -> IO ()
webGLRenderingContextViewport self x y width height
  = ghcjs_dom_web_gl_rendering_context_viewport
      (unWebGLRenderingContext (toWebGLRenderingContext self))
      x
      y
      width
      height
cDEPTH_BUFFER_BIT = 256
cSTENCIL_BUFFER_BIT = 1024
cCOLOR_BUFFER_BIT = 16384
cPOINTS = 0
cLINES = 1
cLINE_LOOP = 2
cLINE_STRIP = 3
cTRIANGLES = 4
cTRIANGLE_STRIP = 5
cTRIANGLE_FAN = 6
cZERO = 0
cONE = 1
cSRC_COLOR = 768
cONE_MINUS_SRC_COLOR = 769
cSRC_ALPHA = 770
cONE_MINUS_SRC_ALPHA = 771
cDST_ALPHA = 772
cONE_MINUS_DST_ALPHA = 773
cDST_COLOR = 774
cONE_MINUS_DST_COLOR = 775
cSRC_ALPHA_SATURATE = 776
cFUNC_ADD = 32774
cBLEND_EQUATION = 32777
cBLEND_EQUATION_RGB = 32777
cBLEND_EQUATION_ALPHA = 34877
cFUNC_SUBTRACT = 32778
cFUNC_REVERSE_SUBTRACT = 32779
cBLEND_DST_RGB = 32968
cBLEND_SRC_RGB = 32969
cBLEND_DST_ALPHA = 32970
cBLEND_SRC_ALPHA = 32971
cCONSTANT_COLOR = 32769
cONE_MINUS_CONSTANT_COLOR = 32770
cCONSTANT_ALPHA = 32771
cONE_MINUS_CONSTANT_ALPHA = 32772
cBLEND_COLOR = 32773
cARRAY_BUFFER = 34962
cELEMENT_ARRAY_BUFFER = 34963
cARRAY_BUFFER_BINDING = 34964
cELEMENT_ARRAY_BUFFER_BINDING = 34965
cSTREAM_DRAW = 35040
cSTATIC_DRAW = 35044
cDYNAMIC_DRAW = 35048
cBUFFER_SIZE = 34660
cBUFFER_USAGE = 34661
cCURRENT_VERTEX_ATTRIB = 34342
cFRONT = 1028
cBACK = 1029
cFRONT_AND_BACK = 1032
cTEXTURE_2D = 3553
cCULL_FACE = 2884
cBLEND = 3042
cDITHER = 3024
cSTENCIL_TEST = 2960
cDEPTH_TEST = 2929
cSCISSOR_TEST = 3089
cPOLYGON_OFFSET_FILL = 32823
cSAMPLE_ALPHA_TO_COVERAGE = 32926
cSAMPLE_COVERAGE = 32928
cNO_ERROR = 0
cINVALID_ENUM = 1280
cINVALID_VALUE = 1281
cINVALID_OPERATION = 1282
cOUT_OF_MEMORY = 1285
cCW = 2304
cCCW = 2305
cLINE_WIDTH = 2849
cALIASED_POINT_SIZE_RANGE = 33901
cALIASED_LINE_WIDTH_RANGE = 33902
cCULL_FACE_MODE = 2885
cFRONT_FACE = 2886
cDEPTH_RANGE = 2928
cDEPTH_WRITEMASK = 2930
cDEPTH_CLEAR_VALUE = 2931
cDEPTH_FUNC = 2932
cSTENCIL_CLEAR_VALUE = 2961
cSTENCIL_FUNC = 2962
cSTENCIL_FAIL = 2964
cSTENCIL_PASS_DEPTH_FAIL = 2965
cSTENCIL_PASS_DEPTH_PASS = 2966
cSTENCIL_REF = 2967
cSTENCIL_VALUE_MASK = 2963
cSTENCIL_WRITEMASK = 2968
cSTENCIL_BACK_FUNC = 34816
cSTENCIL_BACK_FAIL = 34817
cSTENCIL_BACK_PASS_DEPTH_FAIL = 34818
cSTENCIL_BACK_PASS_DEPTH_PASS = 34819
cSTENCIL_BACK_REF = 36003
cSTENCIL_BACK_VALUE_MASK = 36004
cSTENCIL_BACK_WRITEMASK = 36005
cVIEWPORT = 2978
cSCISSOR_BOX = 3088
cCOLOR_CLEAR_VALUE = 3106
cCOLOR_WRITEMASK = 3107
cUNPACK_ALIGNMENT = 3317
cPACK_ALIGNMENT = 3333
cMAX_TEXTURE_SIZE = 3379
cMAX_VIEWPORT_DIMS = 3386
cSUBPIXEL_BITS = 3408
cRED_BITS = 3410
cGREEN_BITS = 3411
cBLUE_BITS = 3412
cALPHA_BITS = 3413
cDEPTH_BITS = 3414
cSTENCIL_BITS = 3415
cPOLYGON_OFFSET_UNITS = 10752
cPOLYGON_OFFSET_FACTOR = 32824
cTEXTURE_BINDING_2D = 32873
cSAMPLE_BUFFERS = 32936
cSAMPLES = 32937
cSAMPLE_COVERAGE_VALUE = 32938
cSAMPLE_COVERAGE_INVERT = 32939
cCOMPRESSED_TEXTURE_FORMATS = 34467
cDONT_CARE = 4352
cFASTEST = 4353
cNICEST = 4354
cGENERATE_MIPMAP_HINT = 33170
cBYTE = 5120
cUNSIGNED_BYTE = 5121
cSHORT = 5122
cUNSIGNED_SHORT = 5123
cINT = 5124
cUNSIGNED_INT = 5125
cFLOAT = 5126
cDEPTH_COMPONENT = 6402
cALPHA = 6406
cRGB = 6407
cRGBA = 6408
cLUMINANCE = 6409
cLUMINANCE_ALPHA = 6410
cUNSIGNED_SHORT_4_4_4_4 = 32819
cUNSIGNED_SHORT_5_5_5_1 = 32820
cUNSIGNED_SHORT_5_6_5 = 33635
cFRAGMENT_SHADER = 35632
cVERTEX_SHADER = 35633
cMAX_VERTEX_ATTRIBS = 34921
cMAX_VERTEX_UNIFORM_VECTORS = 36347
cMAX_VARYING_VECTORS = 36348
cMAX_COMBINED_TEXTURE_IMAGE_UNITS = 35661
cMAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660
cMAX_TEXTURE_IMAGE_UNITS = 34930
cMAX_FRAGMENT_UNIFORM_VECTORS = 36349
cSHADER_TYPE = 35663
cDELETE_STATUS = 35712
cLINK_STATUS = 35714
cVALIDATE_STATUS = 35715
cATTACHED_SHADERS = 35717
cACTIVE_UNIFORMS = 35718
cACTIVE_ATTRIBUTES = 35721
cSHADING_LANGUAGE_VERSION = 35724
cCURRENT_PROGRAM = 35725
cNEVER = 512
cLESS = 513
cEQUAL = 514
cLEQUAL = 515
cGREATER = 516
cNOTEQUAL = 517
cGEQUAL = 518
cALWAYS = 519
cKEEP = 7680
cREPLACE = 7681
cINCR = 7682
cDECR = 7683
cINVERT = 5386
cINCR_WRAP = 34055
cDECR_WRAP = 34056
cVENDOR = 7936
cRENDERER = 7937
cVERSION = 7938
cNEAREST = 9728
cLINEAR = 9729
cNEAREST_MIPMAP_NEAREST = 9984
cLINEAR_MIPMAP_NEAREST = 9985
cNEAREST_MIPMAP_LINEAR = 9986
cLINEAR_MIPMAP_LINEAR = 9987
cTEXTURE_MAG_FILTER = 10240
cTEXTURE_MIN_FILTER = 10241
cTEXTURE_WRAP_S = 10242
cTEXTURE_WRAP_T = 10243
cTEXTURE = 5890
cTEXTURE_CUBE_MAP = 34067
cTEXTURE_BINDING_CUBE_MAP = 34068
cTEXTURE_CUBE_MAP_POSITIVE_X = 34069
cTEXTURE_CUBE_MAP_NEGATIVE_X = 34070
cTEXTURE_CUBE_MAP_POSITIVE_Y = 34071
cTEXTURE_CUBE_MAP_NEGATIVE_Y = 34072
cTEXTURE_CUBE_MAP_POSITIVE_Z = 34073
cTEXTURE_CUBE_MAP_NEGATIVE_Z = 34074
cMAX_CUBE_MAP_TEXTURE_SIZE = 34076
cTEXTURE0 = 33984
cTEXTURE1 = 33985
cTEXTURE2 = 33986
cTEXTURE3 = 33987
cTEXTURE4 = 33988
cTEXTURE5 = 33989
cTEXTURE6 = 33990
cTEXTURE7 = 33991
cTEXTURE8 = 33992
cTEXTURE9 = 33993
cTEXTURE10 = 33994
cTEXTURE11 = 33995
cTEXTURE12 = 33996
cTEXTURE13 = 33997
cTEXTURE14 = 33998
cTEXTURE15 = 33999
cTEXTURE16 = 34000
cTEXTURE17 = 34001
cTEXTURE18 = 34002
cTEXTURE19 = 34003
cTEXTURE20 = 34004
cTEXTURE21 = 34005
cTEXTURE22 = 34006
cTEXTURE23 = 34007
cTEXTURE24 = 34008
cTEXTURE25 = 34009
cTEXTURE26 = 34010
cTEXTURE27 = 34011
cTEXTURE28 = 34012
cTEXTURE29 = 34013
cTEXTURE30 = 34014
cTEXTURE31 = 34015
cACTIVE_TEXTURE = 34016
cREPEAT = 10497
cCLAMP_TO_EDGE = 33071
cMIRRORED_REPEAT = 33648
cFLOAT_VEC2 = 35664
cFLOAT_VEC3 = 35665
cFLOAT_VEC4 = 35666
cINT_VEC2 = 35667
cINT_VEC3 = 35668
cINT_VEC4 = 35669
cBOOL = 35670
cBOOL_VEC2 = 35671
cBOOL_VEC3 = 35672
cBOOL_VEC4 = 35673
cFLOAT_MAT2 = 35674
cFLOAT_MAT3 = 35675
cFLOAT_MAT4 = 35676
cSAMPLER_2D = 35678
cSAMPLER_CUBE = 35680
cVERTEX_ATTRIB_ARRAY_ENABLED = 34338
cVERTEX_ATTRIB_ARRAY_SIZE = 34339
cVERTEX_ATTRIB_ARRAY_STRIDE = 34340
cVERTEX_ATTRIB_ARRAY_TYPE = 34341
cVERTEX_ATTRIB_ARRAY_NORMALIZED = 34922
cVERTEX_ATTRIB_ARRAY_POINTER = 34373
cVERTEX_ATTRIB_ARRAY_BUFFER_BINDING = 34975
cCOMPILE_STATUS = 35713
cLOW_FLOAT = 36336
cMEDIUM_FLOAT = 36337
cHIGH_FLOAT = 36338
cLOW_INT = 36339
cMEDIUM_INT = 36340
cHIGH_INT = 36341
cFRAMEBUFFER = 36160
cRENDERBUFFER = 36161
cRGBA4 = 32854
cRGB5_A1 = 32855
cRGB565 = 36194
cDEPTH_COMPONENT16 = 33189
cSTENCIL_INDEX = 6401
cSTENCIL_INDEX8 = 36168
cDEPTH_STENCIL = 34041
cRENDERBUFFER_WIDTH = 36162
cRENDERBUFFER_HEIGHT = 36163
cRENDERBUFFER_INTERNAL_FORMAT = 36164
cRENDERBUFFER_RED_SIZE = 36176
cRENDERBUFFER_GREEN_SIZE = 36177
cRENDERBUFFER_BLUE_SIZE = 36178
cRENDERBUFFER_ALPHA_SIZE = 36179
cRENDERBUFFER_DEPTH_SIZE = 36180
cRENDERBUFFER_STENCIL_SIZE = 36181
cFRAMEBUFFER_ATTACHMENT_OBJECT_TYPE = 36048
cFRAMEBUFFER_ATTACHMENT_OBJECT_NAME = 36049
cFRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL = 36050
cFRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE = 36051
cCOLOR_ATTACHMENT0 = 36064
cDEPTH_ATTACHMENT = 36096
cSTENCIL_ATTACHMENT = 36128
cDEPTH_STENCIL_ATTACHMENT = 33306
cNONE = 0
cFRAMEBUFFER_COMPLETE = 36053
cFRAMEBUFFER_INCOMPLETE_ATTACHMENT = 36054
cFRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT = 36055
cFRAMEBUFFER_INCOMPLETE_DIMENSIONS = 36057
cFRAMEBUFFER_UNSUPPORTED = 36061
cFRAMEBUFFER_BINDING = 36006
cRENDERBUFFER_BINDING = 36007
cMAX_RENDERBUFFER_SIZE = 34024
cINVALID_FRAMEBUFFER_OPERATION = 1286
cUNPACK_FLIP_Y_WEBGL = 37440
cUNPACK_PREMULTIPLY_ALPHA_WEBGL = 37441
cCONTEXT_LOST_WEBGL = 37442
cUNPACK_COLORSPACE_CONVERSION_WEBGL = 37443
cBROWSER_DEFAULT_WEBGL = 37444
 
foreign import javascript unsafe "$1[\"drawingBufferWidth\"]"
        ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_width ::
        JSRef WebGLRenderingContext -> IO GLsizei

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.drawingBufferWidth Mozilla WebGLRenderingContext.drawingBufferWidth documentation> 
webGLRenderingContextGetDrawingBufferWidth ::
                                           (IsWebGLRenderingContext self) => self -> IO GLsizei
webGLRenderingContextGetDrawingBufferWidth self
  = ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_width
      (unWebGLRenderingContext (toWebGLRenderingContext self))
 
foreign import javascript unsafe "$1[\"drawingBufferHeight\"]"
        ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_height ::
        JSRef WebGLRenderingContext -> IO GLsizei

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext.drawingBufferHeight Mozilla WebGLRenderingContext.drawingBufferHeight documentation> 
webGLRenderingContextGetDrawingBufferHeight ::
                                            (IsWebGLRenderingContext self) => self -> IO GLsizei
webGLRenderingContextGetDrawingBufferHeight self
  = ghcjs_dom_web_gl_rendering_context_get_drawing_buffer_height
      (unWebGLRenderingContext (toWebGLRenderingContext self))
#else
module GHCJS.DOM.WebGLRenderingContext (
  ) where
#endif
