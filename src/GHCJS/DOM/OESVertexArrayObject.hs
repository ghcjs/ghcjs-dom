{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OESVertexArrayObject
       (ghcjs_dom_oes_vertex_array_object_create_vertex_array_oes,
        oesVertexArrayObjectCreateVertexArrayOES,
        ghcjs_dom_oes_vertex_array_object_delete_vertex_array_oes,
        oesVertexArrayObjectDeleteVertexArrayOES,
        ghcjs_dom_oes_vertex_array_object_is_vertex_array_oes,
        oesVertexArrayObjectIsVertexArrayOES,
        ghcjs_dom_oes_vertex_array_object_bind_vertex_array_oes,
        oesVertexArrayObjectBindVertexArrayOES, cVERTEX_ARRAY_BINDING_OES,
        OESVertexArrayObject, IsOESVertexArrayObject,
        castToOESVertexArrayObject, gTypeOESVertexArrayObject,
        toOESVertexArrayObject)
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

 
foreign import javascript unsafe "$1[\"createVertexArrayOES\"]()"
        ghcjs_dom_oes_vertex_array_object_create_vertex_array_oes ::
        JSRef OESVertexArrayObject -> IO (JSRef WebGLVertexArrayObjectOES)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
oesVertexArrayObjectCreateVertexArrayOES ::
                                         (MonadIO m, IsOESVertexArrayObject self) =>
                                           self -> m (Maybe WebGLVertexArrayObjectOES)
oesVertexArrayObjectCreateVertexArrayOES self
  = liftIO
      ((ghcjs_dom_oes_vertex_array_object_create_vertex_array_oes
          (unOESVertexArrayObject (toOESVertexArrayObject self)))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"deleteVertexArrayOES\"]($2)"
        ghcjs_dom_oes_vertex_array_object_delete_vertex_array_oes ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
oesVertexArrayObjectDeleteVertexArrayOES ::
                                         (MonadIO m, IsOESVertexArrayObject self,
                                          IsWebGLVertexArrayObjectOES arrayObject) =>
                                           self -> Maybe arrayObject -> m ()
oesVertexArrayObjectDeleteVertexArrayOES self arrayObject
  = liftIO
      (ghcjs_dom_oes_vertex_array_object_delete_vertex_array_oes
         (unOESVertexArrayObject (toOESVertexArrayObject self))
         (maybe jsNull
            (unWebGLVertexArrayObjectOES . toWebGLVertexArrayObjectOES)
            arrayObject))
 
foreign import javascript unsafe
        "($1[\"isVertexArrayOES\"]($2) ? 1 : 0)"
        ghcjs_dom_oes_vertex_array_object_is_vertex_array_oes ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
oesVertexArrayObjectIsVertexArrayOES ::
                                     (MonadIO m, IsOESVertexArrayObject self,
                                      IsWebGLVertexArrayObjectOES arrayObject) =>
                                       self -> Maybe arrayObject -> m Bool
oesVertexArrayObjectIsVertexArrayOES self arrayObject
  = liftIO
      (ghcjs_dom_oes_vertex_array_object_is_vertex_array_oes
         (unOESVertexArrayObject (toOESVertexArrayObject self))
         (maybe jsNull
            (unWebGLVertexArrayObjectOES . toWebGLVertexArrayObjectOES)
            arrayObject))
 
foreign import javascript unsafe "$1[\"bindVertexArrayOES\"]($2)"
        ghcjs_dom_oes_vertex_array_object_bind_vertex_array_oes ::
        JSRef OESVertexArrayObject ->
          JSRef WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
oesVertexArrayObjectBindVertexArrayOES ::
                                       (MonadIO m, IsOESVertexArrayObject self,
                                        IsWebGLVertexArrayObjectOES arrayObject) =>
                                         self -> Maybe arrayObject -> m ()
oesVertexArrayObjectBindVertexArrayOES self arrayObject
  = liftIO
      (ghcjs_dom_oes_vertex_array_object_bind_vertex_array_oes
         (unOESVertexArrayObject (toOESVertexArrayObject self))
         (maybe jsNull
            (unWebGLVertexArrayObjectOES . toWebGLVertexArrayObjectOES)
            arrayObject))
cVERTEX_ARRAY_BINDING_OES = 34229
#else
module GHCJS.DOM.OESVertexArrayObject (
  ) where
#endif
