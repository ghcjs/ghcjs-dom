{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CanvasRenderingContext
       (ghcjs_dom_canvas_rendering_context_get_canvas,
        canvasRenderingContextGetCanvas, CanvasRenderingContext,
        IsCanvasRenderingContext, castToCanvasRenderingContext,
        gTypeCanvasRenderingContext, toCanvasRenderingContext)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"canvas\"]"
        ghcjs_dom_canvas_rendering_context_get_canvas ::
        JSRef CanvasRenderingContext -> IO (JSRef HTMLCanvasElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext.canvas Mozilla CanvasRenderingContext.canvas documentation> 
canvasRenderingContextGetCanvas ::
                                (IsCanvasRenderingContext self) =>
                                  self -> IO (Maybe HTMLCanvasElement)
canvasRenderingContextGetCanvas self
  = (ghcjs_dom_canvas_rendering_context_get_canvas
       (unCanvasRenderingContext (toCanvasRenderingContext self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CanvasRenderingContext (
  ) where
#endif
