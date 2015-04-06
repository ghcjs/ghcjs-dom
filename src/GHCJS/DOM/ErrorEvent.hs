{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ErrorEvent
       (js_getMessage, getMessage, js_getFilename, getFilename,
        js_getLineno, getLineno, js_getColno, getColno, ErrorEvent,
        castToErrorEvent, gTypeErrorEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"message\"]" js_getMessage ::
        JSRef ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.message Mozilla ErrorEvent.message documentation> 
getMessage ::
           (MonadIO m, FromJSString result) => ErrorEvent -> m result
getMessage self
  = liftIO (fromJSString <$> (js_getMessage (unErrorEvent self)))
 
foreign import javascript unsafe "$1[\"filename\"]" js_getFilename
        :: JSRef ErrorEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.filename Mozilla ErrorEvent.filename documentation> 
getFilename ::
            (MonadIO m, FromJSString result) => ErrorEvent -> m result
getFilename self
  = liftIO (fromJSString <$> (js_getFilename (unErrorEvent self)))
 
foreign import javascript unsafe "$1[\"lineno\"]" js_getLineno ::
        JSRef ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.lineno Mozilla ErrorEvent.lineno documentation> 
getLineno :: (MonadIO m) => ErrorEvent -> m Word
getLineno self = liftIO (js_getLineno (unErrorEvent self))
 
foreign import javascript unsafe "$1[\"colno\"]" js_getColno ::
        JSRef ErrorEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ErrorEvent.colno Mozilla ErrorEvent.colno documentation> 
getColno :: (MonadIO m) => ErrorEvent -> m Word
getColno self = liftIO (js_getColno (unErrorEvent self))
#else
module GHCJS.DOM.ErrorEvent (
  ) where
#endif
