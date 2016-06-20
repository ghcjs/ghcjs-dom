{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLDrawBuffers
       (js_drawBuffersWEBGL, drawBuffersWEBGL,
        pattern COLOR_ATTACHMENT0_WEBGL, pattern COLOR_ATTACHMENT1_WEBGL,
        pattern COLOR_ATTACHMENT2_WEBGL, pattern COLOR_ATTACHMENT3_WEBGL,
        pattern COLOR_ATTACHMENT4_WEBGL, pattern COLOR_ATTACHMENT5_WEBGL,
        pattern COLOR_ATTACHMENT6_WEBGL, pattern COLOR_ATTACHMENT7_WEBGL,
        pattern COLOR_ATTACHMENT8_WEBGL, pattern COLOR_ATTACHMENT9_WEBGL,
        pattern COLOR_ATTACHMENT10_WEBGL, pattern COLOR_ATTACHMENT11_WEBGL,
        pattern COLOR_ATTACHMENT12_WEBGL, pattern COLOR_ATTACHMENT13_WEBGL,
        pattern COLOR_ATTACHMENT14_WEBGL, pattern COLOR_ATTACHMENT15_WEBGL,
        pattern DRAW_BUFFER0_WEBGL, pattern DRAW_BUFFER1_WEBGL,
        pattern DRAW_BUFFER2_WEBGL, pattern DRAW_BUFFER3_WEBGL,
        pattern DRAW_BUFFER4_WEBGL, pattern DRAW_BUFFER5_WEBGL,
        pattern DRAW_BUFFER6_WEBGL, pattern DRAW_BUFFER7_WEBGL,
        pattern DRAW_BUFFER8_WEBGL, pattern DRAW_BUFFER9_WEBGL,
        pattern DRAW_BUFFER10_WEBGL, pattern DRAW_BUFFER11_WEBGL,
        pattern DRAW_BUFFER12_WEBGL, pattern DRAW_BUFFER13_WEBGL,
        pattern DRAW_BUFFER14_WEBGL, pattern DRAW_BUFFER15_WEBGL,
        pattern MAX_COLOR_ATTACHMENTS_WEBGL,
        pattern MAX_DRAW_BUFFERS_WEBGL, WebGLDrawBuffers,
        castToWebGLDrawBuffers, gTypeWebGLDrawBuffers)
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
 
foreign import javascript unsafe "$1[\"drawBuffersWEBGL\"]($2)"
        js_drawBuffersWEBGL :: WebGLDrawBuffers -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLDrawBuffers.drawBuffersWEBGL Mozilla WebGLDrawBuffers.drawBuffersWEBGL documentation> 
drawBuffersWEBGL ::
                 (MonadIO m) => WebGLDrawBuffers -> [GLenum] -> m ()
drawBuffersWEBGL self buffers
  = liftIO
      (toJSVal buffers >>=
         \ buffers' -> js_drawBuffersWEBGL (self) buffers')
pattern COLOR_ATTACHMENT0_WEBGL = 36064
pattern COLOR_ATTACHMENT1_WEBGL = 36065
pattern COLOR_ATTACHMENT2_WEBGL = 36066
pattern COLOR_ATTACHMENT3_WEBGL = 36067
pattern COLOR_ATTACHMENT4_WEBGL = 36068
pattern COLOR_ATTACHMENT5_WEBGL = 36069
pattern COLOR_ATTACHMENT6_WEBGL = 36070
pattern COLOR_ATTACHMENT7_WEBGL = 36071
pattern COLOR_ATTACHMENT8_WEBGL = 36072
pattern COLOR_ATTACHMENT9_WEBGL = 36073
pattern COLOR_ATTACHMENT10_WEBGL = 36074
pattern COLOR_ATTACHMENT11_WEBGL = 36075
pattern COLOR_ATTACHMENT12_WEBGL = 36076
pattern COLOR_ATTACHMENT13_WEBGL = 36077
pattern COLOR_ATTACHMENT14_WEBGL = 36078
pattern COLOR_ATTACHMENT15_WEBGL = 36079
pattern DRAW_BUFFER0_WEBGL = 34853
pattern DRAW_BUFFER1_WEBGL = 34854
pattern DRAW_BUFFER2_WEBGL = 34855
pattern DRAW_BUFFER3_WEBGL = 34856
pattern DRAW_BUFFER4_WEBGL = 34857
pattern DRAW_BUFFER5_WEBGL = 34858
pattern DRAW_BUFFER6_WEBGL = 34859
pattern DRAW_BUFFER7_WEBGL = 34860
pattern DRAW_BUFFER8_WEBGL = 34861
pattern DRAW_BUFFER9_WEBGL = 34862
pattern DRAW_BUFFER10_WEBGL = 34863
pattern DRAW_BUFFER11_WEBGL = 34864
pattern DRAW_BUFFER12_WEBGL = 34865
pattern DRAW_BUFFER13_WEBGL = 34866
pattern DRAW_BUFFER14_WEBGL = 34867
pattern DRAW_BUFFER15_WEBGL = 34868
pattern MAX_COLOR_ATTACHMENTS_WEBGL = 36063
pattern MAX_DRAW_BUFFERS_WEBGL = 34852