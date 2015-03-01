{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGRenderingIntent
       (pattern RENDERING_INTENT_UNKNOWN, pattern RENDERING_INTENT_AUTO,
        pattern RENDERING_INTENT_PERCEPTUAL,
        pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC,
        pattern RENDERING_INTENT_SATURATION,
        pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC, SVGRenderingIntent,
        castToSVGRenderingIntent, gTypeSVGRenderingIntent)
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

pattern RENDERING_INTENT_UNKNOWN = 0
pattern RENDERING_INTENT_AUTO = 1
pattern RENDERING_INTENT_PERCEPTUAL = 2
pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3
pattern RENDERING_INTENT_SATURATION = 4
pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5
#else
module GHCJS.DOM.SVGRenderingIntent (
  ) where
#endif
