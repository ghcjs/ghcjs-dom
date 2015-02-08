{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NavigatorUserMediaError
       (ghcjs_dom_navigator_user_media_error_get_constraint_name,
        navigatorUserMediaErrorGetConstraintName, NavigatorUserMediaError,
        IsNavigatorUserMediaError, castToNavigatorUserMediaError,
        gTypeNavigatorUserMediaError, toNavigatorUserMediaError)
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

 
foreign import javascript unsafe "$1[\"constraintName\"]"
        ghcjs_dom_navigator_user_media_error_get_constraint_name ::
        JSRef NavigatorUserMediaError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaError.constraintName Mozilla NavigatorUserMediaError.constraintName documentation> 
navigatorUserMediaErrorGetConstraintName ::
                                         (MonadIO m, IsNavigatorUserMediaError self,
                                          FromJSString result) =>
                                           self -> m result
navigatorUserMediaErrorGetConstraintName self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_navigator_user_media_error_get_constraint_name
            (unNavigatorUserMediaError (toNavigatorUserMediaError self))))
#else
module GHCJS.DOM.NavigatorUserMediaError (
  ) where
#endif
