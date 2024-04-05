{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.History
       (js_back, back, js_forward, forward, js_go, go, js_pushState,
        pushState, js_replaceState, replaceState, js_getLength, getLength,
        js_setScrollRestoration, setScrollRestoration,
        js_getScrollRestoration, getScrollRestoration, js_getState,
        getState, History(..), gTypeHistory)
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
 
foreign import javascript unsafe "$1[\"back\"]()" js_back ::
        History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.back Mozilla History.back documentation> 
back :: (MonadIO m) => History -> m ()
back self = liftIO (js_back self)
 
foreign import javascript unsafe "$1[\"forward\"]()" js_forward ::
        History -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.forward Mozilla History.forward documentation> 
forward :: (MonadIO m) => History -> m ()
forward self = liftIO (js_forward self)
 
foreign import javascript unsafe "$1[\"go\"]($2)" js_go ::
        History -> Optional Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.go Mozilla History.go documentation> 
go :: (MonadIO m) => History -> Maybe Int -> m ()
go self distance = liftIO (js_go self (maybeToOptional distance))
 
foreign import javascript safe "$1[\"pushState\"]($2, $3, $4)"
        js_pushState ::
        History -> JSVal -> JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.pushState Mozilla History.pushState documentation> 
pushState ::
          (MonadIO m, ToJSVal data', ToJSString title, ToJSString url) =>
            History -> data' -> title -> Maybe url -> m ()
pushState self data' title url
  = liftIO
      (toJSVal data' >>= \ data'' -> js_pushState self data''
         (toJSString title)
         (toOptionalJSString url))
 
foreign import javascript safe "$1[\"replaceState\"]($2, $3, $4)"
        js_replaceState ::
        History -> JSVal -> JSString -> Optional JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.replaceState Mozilla History.replaceState documentation> 
replaceState ::
             (MonadIO m, ToJSVal data', ToJSString title, ToJSString url) =>
               History -> data' -> title -> Maybe url -> m ()
replaceState self data' title url
  = liftIO
      (toJSVal data' >>= \ data'' -> js_replaceState self data''
         (toJSString title)
         (toOptionalJSString url))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        History -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.length Mozilla History.length documentation> 
getLength :: (MonadIO m) => History -> m Word
getLength self = liftIO (js_getLength self)
 
foreign import javascript safe "$1[\"scrollRestoration\"] = $2;"
        js_setScrollRestoration :: History -> JSVal -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.scrollRestoration Mozilla History.scrollRestoration documentation> 
setScrollRestoration ::
                     (MonadIO m) => History -> ScrollRestoration -> m ()
setScrollRestoration self val
  = liftIO (js_setScrollRestoration self (pToJSVal val))
 
foreign import javascript safe "$1[\"scrollRestoration\"]"
        js_getScrollRestoration :: History -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.scrollRestoration Mozilla History.scrollRestoration documentation> 
getScrollRestoration ::
                     (MonadIO m) => History -> m ScrollRestoration
getScrollRestoration self
  = liftIO ((js_getScrollRestoration self) >>= fromJSValUnchecked)
 
foreign import javascript unsafe "$1[\"state\"]" js_getState ::
        History -> IO SerializedScriptValue

-- | <https://developer.mozilla.org/en-US/docs/Web/API/History.state Mozilla History.state documentation> 
getState :: (MonadIO m) => History -> m SerializedScriptValue
getState self = liftIO (js_getState self)