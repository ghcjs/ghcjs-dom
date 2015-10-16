{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.OESVertexArrayObject
       (js_createVertexArrayOES, createVertexArrayOES,
        js_deleteVertexArrayOES, deleteVertexArrayOES, js_isVertexArrayOES,
        isVertexArrayOES, js_bindVertexArrayOES, bindVertexArrayOES,
        pattern VERTEX_ARRAY_BINDING_OES, OESVertexArrayObject,
        castToOESVertexArrayObject, gTypeOESVertexArrayObject)
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
 
foreign import javascript unsafe "$1[\"createVertexArrayOES\"]()"
        js_createVertexArrayOES ::
        OESVertexArrayObject -> IO (Nullable WebGLVertexArrayObjectOES)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> m (Maybe WebGLVertexArrayObjectOES)
createVertexArrayOES self
  = liftIO (nullableToMaybe <$> (js_createVertexArrayOES (self)))
 
foreign import javascript unsafe "$1[\"deleteVertexArrayOES\"]($2)"
        js_deleteVertexArrayOES ::
        OESVertexArrayObject -> Nullable WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
deleteVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
deleteVertexArrayOES self arrayObject
  = liftIO
      (js_deleteVertexArrayOES (self) (maybeToNullable arrayObject))
 
foreign import javascript unsafe
        "($1[\"isVertexArrayOES\"]($2) ? 1 : 0)" js_isVertexArrayOES ::
        OESVertexArrayObject ->
          Nullable WebGLVertexArrayObjectOES -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES ::
                 (MonadIO m) =>
                   OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m Bool
isVertexArrayOES self arrayObject
  = liftIO (js_isVertexArrayOES (self) (maybeToNullable arrayObject))
 
foreign import javascript unsafe "$1[\"bindVertexArrayOES\"]($2)"
        js_bindVertexArrayOES ::
        OESVertexArrayObject -> Nullable WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
bindVertexArrayOES ::
                   (MonadIO m) =>
                     OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
bindVertexArrayOES self arrayObject
  = liftIO
      (js_bindVertexArrayOES (self) (maybeToNullable arrayObject))
pattern VERTEX_ARRAY_BINDING_OES = 34229