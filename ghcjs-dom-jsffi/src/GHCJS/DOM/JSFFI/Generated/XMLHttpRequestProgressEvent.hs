{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.XMLHttpRequestProgressEvent
       (js_getPosition, getPosition, js_getTotalSize, getTotalSize,
        XMLHttpRequestProgressEvent(..), gTypeXMLHttpRequestProgressEvent)
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
 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.position Mozilla XMLHttpRequestProgressEvent.position documentation> 
getPosition ::
            (MonadIO m) => XMLHttpRequestProgressEvent -> m Word64
getPosition self = liftIO (round <$> (js_getPosition self))
 
foreign import javascript unsafe "$1[\"totalSize\"]"
        js_getTotalSize :: XMLHttpRequestProgressEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestProgressEvent.totalSize Mozilla XMLHttpRequestProgressEvent.totalSize documentation> 
getTotalSize ::
             (MonadIO m) => XMLHttpRequestProgressEvent -> m Word64
getTotalSize self = liftIO (round <$> (js_getTotalSize self))