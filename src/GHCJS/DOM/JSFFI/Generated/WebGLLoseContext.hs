{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLLoseContext
       (js_loseContext, loseContext, js_restoreContext, restoreContext,
        WebGLLoseContext, castToWebGLLoseContext, gTypeWebGLLoseContext)
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
 
foreign import javascript unsafe "$1[\"loseContext\"]()"
        js_loseContext :: WebGLLoseContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.loseContext Mozilla WebGLLoseContext.loseContext documentation> 
loseContext :: (MonadIO m) => WebGLLoseContext -> m ()
loseContext self = liftIO (js_loseContext (self))
 
foreign import javascript unsafe "$1[\"restoreContext\"]()"
        js_restoreContext :: WebGLLoseContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.restoreContext Mozilla WebGLLoseContext.restoreContext documentation> 
restoreContext :: (MonadIO m) => WebGLLoseContext -> m ()
restoreContext self = liftIO (js_restoreContext (self))