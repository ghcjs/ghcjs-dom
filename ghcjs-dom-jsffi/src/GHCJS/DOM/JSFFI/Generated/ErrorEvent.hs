{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.ErrorEvent
       (js_newErrorEvent, newErrorEvent, js_getMessage, getMessage,
        js_getFilename, getFilename, js_getLineno, getLineno, js_getColno,
        getColno, js_getError, getError, ErrorEvent(..), gTypeErrorEvent)
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
        "new window[\"ErrorEvent\"]($1, $2)" js_newErrorEvent ::
        JSString -> Optional ErrorEventInit -> IO ErrorEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent Mozilla ErrorEvent documentation> 
newErrorEvent ::
              (MonadIO m, ToJSString type') =>
                type' -> Maybe ErrorEventInit -> m ErrorEvent
newErrorEvent type' eventInitDict
  = liftIO
      (js_newErrorEvent (toJSString type')
         (maybeToOptional eventInitDict))
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.message Mozilla ErrorEvent.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => ErrorEvent -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage self))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.filename Mozilla ErrorEvent.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => ErrorEvent -> m result
getFilename self = liftIO (fromJSString <$> (js_getFilename self))
 
foreign import javascript unsafe "$1[\"lineno\"]" js_getLineno ::
        ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.lineno Mozilla ErrorEvent.lineno documentation> 
getLineno :: (MonadIO m) => ErrorEvent -> m Word
getLineno self = liftIO (js_getLineno self)
 
foreign import javascript unsafe "$1[\"colno\"]" js_getColno ::
        ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.colno Mozilla ErrorEvent.colno documentation> 
getColno :: (MonadIO m) => ErrorEvent -> m Word
getColno self = liftIO (js_getColno self)
 
foreign import javascript unsafe "$1[\"error\"]" js_getError ::
        ErrorEvent -> IO JSVal

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.error Mozilla ErrorEvent.error documentation> 
getError :: (MonadIO m) => ErrorEvent -> m JSVal
getError self = liftIO (js_getError self)