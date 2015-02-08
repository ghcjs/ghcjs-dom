{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLLoseContext
       (ghcjs_dom_web_gl_lose_context_lose_context,
        webGLLoseContextLoseContext,
        ghcjs_dom_web_gl_lose_context_restore_context,
        webGLLoseContextRestoreContext, WebGLLoseContext,
        IsWebGLLoseContext, castToWebGLLoseContext, gTypeWebGLLoseContext,
        toWebGLLoseContext)
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

 
foreign import javascript unsafe "$1[\"loseContext\"]()"
        ghcjs_dom_web_gl_lose_context_lose_context ::
        JSRef WebGLLoseContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.loseContext Mozilla WebGLLoseContext.loseContext documentation> 
webGLLoseContextLoseContext ::
                            (MonadIO m, IsWebGLLoseContext self) => self -> m ()
webGLLoseContextLoseContext self
  = liftIO
      (ghcjs_dom_web_gl_lose_context_lose_context
         (unWebGLLoseContext (toWebGLLoseContext self)))
 
foreign import javascript unsafe "$1[\"restoreContext\"]()"
        ghcjs_dom_web_gl_lose_context_restore_context ::
        JSRef WebGLLoseContext -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLLoseContext.restoreContext Mozilla WebGLLoseContext.restoreContext documentation> 
webGLLoseContextRestoreContext ::
                               (MonadIO m, IsWebGLLoseContext self) => self -> m ()
webGLLoseContextRestoreContext self
  = liftIO
      (ghcjs_dom_web_gl_lose_context_restore_context
         (unWebGLLoseContext (toWebGLLoseContext self)))
#else
module GHCJS.DOM.WebGLLoseContext (
  ) where
#endif
