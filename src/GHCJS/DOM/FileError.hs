{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.FileError
       (cNOT_FOUND_ERR, cSECURITY_ERR, cABORT_ERR, cNOT_READABLE_ERR,
        cENCODING_ERR, cNO_MODIFICATION_ALLOWED_ERR, cINVALID_STATE_ERR,
        cSYNTAX_ERR, cINVALID_MODIFICATION_ERR, cQUOTA_EXCEEDED_ERR,
        cTYPE_MISMATCH_ERR, cPATH_EXISTS_ERR,
        ghcjs_dom_file_error_get_code, fileErrorGetCode, FileError,
        IsFileError, castToFileError, gTypeFileError, toFileError)
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

cNOT_FOUND_ERR = 1
cSECURITY_ERR = 2
cABORT_ERR = 3
cNOT_READABLE_ERR = 4
cENCODING_ERR = 5
cNO_MODIFICATION_ALLOWED_ERR = 6
cINVALID_STATE_ERR = 7
cSYNTAX_ERR = 8
cINVALID_MODIFICATION_ERR = 9
cQUOTA_EXCEEDED_ERR = 10
cTYPE_MISMATCH_ERR = 11
cPATH_EXISTS_ERR = 12
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_file_error_get_code :: JSRef FileError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileError.code Mozilla FileError.code documentation> 
fileErrorGetCode :: (MonadIO m, IsFileError self) => self -> m Word
fileErrorGetCode self
  = liftIO
      (ghcjs_dom_file_error_get_code (unFileError (toFileError self)))
#else
module GHCJS.DOM.FileError (
  ) where
#endif
