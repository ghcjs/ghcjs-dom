{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGPULibrary
       (js_functionWithName, functionWithName, functionWithName_,
        functionWithNameUnsafe, functionWithNameUnchecked,
        js_getSourceCode, getSourceCode, js_setLabel, setLabel,
        js_getLabel, getLabel, js_getFunctionNames, getFunctionNames,
        WebGPULibrary(..), gTypeWebGPULibrary)
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
 
foreign import javascript unsafe "$1[\"functionWithName\"]($2)"
        js_functionWithName ::
        WebGPULibrary -> JSString -> IO (Nullable WebGPUFunction)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithName ::
                 (MonadIO m, ToJSString name) =>
                   WebGPULibrary -> name -> m (Maybe WebGPUFunction)
functionWithName self name
  = liftIO
      (nullableToMaybe <$> (js_functionWithName self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithName_ ::
                  (MonadIO m, ToJSString name) => WebGPULibrary -> name -> m ()
functionWithName_ self name
  = liftIO (void (js_functionWithName self (toJSString name)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithNameUnsafe ::
                       (MonadIO m, ToJSString name, HasCallStack) =>
                         WebGPULibrary -> name -> m WebGPUFunction
functionWithNameUnsafe self name
  = liftIO
      ((nullableToMaybe <$> (js_functionWithName self (toJSString name)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionWithName Mozilla WebGPULibrary.functionWithName documentation> 
functionWithNameUnchecked ::
                          (MonadIO m, ToJSString name) =>
                            WebGPULibrary -> name -> m WebGPUFunction
functionWithNameUnchecked self name
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_functionWithName self (toJSString name)))
 
foreign import javascript unsafe "$1[\"sourceCode\"]"
        js_getSourceCode :: WebGPULibrary -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.sourceCode Mozilla WebGPULibrary.sourceCode documentation> 
getSourceCode ::
              (MonadIO m, FromJSString result) => WebGPULibrary -> m result
getSourceCode self
  = liftIO (fromJSString <$> (js_getSourceCode self))
 
foreign import javascript unsafe "$1[\"label\"] = $2;" js_setLabel
        :: WebGPULibrary -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.label Mozilla WebGPULibrary.label documentation> 
setLabel ::
         (MonadIO m, ToJSString val) => WebGPULibrary -> val -> m ()
setLabel self val = liftIO (js_setLabel self (toJSString val))
 
foreign import javascript unsafe "$1[\"label\"]" js_getLabel ::
        WebGPULibrary -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.label Mozilla WebGPULibrary.label documentation> 
getLabel ::
         (MonadIO m, FromJSString result) => WebGPULibrary -> m result
getLabel self = liftIO (fromJSString <$> (js_getLabel self))
 
foreign import javascript unsafe "$1[\"functionNames\"]"
        js_getFunctionNames :: WebGPULibrary -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGPULibrary.functionNames Mozilla WebGPULibrary.functionNames documentation> 
getFunctionNames ::
                 (MonadIO m, FromJSString result) => WebGPULibrary -> m [result]
getFunctionNames self
  = liftIO ((js_getFunctionNames self) >>= fromJSValUnchecked)