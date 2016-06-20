{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.ErrorEvent
       (js_getMessage, getMessage, js_getFilename, getFilename,
        js_getLineno, getLineno, js_getColno, getColno, ErrorEvent,
        castToErrorEvent, gTypeErrorEvent)
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
 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.message Mozilla ErrorEvent.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => ErrorEvent -> m result
getMessage self = liftIO (fromJSString <$> (js_getMessage (self)))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.filename Mozilla ErrorEvent.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => ErrorEvent -> m result
getFilename self
  = liftIO (fromJSString <$> (js_getFilename (self)))
 
foreign import javascript unsafe "$1[\"lineno\"]" js_getLineno ::
        ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.lineno Mozilla ErrorEvent.lineno documentation> 
getLineno :: (MonadIO m) => ErrorEvent -> m Word
getLineno self = liftIO (js_getLineno (self))
 
foreign import javascript unsafe "$1[\"colno\"]" js_getColno ::
        ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.colno Mozilla ErrorEvent.colno documentation> 
getColno :: (MonadIO m) => ErrorEvent -> m Word
getColno self = liftIO (js_getColno (self))