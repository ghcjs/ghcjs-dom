{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLDrawBuffers
       (ghcjs_dom_web_gl_draw_buffers_draw_buffers_webgl,
        webGLDrawBuffersDrawBuffersWEBGL, cCOLOR_ATTACHMENT0_WEBGL,
        cCOLOR_ATTACHMENT1_WEBGL, cCOLOR_ATTACHMENT2_WEBGL,
        cCOLOR_ATTACHMENT3_WEBGL, cCOLOR_ATTACHMENT4_WEBGL,
        cCOLOR_ATTACHMENT5_WEBGL, cCOLOR_ATTACHMENT6_WEBGL,
        cCOLOR_ATTACHMENT7_WEBGL, cCOLOR_ATTACHMENT8_WEBGL,
        cCOLOR_ATTACHMENT9_WEBGL, cCOLOR_ATTACHMENT10_WEBGL,
        cCOLOR_ATTACHMENT11_WEBGL, cCOLOR_ATTACHMENT12_WEBGL,
        cCOLOR_ATTACHMENT13_WEBGL, cCOLOR_ATTACHMENT14_WEBGL,
        cCOLOR_ATTACHMENT15_WEBGL, cDRAW_BUFFER0_WEBGL,
        cDRAW_BUFFER1_WEBGL, cDRAW_BUFFER2_WEBGL, cDRAW_BUFFER3_WEBGL,
        cDRAW_BUFFER4_WEBGL, cDRAW_BUFFER5_WEBGL, cDRAW_BUFFER6_WEBGL,
        cDRAW_BUFFER7_WEBGL, cDRAW_BUFFER8_WEBGL, cDRAW_BUFFER9_WEBGL,
        cDRAW_BUFFER10_WEBGL, cDRAW_BUFFER11_WEBGL, cDRAW_BUFFER12_WEBGL,
        cDRAW_BUFFER13_WEBGL, cDRAW_BUFFER14_WEBGL, cDRAW_BUFFER15_WEBGL,
        cMAX_COLOR_ATTACHMENTS_WEBGL, cMAX_DRAW_BUFFERS_WEBGL,
        WebGLDrawBuffers, IsWebGLDrawBuffers, castToWebGLDrawBuffers,
        gTypeWebGLDrawBuffers, toWebGLDrawBuffers)
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

 
foreign import javascript unsafe "$1[\"drawBuffersWEBGL\"]($2)"
        ghcjs_dom_web_gl_draw_buffers_draw_buffers_webgl ::
        JSRef WebGLDrawBuffers -> JSRef [GLenum] -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDrawBuffers.drawBuffersWEBGL Mozilla WebGLDrawBuffers.drawBuffersWEBGL documentation> 
webGLDrawBuffersDrawBuffersWEBGL ::
                                 (IsWebGLDrawBuffers self) => self -> [GLenum] -> IO ()
webGLDrawBuffersDrawBuffersWEBGL self buffers
  = toJSRef buffers >>=
      \ buffers' ->
        ghcjs_dom_web_gl_draw_buffers_draw_buffers_webgl
          (unWebGLDrawBuffers (toWebGLDrawBuffers self))
          buffers'
cCOLOR_ATTACHMENT0_WEBGL = 36064
cCOLOR_ATTACHMENT1_WEBGL = 36065
cCOLOR_ATTACHMENT2_WEBGL = 36066
cCOLOR_ATTACHMENT3_WEBGL = 36067
cCOLOR_ATTACHMENT4_WEBGL = 36068
cCOLOR_ATTACHMENT5_WEBGL = 36069
cCOLOR_ATTACHMENT6_WEBGL = 36070
cCOLOR_ATTACHMENT7_WEBGL = 36071
cCOLOR_ATTACHMENT8_WEBGL = 36072
cCOLOR_ATTACHMENT9_WEBGL = 36073
cCOLOR_ATTACHMENT10_WEBGL = 36074
cCOLOR_ATTACHMENT11_WEBGL = 36075
cCOLOR_ATTACHMENT12_WEBGL = 36076
cCOLOR_ATTACHMENT13_WEBGL = 36077
cCOLOR_ATTACHMENT14_WEBGL = 36078
cCOLOR_ATTACHMENT15_WEBGL = 36079
cDRAW_BUFFER0_WEBGL = 34853
cDRAW_BUFFER1_WEBGL = 34854
cDRAW_BUFFER2_WEBGL = 34855
cDRAW_BUFFER3_WEBGL = 34856
cDRAW_BUFFER4_WEBGL = 34857
cDRAW_BUFFER5_WEBGL = 34858
cDRAW_BUFFER6_WEBGL = 34859
cDRAW_BUFFER7_WEBGL = 34860
cDRAW_BUFFER8_WEBGL = 34861
cDRAW_BUFFER9_WEBGL = 34862
cDRAW_BUFFER10_WEBGL = 34863
cDRAW_BUFFER11_WEBGL = 34864
cDRAW_BUFFER12_WEBGL = 34865
cDRAW_BUFFER13_WEBGL = 34866
cDRAW_BUFFER14_WEBGL = 34867
cDRAW_BUFFER15_WEBGL = 34868
cMAX_COLOR_ATTACHMENTS_WEBGL = 36063
cMAX_DRAW_BUFFERS_WEBGL = 34852
#else
module GHCJS.DOM.WebGLDrawBuffers (
  ) where
#endif
