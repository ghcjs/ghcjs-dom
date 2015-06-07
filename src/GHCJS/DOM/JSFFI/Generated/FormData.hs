{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FormData
       (js_newFormData, newFormData, js_append, append, FormData,
        castToFormData, gTypeFormData)
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
 
foreign import javascript unsafe "new window[\"FormData\"]($1)"
        js_newFormData :: JSRef HTMLFormElement -> IO (JSRef FormData)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData Mozilla FormData documentation> 
newFormData :: (MonadIO m) => Maybe HTMLFormElement -> m FormData
newFormData form
  = liftIO
      (js_newFormData (maybe jsNull pToJSRef form) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"append\"]($2, $3, $4)"
        js_append ::
        JSRef FormData -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FormData.append Mozilla FormData.append documentation> 
append ::
       (MonadIO m, ToJSString name, ToJSString value,
        ToJSString filename) =>
         FormData -> name -> value -> filename -> m ()
append self name value filename
  = liftIO
      (js_append (unFormData self) (toJSString name) (toJSString value)
         (toJSString filename))