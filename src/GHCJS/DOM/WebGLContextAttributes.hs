{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLContextAttributes
       (ghcjs_dom_web_gl_context_attributes_set_alpha,
        webGLContextAttributesSetAlpha,
        ghcjs_dom_web_gl_context_attributes_get_alpha,
        webGLContextAttributesGetAlpha,
        ghcjs_dom_web_gl_context_attributes_set_depth,
        webGLContextAttributesSetDepth,
        ghcjs_dom_web_gl_context_attributes_get_depth,
        webGLContextAttributesGetDepth,
        ghcjs_dom_web_gl_context_attributes_set_stencil,
        webGLContextAttributesSetStencil,
        ghcjs_dom_web_gl_context_attributes_get_stencil,
        webGLContextAttributesGetStencil,
        ghcjs_dom_web_gl_context_attributes_set_antialias,
        webGLContextAttributesSetAntialias,
        ghcjs_dom_web_gl_context_attributes_get_antialias,
        webGLContextAttributesGetAntialias,
        ghcjs_dom_web_gl_context_attributes_set_premultiplied_alpha,
        webGLContextAttributesSetPremultipliedAlpha,
        ghcjs_dom_web_gl_context_attributes_get_premultiplied_alpha,
        webGLContextAttributesGetPremultipliedAlpha,
        ghcjs_dom_web_gl_context_attributes_set_preserve_drawing_buffer,
        webGLContextAttributesSetPreserveDrawingBuffer,
        ghcjs_dom_web_gl_context_attributes_get_preserve_drawing_buffer,
        webGLContextAttributesGetPreserveDrawingBuffer,
        WebGLContextAttributes, IsWebGLContextAttributes,
        castToWebGLContextAttributes, gTypeWebGLContextAttributes,
        toWebGLContextAttributes)
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

 
foreign import javascript unsafe "$1[\"alpha\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_alpha ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
webGLContextAttributesSetAlpha ::
                               (IsWebGLContextAttributes self) => self -> Bool -> IO ()
webGLContextAttributesSetAlpha self val
  = ghcjs_dom_web_gl_context_attributes_set_alpha
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe "($1[\"alpha\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_alpha ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.alpha Mozilla WebGLContextAttributes.alpha documentation> 
webGLContextAttributesGetAlpha ::
                               (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetAlpha self
  = ghcjs_dom_web_gl_context_attributes_get_alpha
      (unWebGLContextAttributes (toWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"depth\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_depth ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
webGLContextAttributesSetDepth ::
                               (IsWebGLContextAttributes self) => self -> Bool -> IO ()
webGLContextAttributesSetDepth self val
  = ghcjs_dom_web_gl_context_attributes_set_depth
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe "($1[\"depth\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_depth ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.depth Mozilla WebGLContextAttributes.depth documentation> 
webGLContextAttributesGetDepth ::
                               (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetDepth self
  = ghcjs_dom_web_gl_context_attributes_get_depth
      (unWebGLContextAttributes (toWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"stencil\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_stencil ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
webGLContextAttributesSetStencil ::
                                 (IsWebGLContextAttributes self) => self -> Bool -> IO ()
webGLContextAttributesSetStencil self val
  = ghcjs_dom_web_gl_context_attributes_set_stencil
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe "($1[\"stencil\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_stencil ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.stencil Mozilla WebGLContextAttributes.stencil documentation> 
webGLContextAttributesGetStencil ::
                                 (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetStencil self
  = ghcjs_dom_web_gl_context_attributes_get_stencil
      (unWebGLContextAttributes (toWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"antialias\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_antialias ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
webGLContextAttributesSetAntialias ::
                                   (IsWebGLContextAttributes self) => self -> Bool -> IO ()
webGLContextAttributesSetAntialias self val
  = ghcjs_dom_web_gl_context_attributes_set_antialias
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe "($1[\"antialias\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_antialias ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.antialias Mozilla WebGLContextAttributes.antialias documentation> 
webGLContextAttributesGetAntialias ::
                                   (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetAntialias self
  = ghcjs_dom_web_gl_context_attributes_get_antialias
      (unWebGLContextAttributes (toWebGLContextAttributes self))
 
foreign import javascript unsafe "$1[\"premultipliedAlpha\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_premultiplied_alpha ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
webGLContextAttributesSetPremultipliedAlpha ::
                                            (IsWebGLContextAttributes self) => self -> Bool -> IO ()
webGLContextAttributesSetPremultipliedAlpha self val
  = ghcjs_dom_web_gl_context_attributes_set_premultiplied_alpha
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe
        "($1[\"premultipliedAlpha\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_premultiplied_alpha ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.premultipliedAlpha Mozilla WebGLContextAttributes.premultipliedAlpha documentation> 
webGLContextAttributesGetPremultipliedAlpha ::
                                            (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetPremultipliedAlpha self
  = ghcjs_dom_web_gl_context_attributes_get_premultiplied_alpha
      (unWebGLContextAttributes (toWebGLContextAttributes self))
 
foreign import javascript unsafe
        "$1[\"preserveDrawingBuffer\"] = $2;"
        ghcjs_dom_web_gl_context_attributes_set_preserve_drawing_buffer ::
        JSRef WebGLContextAttributes -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
webGLContextAttributesSetPreserveDrawingBuffer ::
                                               (IsWebGLContextAttributes self) =>
                                                 self -> Bool -> IO ()
webGLContextAttributesSetPreserveDrawingBuffer self val
  = ghcjs_dom_web_gl_context_attributes_set_preserve_drawing_buffer
      (unWebGLContextAttributes (toWebGLContextAttributes self))
      val
 
foreign import javascript unsafe
        "($1[\"preserveDrawingBuffer\"] ? 1 : 0)"
        ghcjs_dom_web_gl_context_attributes_get_preserve_drawing_buffer ::
        JSRef WebGLContextAttributes -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextAttributes.preserveDrawingBuffer Mozilla WebGLContextAttributes.preserveDrawingBuffer documentation> 
webGLContextAttributesGetPreserveDrawingBuffer ::
                                               (IsWebGLContextAttributes self) => self -> IO Bool
webGLContextAttributesGetPreserveDrawingBuffer self
  = ghcjs_dom_web_gl_context_attributes_get_preserve_drawing_buffer
      (unWebGLContextAttributes (toWebGLContextAttributes self))
#else
module GHCJS.DOM.WebGLContextAttributes (
  ) where
#endif
