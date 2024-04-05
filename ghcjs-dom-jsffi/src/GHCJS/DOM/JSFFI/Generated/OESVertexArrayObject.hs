{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OESVertexArrayObject
       (js_createVertexArrayOES, createVertexArrayOES,
        createVertexArrayOES_, js_deleteVertexArrayOES,
        deleteVertexArrayOES, js_isVertexArrayOES, isVertexArrayOES,
        isVertexArrayOES_, js_bindVertexArrayOES, bindVertexArrayOES,
        pattern VERTEX_ARRAY_BINDING_OES, OESVertexArrayObject(..),
        gTypeOESVertexArrayObject)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"createVertexArrayOES\"]()"
        js_createVertexArrayOES ::
        OESVertexArrayObject -> IO WebGLVertexArrayObjectOES

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadIO m) => OESVertexArrayObject -> m WebGLVertexArrayObjectOES
createVertexArrayOES self = liftIO (js_createVertexArrayOES self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES_ ::
                      (MonadIO m) => OESVertexArrayObject -> m ()
createVertexArrayOES_ self
  = liftIO (void (js_createVertexArrayOES self))
 
foreign import javascript unsafe "$1[\"deleteVertexArrayOES\"]($2)"
        js_deleteVertexArrayOES ::
        OESVertexArrayObject -> Optional WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.deleteVertexArrayOES Mozilla OESVertexArrayObject.deleteVertexArrayOES documentation> 
deleteVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
deleteVertexArrayOES self arrayObject
  = liftIO
      (js_deleteVertexArrayOES self (maybeToOptional arrayObject))
 
foreign import javascript unsafe
        "($1[\"isVertexArrayOES\"]($2) ? 1 : 0)" js_isVertexArrayOES ::
        OESVertexArrayObject ->
          Optional WebGLVertexArrayObjectOES -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES ::
                 (MonadIO m) =>
                   OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m Bool
isVertexArrayOES self arrayObject
  = liftIO (js_isVertexArrayOES self (maybeToOptional arrayObject))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES_ ::
                  (MonadIO m) =>
                    OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
isVertexArrayOES_ self arrayObject
  = liftIO
      (void (js_isVertexArrayOES self (maybeToOptional arrayObject)))
 
foreign import javascript unsafe "$1[\"bindVertexArrayOES\"]($2)"
        js_bindVertexArrayOES ::
        OESVertexArrayObject -> Optional WebGLVertexArrayObjectOES -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.bindVertexArrayOES Mozilla OESVertexArrayObject.bindVertexArrayOES documentation> 
bindVertexArrayOES ::
                   (MonadIO m) =>
                     OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
bindVertexArrayOES self arrayObject
  = liftIO (js_bindVertexArrayOES self (maybeToOptional arrayObject))
pattern VERTEX_ARRAY_BINDING_OES = 34229