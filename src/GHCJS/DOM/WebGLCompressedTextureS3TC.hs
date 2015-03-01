{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLCompressedTextureS3TC
       (pattern COMPRESSED_RGB_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT3_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT5_EXT, WebGLCompressedTextureS3TC,
        castToWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern COMPRESSED_RGB_S3TC_DXT1_EXT = 33776
pattern COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777
pattern COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778
pattern COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779
#else
module GHCJS.DOM.WebGLCompressedTextureS3TC (
  ) where
#endif
