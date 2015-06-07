{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.EXTTextureFilterAnisotropic
       (pattern TEXTURE_MAX_ANISOTROPY_EXT,
        pattern MAX_TEXTURE_MAX_ANISOTROPY_EXT,
        EXTTextureFilterAnisotropic, castToEXTTextureFilterAnisotropic,
        gTypeEXTTextureFilterAnisotropic)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
pattern TEXTURE_MAX_ANISOTROPY_EXT = 34046
pattern MAX_TEXTURE_MAX_ANISOTROPY_EXT = 34047