{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ANGLEInstancedArrays
       (js_drawArraysInstancedANGLE, drawArraysInstancedANGLE,
        js_drawElementsInstancedANGLE, drawElementsInstancedANGLE,
        js_vertexAttribDivisorANGLE, vertexAttribDivisorANGLE,
        pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE, ANGLEInstancedArrays,
        castToANGLEInstancedArrays, gTypeANGLEInstancedArrays)
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
        "$1[\"drawArraysInstancedANGLE\"]($2,\n$3, $4, $5)"
        js_drawArraysInstancedANGLE ::
        ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawArraysInstancedANGLE Mozilla ANGLEInstancedArrays.drawArraysInstancedANGLE documentation> 
drawArraysInstancedANGLE ::
                         (MonadIO m) =>
                           ANGLEInstancedArrays -> Word -> Int -> Int -> Int -> m ()
drawArraysInstancedANGLE self mode first count primcount
  = liftIO
      (js_drawArraysInstancedANGLE (self) mode first count primcount)
 
foreign import javascript unsafe
        "$1[\"drawElementsInstancedANGLE\"]($2,\n$3, $4, $5, $6)"
        js_drawElementsInstancedANGLE ::
        ANGLEInstancedArrays ->
          Word -> Int -> Word -> Double -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.drawElementsInstancedANGLE Mozilla ANGLEInstancedArrays.drawElementsInstancedANGLE documentation> 
drawElementsInstancedANGLE ::
                           (MonadIO m) =>
                             ANGLEInstancedArrays -> Word -> Int -> Word -> Int64 -> Int -> m ()
drawElementsInstancedANGLE self mode count type' offset primcount
  = liftIO
      (js_drawElementsInstancedANGLE (self) mode count type'
         (fromIntegral offset)
         primcount)
 
foreign import javascript unsafe
        "$1[\"vertexAttribDivisorANGLE\"]($2,\n$3)"
        js_vertexAttribDivisorANGLE ::
        ANGLEInstancedArrays -> Word -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ANGLEInstancedArrays.vertexAttribDivisorANGLE Mozilla ANGLEInstancedArrays.vertexAttribDivisorANGLE documentation> 
vertexAttribDivisorANGLE ::
                         (MonadIO m) => ANGLEInstancedArrays -> Word -> Word -> m ()
vertexAttribDivisorANGLE self index divisor
  = liftIO (js_vertexAttribDivisorANGLE (self) index divisor)
pattern VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE = 35070