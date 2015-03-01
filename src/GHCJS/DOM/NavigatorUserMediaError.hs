{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.NavigatorUserMediaError
       (js_getConstraintName, getConstraintName, NavigatorUserMediaError,
        castToNavigatorUserMediaError, gTypeNavigatorUserMediaError)
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

 
foreign import javascript unsafe "$1[\"constraintName\"]"
        js_getConstraintName ::
        JSRef NavigatorUserMediaError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaError.constraintName Mozilla NavigatorUserMediaError.constraintName documentation> 
getConstraintName ::
                  (MonadIO m, FromJSString result) =>
                    NavigatorUserMediaError -> m result
getConstraintName self
  = liftIO
      (fromJSString <$>
         (js_getConstraintName (unNavigatorUserMediaError self)))
#else
module GHCJS.DOM.NavigatorUserMediaError (
  ) where
#endif
