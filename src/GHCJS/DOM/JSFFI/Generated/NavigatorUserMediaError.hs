{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.NavigatorUserMediaError
       (js_getConstraintName, getConstraintName, NavigatorUserMediaError,
        castToNavigatorUserMediaError, gTypeNavigatorUserMediaError)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"constraintName\"]"
        js_getConstraintName :: NavigatorUserMediaError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/NavigatorUserMediaError.constraintName Mozilla NavigatorUserMediaError.constraintName documentation> 
getConstraintName ::
                  (MonadIO m, FromJSString result) =>
                    NavigatorUserMediaError -> m result
getConstraintName self
  = liftIO (fromJSString <$> (js_getConstraintName (self)))