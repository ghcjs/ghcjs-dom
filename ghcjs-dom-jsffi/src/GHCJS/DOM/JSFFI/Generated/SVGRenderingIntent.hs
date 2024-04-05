{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGRenderingIntent
       (pattern RENDERING_INTENT_UNKNOWN, pattern RENDERING_INTENT_AUTO,
        pattern RENDERING_INTENT_PERCEPTUAL,
        pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC,
        pattern RENDERING_INTENT_SATURATION,
        pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC,
        SVGRenderingIntent(..), gTypeSVGRenderingIntent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull, jsUndefined)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import Data.Traversable (mapM)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName, unsafeEventNameAsync)
import GHCJS.DOM.JSFFI.Generated.Enums
pattern RENDERING_INTENT_UNKNOWN = 0
pattern RENDERING_INTENT_AUTO = 1
pattern RENDERING_INTENT_PERCEPTUAL = 2
pattern RENDERING_INTENT_RELATIVE_COLORIMETRIC = 3
pattern RENDERING_INTENT_SATURATION = 4
pattern RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 5