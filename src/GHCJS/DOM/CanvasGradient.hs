{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CanvasGradient
       (ghcjs_dom_canvas_gradient_add_color_stop,
        canvasGradientAddColorStop, CanvasGradient, IsCanvasGradient,
        castToCanvasGradient, gTypeCanvasGradient, toCanvasGradient)
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

 
foreign import javascript unsafe "$1[\"addColorStop\"]($2, $3)"
        ghcjs_dom_canvas_gradient_add_color_stop ::
        JSRef CanvasGradient -> Float -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient.addColorStop Mozilla CanvasGradient.addColorStop documentation> 
canvasGradientAddColorStop ::
                           (IsCanvasGradient self, ToJSString color) =>
                             self -> Float -> color -> IO ()
canvasGradientAddColorStop self offset color
  = ghcjs_dom_canvas_gradient_add_color_stop
      (unCanvasGradient (toCanvasGradient self))
      offset
      (toJSString color)
#else
module GHCJS.DOM.CanvasGradient (
  ) where
#endif
