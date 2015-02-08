{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLCompressedTexturePVRTC
       (cCOMPRESSED_RGB_PVRTC_4BPPV1_IMG,
        cCOMPRESSED_RGB_PVRTC_2BPPV1_IMG,
        cCOMPRESSED_RGBA_PVRTC_4BPPV1_IMG,
        cCOMPRESSED_RGBA_PVRTC_2BPPV1_IMG, WebGLCompressedTexturePVRTC,
        IsWebGLCompressedTexturePVRTC, castToWebGLCompressedTexturePVRTC,
        gTypeWebGLCompressedTexturePVRTC, toWebGLCompressedTexturePVRTC)
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

cCOMPRESSED_RGB_PVRTC_4BPPV1_IMG = 35840
cCOMPRESSED_RGB_PVRTC_2BPPV1_IMG = 35841
cCOMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 35842
cCOMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 35843
#else
module GHCJS.DOM.WebGLCompressedTexturePVRTC (
  ) where
#endif
