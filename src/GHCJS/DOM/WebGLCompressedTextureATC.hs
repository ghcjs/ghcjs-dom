{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLCompressedTextureATC
       (pattern COMPRESSED_RGB_ATC_WEBGL,
        pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL,
        pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL,
        WebGLCompressedTextureATC, castToWebGLCompressedTextureATC,
        gTypeWebGLCompressedTextureATC)
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

pattern COMPRESSED_RGB_ATC_WEBGL = 35986
pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 35987
pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 34798
#else
module GHCJS.DOM.WebGLCompressedTextureATC (
  ) where
#endif
