{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ANGLEInstancedArrays
       (js_drawArraysInstancedANGLE, drawArraysInstancedANGLE,
        js_drawElementsInstancedANGLE, drawElementsInstancedANGLE,
        js_vertexAttribDivisorANGLE, vertexAttribDivisorANGLE,
        pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE, ANGLEInstancedArrays,
        castToANGLEInstancedArrays, gTypeANGLEInstancedArrays)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe
        "$1[\"drawArraysInstancedANGLE\"]($2,\n$3, $4, $5)"
        js_drawArraysInstancedANGLE ::
        JSRef ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawArraysInstancedANGLE Mozilla ANGLEInstancedArrays.drawArraysInstancedANGLE documentation> 
drawArraysInstancedANGLE ::
                         (MonadIO m) =>
                           ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> m ()
drawArraysInstancedANGLE self mode first count primcount
  = liftIO
      (js_drawArraysInstancedANGLE (unANGLEInstancedArrays self) mode
         first
         count
         primcount)
 
foreign import javascript unsafe
        "$1[\"drawElementsInstancedANGLE\"]($2,\n$3, $4, $5, $6)"
        js_drawElementsInstancedANGLE ::
        JSRef ANGLEInstancedArrays ->
          Word -> Int -> Word -> Double -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawElementsInstancedANGLE Mozilla ANGLEInstancedArrays.drawElementsInstancedANGLE documentation> 
drawElementsInstancedANGLE ::
                           (MonadIO m) =>
                             ANGLEInstancedArrays -> Word -> Int -> Word -> Int64 -> Int -> m ()
drawElementsInstancedANGLE self mode count type' offset primcount
  = liftIO
      (js_drawElementsInstancedANGLE (unANGLEInstancedArrays self) mode
         count
         type'
         (fromIntegral offset)
         primcount)
 
foreign import javascript unsafe
        "$1[\"vertexAttribDivisorANGLE\"]($2,\n$3)"
        js_vertexAttribDivisorANGLE ::
        JSRef ANGLEInstancedArrays -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.vertexAttribDivisorANGLE Mozilla ANGLEInstancedArrays.vertexAttribDivisorANGLE documentation> 
vertexAttribDivisorANGLE ::
                         (MonadIO m) => ANGLEInstancedArrays -> Word -> Word -> m ()
vertexAttribDivisorANGLE self index divisor
  = liftIO
      (js_vertexAttribDivisorANGLE (unANGLEInstancedArrays self) index
         divisor)
pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 35070
#else
module GHCJS.DOM.ANGLEInstancedArrays (
  ) where
#endif
