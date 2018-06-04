{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGLDebugShaders
       (js_getTranslatedShaderSource, getTranslatedShaderSource,
        getTranslatedShaderSource_, getTranslatedShaderSourceUnsafe,
        getTranslatedShaderSourceUnchecked, WebGLDebugShaders(..),
        gTypeWebGLDebugShaders)
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
 
foreign import javascript unsafe
        "$1[\"getTranslatedShaderSource\"]($2)"
        js_getTranslatedShaderSource ::
        WebGLDebugShaders -> Optional WebGLShader -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSource ::
                          (MonadIO m, FromJSString result) =>
                            WebGLDebugShaders -> Maybe WebGLShader -> m (Maybe result)
getTranslatedShaderSource self shader
  = liftIO
      (fromMaybeJSString <$>
         (js_getTranslatedShaderSource self (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSource_ ::
                           (MonadIO m) => WebGLDebugShaders -> Maybe WebGLShader -> m ()
getTranslatedShaderSource_ self shader
  = liftIO
      (void (js_getTranslatedShaderSource self (maybeToOptional shader)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSourceUnsafe ::
                                (MonadIO m, HasCallStack, FromJSString result) =>
                                  WebGLDebugShaders -> Maybe WebGLShader -> m result
getTranslatedShaderSourceUnsafe self shader
  = liftIO
      ((fromMaybeJSString <$>
          (js_getTranslatedShaderSource self (maybeToOptional shader)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDebugShaders.getTranslatedShaderSource Mozilla WebGLDebugShaders.getTranslatedShaderSource documentation> 
getTranslatedShaderSourceUnchecked ::
                                   (MonadIO m, FromJSString result) =>
                                     WebGLDebugShaders -> Maybe WebGLShader -> m result
getTranslatedShaderSourceUnchecked self shader
  = liftIO
      (fromJust . fromMaybeJSString <$>
         (js_getTranslatedShaderSource self (maybeToOptional shader)))