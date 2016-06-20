{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.WebGLCompressedTextureATC
       (pattern COMPRESSED_RGB_ATC_WEBGL,
        pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL,
        pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL,
        WebGLCompressedTextureATC, castToWebGLCompressedTextureATC,
        gTypeWebGLCompressedTextureATC)
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
pattern COMPRESSED_RGB_ATC_WEBGL = 35986
pattern COMPRESSED_RGBA_ATC_EXPLICIT_ALPHA_WEBGL = 35987
pattern COMPRESSED_RGBA_ATC_INTERPOLATED_ALPHA_WEBGL = 34798