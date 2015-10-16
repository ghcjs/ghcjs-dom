{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.CloseEvent
       (js_getWasClean, getWasClean, js_getCode, getCode, js_getReason,
        getReason, CloseEvent, castToCloseEvent, gTypeCloseEvent)
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
 
foreign import javascript unsafe "($1[\"wasClean\"] ? 1 : 0)"
        js_getWasClean :: CloseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.wasClean Mozilla CloseEvent.wasClean documentation> 
getWasClean :: (MonadIO m) => CloseEvent -> m Bool
getWasClean self = liftIO (js_getWasClean (self))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        CloseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.code Mozilla CloseEvent.code documentation> 
getCode :: (MonadIO m) => CloseEvent -> m Word
getCode self = liftIO (js_getCode (self))
 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        CloseEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.reason Mozilla CloseEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) => CloseEvent -> m result
getReason self = liftIO (fromJSString <$> (js_getReason (self)))