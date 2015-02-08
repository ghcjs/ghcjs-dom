{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ANGLEInstancedArrays
       (ghcjs_dom_angle_instanced_arrays_draw_arrays_instanced_angle,
        angleInstancedArraysDrawArraysInstancedANGLE,
        ghcjs_dom_angle_instanced_arrays_draw_elements_instanced_angle,
        angleInstancedArraysDrawElementsInstancedANGLE,
        ghcjs_dom_angle_instanced_arrays_vertex_attrib_divisor_angle,
        angleInstancedArraysVertexAttribDivisorANGLE,
        cVERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE, ANGLEInstancedArrays,
        IsANGLEInstancedArrays, castToANGLEInstancedArrays,
        gTypeANGLEInstancedArrays, toANGLEInstancedArrays)
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
        "$1[\"drawArraysInstancedANGLE\"]($2,\n$3, $4, $5)"
        ghcjs_dom_angle_instanced_arrays_draw_arrays_instanced_angle ::
        JSRef ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawArraysInstancedANGLE Mozilla ANGLEInstancedArrays.drawArraysInstancedANGLE documentation> 
angleInstancedArraysDrawArraysInstancedANGLE ::
                                             (MonadIO m, IsANGLEInstancedArrays self) =>
                                               self -> Word -> Int -> Int -> Int -> m ()
angleInstancedArraysDrawArraysInstancedANGLE self mode first count
  primcount
  = liftIO
      (ghcjs_dom_angle_instanced_arrays_draw_arrays_instanced_angle
         (unANGLEInstancedArrays (toANGLEInstancedArrays self))
         mode
         first
         count
         primcount)
 
foreign import javascript unsafe
        "$1[\"drawElementsInstancedANGLE\"]($2,\n$3, $4, $5, $6)"
        ghcjs_dom_angle_instanced_arrays_draw_elements_instanced_angle ::
        JSRef ANGLEInstancedArrays ->
          Word -> Int -> Word -> Double -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawElementsInstancedANGLE Mozilla ANGLEInstancedArrays.drawElementsInstancedANGLE documentation> 
angleInstancedArraysDrawElementsInstancedANGLE ::
                                               (MonadIO m, IsANGLEInstancedArrays self) =>
                                                 self -> Word -> Int -> Word -> Int64 -> Int -> m ()
angleInstancedArraysDrawElementsInstancedANGLE self mode count
  type' offset primcount
  = liftIO
      (ghcjs_dom_angle_instanced_arrays_draw_elements_instanced_angle
         (unANGLEInstancedArrays (toANGLEInstancedArrays self))
         mode
         count
         type'
         (fromIntegral offset)
         primcount)
 
foreign import javascript unsafe
        "$1[\"vertexAttribDivisorANGLE\"]($2,\n$3)"
        ghcjs_dom_angle_instanced_arrays_vertex_attrib_divisor_angle ::
        JSRef ANGLEInstancedArrays -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.vertexAttribDivisorANGLE Mozilla ANGLEInstancedArrays.vertexAttribDivisorANGLE documentation> 
angleInstancedArraysVertexAttribDivisorANGLE ::
                                             (MonadIO m, IsANGLEInstancedArrays self) =>
                                               self -> Word -> Word -> m ()
angleInstancedArraysVertexAttribDivisorANGLE self index divisor
  = liftIO
      (ghcjs_dom_angle_instanced_arrays_vertex_attrib_divisor_angle
         (unANGLEInstancedArrays (toANGLEInstancedArrays self))
         index
         divisor)
cVERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 35070
#else
module GHCJS.DOM.ANGLEInstancedArrays (
  ) where
#endif
