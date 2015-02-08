{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EXTTextureFilterAnisotropic
       (cTEXTURE_MAX_ANISOTROPY_EXT, cMAX_TEXTURE_MAX_ANISOTROPY_EXT,
        EXTTextureFilterAnisotropic, IsEXTTextureFilterAnisotropic,
        castToEXTTextureFilterAnisotropic,
        gTypeEXTTextureFilterAnisotropic, toEXTTextureFilterAnisotropic)
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

cTEXTURE_MAX_ANISOTROPY_EXT = 34046
cMAX_TEXTURE_MAX_ANISOTROPY_EXT = 34047
#else
module GHCJS.DOM.EXTTextureFilterAnisotropic (
  ) where
#endif
