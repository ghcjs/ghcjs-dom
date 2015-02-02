{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SQLResultSetRowList
       (ghcjs_dom_sql_result_set_row_list_item, sqlResultSetRowListItem,
        ghcjs_dom_sql_result_set_row_list_get_length,
        sqlResultSetRowListGetLength, SQLResultSetRowList,
        IsSQLResultSetRowList, castToSQLResultSetRowList,
        gTypeSQLResultSetRowList, toSQLResultSetRowList)
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

 
foreign import javascript unsafe "$1[\"item\"]($2)"
        ghcjs_dom_sql_result_set_row_list_item ::
        JSRef SQLResultSetRowList -> Word -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.item Mozilla SQLResultSetRowList.item documentation> 
sqlResultSetRowListItem ::
                        (IsSQLResultSetRowList self) => self -> Word -> IO (JSRef a)
sqlResultSetRowListItem self index
  = ghcjs_dom_sql_result_set_row_list_item
      (unSQLResultSetRowList (toSQLResultSetRowList self))
      index
 
foreign import javascript unsafe "$1[\"length\"]"
        ghcjs_dom_sql_result_set_row_list_get_length ::
        JSRef SQLResultSetRowList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SQLResultSetRowList.length Mozilla SQLResultSetRowList.length documentation> 
sqlResultSetRowListGetLength ::
                             (IsSQLResultSetRowList self) => self -> IO Word
sqlResultSetRowListGetLength self
  = ghcjs_dom_sql_result_set_row_list_get_length
      (unSQLResultSetRowList (toSQLResultSetRowList self))
#else
module GHCJS.DOM.SQLResultSetRowList (
  ) where
#endif
