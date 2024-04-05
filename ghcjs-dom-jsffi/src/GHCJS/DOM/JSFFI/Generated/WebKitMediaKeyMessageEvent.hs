{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.WebKitMediaKeyMessageEvent
       (js_newWebKitMediaKeyMessageEvent, newWebKitMediaKeyMessageEvent,
        js_getMessage, getMessage, js_getDestinationURL, getDestinationURL,
        WebKitMediaKeyMessageEvent(..), gTypeWebKitMediaKeyMessageEvent)
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
        "new window[\"WebKitMediaKeyMessageEvent\"]($1,\n$2)"
        js_newWebKitMediaKeyMessageEvent ::
        JSString ->
          Optional WebKitMediaKeyMessageEventInit ->
            IO WebKitMediaKeyMessageEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent Mozilla WebKitMediaKeyMessageEvent documentation> 
newWebKitMediaKeyMessageEvent ::
                              (MonadIO m, ToJSString type') =>
                                type' ->
                                  Maybe WebKitMediaKeyMessageEventInit ->
                                    m WebKitMediaKeyMessageEvent
newWebKitMediaKeyMessageEvent type' eventInitDict
  = liftIO
      (js_newWebKitMediaKeyMessageEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        WebKitMediaKeyMessageEvent -> IO Uint8Array

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.message Mozilla WebKitMediaKeyMessageEvent.message documentation> 
getMessage ::
           (MonadIO m) => WebKitMediaKeyMessageEvent -> m Uint8Array
getMessage self = liftIO (js_getMessage self)
 
foreign import javascript unsafe "$1[\"destinationURL\"]"
        js_getDestinationURL :: WebKitMediaKeyMessageEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitMediaKeyMessageEvent.destinationURL Mozilla WebKitMediaKeyMessageEvent.destinationURL documentation> 
getDestinationURL ::
                  (MonadIO m, FromJSString result) =>
                    WebKitMediaKeyMessageEvent -> m result
getDestinationURL self
  = liftIO (fromJSString <$> (js_getDestinationURL self))