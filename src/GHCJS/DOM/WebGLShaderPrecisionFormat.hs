{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLShaderPrecisionFormat
       (js_getRangeMin, getRangeMin, js_getRangeMax, getRangeMax,
        js_getPrecision, getPrecision, WebGLShaderPrecisionFormat,
        castToWebGLShaderPrecisionFormat, gTypeWebGLShaderPrecisionFormat)
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

 
foreign import javascript unsafe "$1[\"rangeMin\"]" js_getRangeMin
        :: JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMin Mozilla WebGLShaderPrecisionFormat.rangeMin documentation> 
getRangeMin :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getRangeMin self
  = liftIO (js_getRangeMin (unWebGLShaderPrecisionFormat self))
 
foreign import javascript unsafe "$1[\"rangeMax\"]" js_getRangeMax
        :: JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.rangeMax Mozilla WebGLShaderPrecisionFormat.rangeMax documentation> 
getRangeMax :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getRangeMax self
  = liftIO (js_getRangeMax (unWebGLShaderPrecisionFormat self))
 
foreign import javascript unsafe "$1[\"precision\"]"
        js_getPrecision :: JSRef WebGLShaderPrecisionFormat -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLShaderPrecisionFormat.precision Mozilla WebGLShaderPrecisionFormat.precision documentation> 
getPrecision :: (MonadIO m) => WebGLShaderPrecisionFormat -> m Int
getPrecision self
  = liftIO (js_getPrecision (unWebGLShaderPrecisionFormat self))
#else
module GHCJS.DOM.WebGLShaderPrecisionFormat (
  ) where
#endif
