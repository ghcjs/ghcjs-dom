{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.Body
       (js_arrayBuffer, arrayBuffer, arrayBuffer_, js_blob, blob, blob_,
        js_json, json, json_, js_text, text, text_, js_getBodyUsed,
        getBodyUsed, Body(..), gTypeBody, IsBody, toBody)
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
 
foreign import javascript interruptible
        "$1[\"arrayBuffer\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_arrayBuffer :: Body -> IO (JSVal, ArrayBuffer)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.arrayBuffer Mozilla Body.arrayBuffer documentation> 
arrayBuffer :: (MonadIO m, IsBody self) => self -> m ArrayBuffer
arrayBuffer self
  = liftIO ((js_arrayBuffer (toBody self)) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.arrayBuffer Mozilla Body.arrayBuffer documentation> 
arrayBuffer_ :: (MonadIO m, IsBody self) => self -> m ()
arrayBuffer_ self = liftIO (void (js_arrayBuffer (toBody self)))
 
foreign import javascript interruptible
        "$1[\"blob\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_blob :: Body -> IO (JSVal, Blob)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.blob Mozilla Body.blob documentation> 
blob :: (MonadIO m, IsBody self) => self -> m Blob
blob self = liftIO ((js_blob (toBody self)) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.blob Mozilla Body.blob documentation> 
blob_ :: (MonadIO m, IsBody self) => self -> m ()
blob_ self = liftIO (void (js_blob (toBody self)))
 
foreign import javascript interruptible
        "$1[\"json\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_json :: Body -> IO (JSVal, JSVal)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.json Mozilla Body.json documentation> 
json :: (MonadIO m, IsBody self) => self -> m JSVal
json self = liftIO ((js_json (toBody self)) >>= checkPromiseResult)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.json Mozilla Body.json documentation> 
json_ :: (MonadIO m, IsBody self) => self -> m ()
json_ self = liftIO (void (js_json (toBody self)))
 
foreign import javascript interruptible
        "$1[\"text\"]().then(function(s) { $c(null, s);}, function(e) { $c(e, null);});"
        js_text :: Body -> IO (JSVal, JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.text Mozilla Body.text documentation> 
text ::
     (MonadIO m, IsBody self, FromJSString result) => self -> m result
text self
  = liftIO
      (fromJSString <$> ((js_text (toBody self)) >>= checkPromiseResult))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.text Mozilla Body.text documentation> 
text_ :: (MonadIO m, IsBody self) => self -> m ()
text_ self = liftIO (void (js_text (toBody self)))
 
foreign import javascript unsafe "($1[\"bodyUsed\"] ? 1 : 0)"
        js_getBodyUsed :: Body -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Body.bodyUsed Mozilla Body.bodyUsed documentation> 
getBodyUsed :: (MonadIO m, IsBody self) => self -> m Bool
getBodyUsed self = liftIO (js_getBodyUsed (toBody self))