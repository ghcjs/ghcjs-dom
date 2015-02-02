{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLCompressedTextureATC
       (cCOMPRESSED_RGB_ATC_WEBGL,
        cCOMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL,
        cCOMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL,
        WebGLCompressedTextureATC, IsWebGLCompressedTextureATC,
        castToWebGLCompressedTextureATC, gTypeWebGLCompressedTextureATC,
        toWebGLCompressedTextureATC)
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

cCOMPRESSED_RGB_ATC_WEBGL = 35986
cCOMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 35987
cCOMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 34798
#else
module GHCJS.DOM.WebGLCompressedTextureATC (
  ) where
#endif
