{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OESVertexArrayObject
       (js_createVertexArrayOES, createVertexArrayOES,
        js_deleteVertexArrayOES, deleteVertexArrayOES, js_isVertexArrayOES,
        isVertexArrayOES, js_bindVertexArrayOES, bindVertexArrayOES,
        pattern VERTEX_ARRAY_BINDING_OES, OESVertexArrayObject,
        castToOESVertexArrayObject, gTypeOESVertexArrayObject)
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

 
foreign import javascript unsafe "$1[\"createVertexArrayOES\"]()"
        js_createVertexArrayOES ::
        JSRef OESVertexArrayObject -> IO (JSRef WebGLVertexArrayObjectOES)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> m (Maybe WebGLVertexArrayObjectOES)
createVertexArrayOES self
  = liftIO
      ((js_createVertexArrayOES (unOESVertexArrayObject self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteVertexArrayOES\"]($2)"
        js_deleteVertexArrayOES ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
deleteVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
deleteVertexArrayOES self arrayObject
  = liftIO
      (js_deleteVertexArrayOES (unOESVertexArrayObject self)
         (maybe jsNull unWebGLVertexArrayObjectOES arrayObject))
 
foreign import javascript unsafe
        "($1[\"isVertexArrayOES\"]($2) ? 1 : 0)" js_isVertexArrayOES ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES ::
                 (MonadIO m) =>
                   OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m Bool
isVertexArrayOES self arrayObject
  = liftIO
      (js_isVertexArrayOES (unOESVertexArrayObject self)
         (maybe jsNull unWebGLVertexArrayObjectOES arrayObject))
 
foreign import javascript unsafe "$1[\"bindVertexArrayOES\"]($2)"
        js_bindVertexArrayOES ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
bindVertexArrayOES ::
                   (MonadIO m) =>
                     OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
bindVertexArrayOES self arrayObject
  = liftIO
      (js_bindVertexArrayOES (unOESVertexArrayObject self)
         (maybe jsNull unWebGLVertexArrayObjectOES arrayObject))
pattern VERTEX_ARRAY_BINDING_OES = 34229
#else
module GHCJS.DOM.OESVertexArrayObject (
  ) where
#endif
