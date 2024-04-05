{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebGLCompressedTexturePVRTC
       (pattern COMPRESSED_RGB_PVRTC_4BPPV1_IMG,
        pattern COMPRESSED_RGB_PVRTC_2BPPV1_IMG,
        pattern COMPRESSED_RGBA_PVRTC_4BPPV1_IMG,
        pattern COMPRESSED_RGBA_PVRTC_2BPPV1_IMG,
        WebGLCompressedTexturePVRTC(..), gTypeWebGLCompressedTexturePVRTC)
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
pattern COMPRESSED_RGB_PVRTC_4BPPV1_IMG = 35840
pattern COMPRESSED_RGB_PVRTC_2BPPV1_IMG = 35841
pattern COMPRESSED_RGBA_PVRTC_4BPPV1_IMG = 35842
pattern COMPRESSED_RGBA_PVRTC_2BPPV1_IMG = 35843