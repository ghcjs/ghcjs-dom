{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EXTsRGB
       (pattern SRGB_EXT, pattern SRGB_ALPHA_EXT,
        pattern SRGB8_ALPHA8_EXT,
        pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT, EXTsRGB,
        castToEXTsRGB, gTypeEXTsRGB)
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

pattern SRGB_EXT = 35904
pattern SRGB_ALPHA_EXT = 35906
pattern SRGB8_ALPHA8_EXT = 35907
pattern FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT = 33296
#else
module GHCJS.DOM.EXTsRGB (
  ) where
#endif
