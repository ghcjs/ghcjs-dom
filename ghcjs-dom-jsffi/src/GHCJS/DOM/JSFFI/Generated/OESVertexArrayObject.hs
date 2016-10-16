{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OESVertexArrayObject
       (js_createVertexArrayOES, createVertexArrayOES,
        createVertexArrayOES_, createVertexArrayOESUnsafe,
        createVertexArrayOESUnchecked, js_deleteVertexArrayOES,
        deleteVertexArrayOES, js_isVertexArrayOES, isVertexArrayOES,
        isVertexArrayOES_, js_bindVertexArrayOES, bindVertexArrayOES,
        pattern VERTEX_ARRAY_BINDING_OES, OESVertexArrayObject(..),
        gTypeOESVertexArrayObject)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
#if MIN_VERSION_base(4,9,0)
import GHC.Stack (HasCallStack)
#elif MIN_VERSION_base(4,8,0)
import GHC.Stack (CallStack)
import GHC.Exts (Constraint)
type HasCallStack = ((?callStack :: CallStack) :: Constraint)
#else
import GHC.Exts (Constraint)
type HasCallStack = (() :: Constraint)
#endif
 
foreign import javascript unsafe "$1[\"createVertexArrayOES\"]()"
        js_createVertexArrayOES ::
        OESVertexArrayObject -> IO (Nullable WebGLVertexArrayObjectOES)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES ::
                     (MonadIO m) =>
                       OESVertexArrayObject -> m (Maybe WebGLVertexArrayObjectOES)
createVertexArrayOES self
  = liftIO (nullableToMaybe <$> (js_createVertexArrayOES (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOES_ ::
                      (MonadIO m) => OESVertexArrayObject -> m ()
createVertexArrayOES_ self
  = liftIO (void (js_createVertexArrayOES (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOESUnsafe ::
                           (MonadIO m, HasCallStack) =>
                             OESVertexArrayObject -> m WebGLVertexArrayObjectOES
createVertexArrayOESUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_createVertexArrayOES (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.createVertexArrayOES Mozilla OESVertexArrayObject.createVertexArrayOES documentation> 
createVertexArrayOESUnchecked ::
                              (MonadIO m) => OESVertexArrayObject -> m WebGLVertexArrayObjectOES
createVertexArrayOESUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$> (js_createVertexArrayOES (self)))
 
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

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OESVertexArrayObject.isVertexArrayOES Mozilla OESVertexArrayObject.isVertexArrayOES documentation> 
isVertexArrayOES_ ::
                  (MonadIO m) =>
                    OESVertexArrayObject -> Maybe WebGLVertexArrayObjectOES -> m ()
isVertexArrayOES_ self arrayObject
  = liftIO
      (void (js_isVertexArrayOES (self) (maybeToNullable arrayObject)))
 
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