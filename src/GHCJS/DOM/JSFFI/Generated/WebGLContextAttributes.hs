{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLContextAttributes
       (js_setAlpha, setAlpha, js_getAlpha, getAlpha, js_setDepth,
        setDepth, js_getDepth, getDepth, js_setStencil, setStencil,
        js_getStencil, getStencil, js_setAntialias, setAntialias,
        js_getAntialias, getAntialias, js_setPremultipliedAlpha,
        setPremultipliedAlpha, js_getPremultipliedAlpha,
        getPremultipliedAlpha, js_setPreserveDrawingBuffer,
        setPreserveDrawingBuffer, js_getPreserveDrawingBuffer,
        getPreserveDrawingBuffer, WebGLContextAttributes,
        castToWebGLContextAttributes, gTypeWebGLContextAttributes)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"alpha\"] = $2;" js_setAlpha
        :: JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
setAlpha :: (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setAlpha self val
  = liftIO (js_setAlpha (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe "($1[\"alpha\"] ? 1 : 0)"
        js_getAlpha :: JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
getAlpha :: (MonadIO m) => WebGLContextAttributes -> m Bool
getAlpha self
  = liftIO (js_getAlpha (unWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"depth\"] = $2;" js_setDepth
        :: JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
setDepth :: (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setDepth self val
  = liftIO (js_setDepth (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe "($1[\"depth\"] ? 1 : 0)"
        js_getDepth :: JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
getDepth :: (MonadIO m) => WebGLContextAttributes -> m Bool
getDepth self
  = liftIO (js_getDepth (unWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"stencil\"] = $2;"
        js_setStencil :: JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
setStencil :: (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setStencil self val
  = liftIO (js_setStencil (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe "($1[\"stencil\"] ? 1 : 0)"
        js_getStencil :: JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
getStencil :: (MonadIO m) => WebGLContextAttributes -> m Bool
getStencil self
  = liftIO (js_getStencil (unWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"antialias\"] = $2;"
        js_setAntialias :: JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
setAntialias ::
             (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setAntialias self val
  = liftIO (js_setAntialias (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe "($1[\"antialias\"] ? 1 : 0)"
        js_getAntialias :: JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
getAntialias :: (MonadIO m) => WebGLContextAttributes -> m Bool
getAntialias self
  = liftIO (js_getAntialias (unWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"premultipliedAlpha\"] = $2;"
        js_setPremultipliedAlpha ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
setPremultipliedAlpha ::
                      (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setPremultipliedAlpha self val
  = liftIO
      (js_setPremultipliedAlpha (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe
        "($1[\"premultipliedAlpha\"] ? 1 : 0)" js_getPremultipliedAlpha ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
getPremultipliedAlpha ::
                      (MonadIO m) => WebGLContextAttributes -> m Bool
getPremultipliedAlpha self
  = liftIO (js_getPremultipliedAlpha (unWebGLContextAttributes self))
 
foreign import javascript unsafe
        "$1[\"preserveDrawingBuffer\"] = $2;" js_setPreserveDrawingBuffer
        :: JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
setPreserveDrawingBuffer ::
                         (MonadIO m) => WebGLContextAttributes -> Bool -> m ()
setPreserveDrawingBuffer self val
  = liftIO
      (js_setPreserveDrawingBuffer (unWebGLContextAttributes self) val)
 
foreign import javascript unsafe
        "($1[\"preserveDrawingBuffer\"] ? 1 : 0)"
        js_getPreserveDrawingBuffer ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
getPreserveDrawingBuffer ::
                         (MonadIO m) => WebGLContextAttributes -> m Bool
getPreserveDrawingBuffer self
  = liftIO
      (js_getPreserveDrawingBuffer (unWebGLContextAttributes self))