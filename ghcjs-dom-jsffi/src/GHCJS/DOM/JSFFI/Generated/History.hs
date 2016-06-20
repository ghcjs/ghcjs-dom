{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.History
       (js_back, back, js_forward, forward, js_go, go, js_pushState,
        pushState, js_replaceState, replaceState, js_getLength, getLength,
        js_getState, getState, History, castToHistory, gTypeHistory)
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
 
foreign import javascript unsafe "$1[\"back\"]()" js_back ::
        History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
back :: (MonadIO m) => History -> m ()
back self = liftIO (js_back (self))
 
foreign import javascript unsafe "$1[\"forward\"]()" js_forward ::
        History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
forward :: (MonadIO m) => History -> m ()
forward self = liftIO (js_forward (self))
 
foreign import javascript unsafe "$1[\"go\"]($2)" js_go ::
        History -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
go :: (MonadIO m) => History -> Int -> m ()
go self distance = liftIO (js_go (self) distance)
 
foreign import javascript unsafe "$1[\"pushState\"]($2, $3, $4)"
        js_pushState :: History -> JSVal -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
pushState ::
          (MonadIO m, ToJSString title, ToJSString url) =>
            History -> JSVal -> title -> url -> m ()
pushState self data' title url
  = liftIO
      (js_pushState (self) data' (toJSString title) (toJSString url))
 
foreign import javascript unsafe "$1[\"replaceState\"]($2, $3, $4)"
        js_replaceState ::
        History -> JSVal -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
replaceState ::
             (MonadIO m, ToJSString title, ToJSString url) =>
               History -> JSVal -> title -> url -> m ()
replaceState self data' title url
  = liftIO
      (js_replaceState (self) data' (toJSString title) (toJSString url))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        History -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
getLength :: (MonadIO m) => History -> m Word
getLength self = liftIO (js_getLength (self))
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        History -> IO (Nullable SerializedScriptValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
getState ::
         (MonadIO m) => History -> m (Maybe SerializedScriptValue)
getState self = liftIO (nullableToMaybe <$> (js_getState (self)))