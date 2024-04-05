{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.FormData
       (js_newFormData, newFormData, js_append, append, js_appendBlob,
        appendBlob, FormData(..), gTypeFormData)
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
 
foreign import javascript unsafe "new window[\"FormData\"]($1)"
        js_newFormData :: Optional HTMLFormElement -> IO FormData

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newFormData :: (MonadIO m) => Maybe HTMLFormElement -> m FormData
newFormData form = liftIO (js_newFormData (maybeToOptional form))
 
foreign import javascript unsafe "$1[\"append\"]($2, $3)" js_append
        :: FormData -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
append ::
       (MonadIO m, ToJSString name, ToJSString value) =>
         FormData -> name -> value -> m ()
append self name value
  = liftIO (js_append self (toJSString name) (toJSString value))
 
foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        js_appendBlob ::
        FormData -> JSString -> Blob -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
appendBlob ::
           (MonadIO m, ToJSString name, IsBlob value, ToJSString filename) =>
             FormData -> name -> value -> Maybe filename -> m ()
appendBlob self name value filename
  = liftIO
      (js_appendBlob self (toJSString name) (toBlob value)
         (toOptionalJSString filename))