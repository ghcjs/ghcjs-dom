{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLCompressedTextureS3TC
       (pattern COMPRESSED_RGB_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT1_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT3_EXT,
        pattern COMPRESSED_RGBA_S3TC_DXT5_EXT, WebGLCompressedTextureS3TC,
        castToWebGLCompressedTextureS3TC, gTypeWebGLCompressedTextureS3TC)
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
pattern COMPRESSED_RGB_S3TC_DXT1_EXT = 33776
pattern COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777
pattern COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778
pattern COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779