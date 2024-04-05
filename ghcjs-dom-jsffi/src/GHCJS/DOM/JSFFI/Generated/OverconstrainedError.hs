{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OverconstrainedError
       (js_newOverconstrainedError, newOverconstrainedError,
        js_getMessage, getMessage, js_getConstraint, getConstraint,
        OverconstrainedError(..), gTypeOverconstrainedError)
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
 
foreign import javascript unsafe
        "new window[\"OverconstrainedError\"]($1,\n$2)"
        js_newOverconstrainedError ::
        Optional JSString -> Optional JSString -> IO OverconstrainedError

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError Mozilla OverconstrainedError documentation> 
newOverconstrainedError ::
                        (MonadIO m, ToJSString constraint, ToJSString message) =>
                          Maybe constraint -> Maybe message -> m OverconstrainedError
newOverconstrainedError constraint message
  = liftIO
      (js_newOverconstrainedError (toOptionalJSString constraint)
         (toOptionalJSString message))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        OverconstrainedError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError.message Mozilla OverconstrainedError.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) =>
             OverconstrainedError -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))
 
foreign import javascript unsafe "$1[\"constraint\"]"
        js_getConstraint :: OverconstrainedError -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverconstrainedError.constraint Mozilla OverconstrainedError.constraint documentation> 
getConstraint ::
              (MonadIO m, FromJSString result) =>
                OverconstrainedError -> m result
getConstraint self
  = liftIO (fromJSString <$> (js_getConstraint self))