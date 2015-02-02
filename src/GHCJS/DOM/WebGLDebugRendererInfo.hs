{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLDebugRendererInfo
       (cUNMASKED_VENDOR_WEBGL, cUNMASKED_RENDERER_WEBGL,
        WebGLDebugRendererInfo, IsWebGLDebugRendererInfo,
        castToWebGLDebugRendererInfo, gTypeWebGLDebugRendererInfo,
        toWebGLDebugRendererInfo)
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

cUNMASKED_VENDOR_WEBGL = 37445
cUNMASKED_RENDERER_WEBGL = 37446
#else
module GHCJS.DOM.WebGLDebugRendererInfo (
  ) where
#endif
