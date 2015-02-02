{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLError
       (cUNKNOWN_ERR, cDATABASE_ERR, cVERSION_ERR, cTOO_LARGE_ERR,
        cQUOTA_ERR, cSYNTAX_ERR, cCONSTRAINT_ERR, cTIMEOUT_ERR,
        ghcjs_dom_sql_error_get_code, sqlErrorGetCode,
        ghcjs_dom_sql_error_get_message, sqlErrorGetMessage, SQLError,
        IsSQLError, castToSQLError, gTypeSQLError, toSQLError)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

cUNKNOWN_ERR = 0
cDATABASE_ERR = 1
cVERSION_ERR = 2
cTOO_LARGE_ERR = 3
cQUOTA_ERR = 4
cSYNTAX_ERR = 5
cCONSTRAINT_ERR = 6
cTIMEOUT_ERR = 7
 
foreign import javascript unsafe "$1[\"code\"]"
        ghcjs_dom_sql_error_get_code :: JSRef SQLError -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.code Mozilla SQLError.code documentation> 
sqlErrorGetCode :: (IsSQLError self) => self -> IO Word
sqlErrorGetCode self
  = ghcjs_dom_sql_error_get_code (unSQLError (toSQLError self))
 
foreign import javascript unsafe "$1[\"message\"]"
        ghcjs_dom_sql_error_get_message :: JSRef SQLError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLError.message Mozilla SQLError.message documentation> 
sqlErrorGetMessage ::
                   (IsSQLError self, FromJSString result) => self -> IO result
sqlErrorGetMessage self
  = fromJSString <$>
      (ghcjs_dom_sql_error_get_message (unSQLError (toSQLError self)))
#else
module GHCJS.DOM.SQLError (
  ) where
#endif
