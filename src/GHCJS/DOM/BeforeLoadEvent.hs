{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.BeforeLoadEvent
       (js_getUrl, getUrl, BeforeLoadEvent, castToBeforeLoadEvent,
        gTypeBeforeLoadEvent)
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

 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        JSRef BeforeLoadEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/BeforeLoadEvent.url Mozilla BeforeLoadEvent.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => BeforeLoadEvent -> m result
getUrl self
  = liftIO (fromJSString <$> (js_getUrl (unBeforeLoadEvent self)))
#else
module GHCJS.DOM.BeforeLoadEvent (
  ) where
#endif
