{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.ProcessingInstruction
       (js_getTarget, getTarget, js_getSheet, getSheet,
        ProcessingInstruction, castToProcessingInstruction,
        gTypeProcessingInstruction)
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

 
foreign import javascript unsafe "$1[\"target\"]" js_getTarget ::
        JSRef ProcessingInstruction -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.target Mozilla ProcessingInstruction.target documentation> 
getTarget ::
          (MonadIO m, FromJSString result) =>
            ProcessingInstruction -> m result
getTarget self
  = liftIO
      (fromJSString <$> (js_getTarget (unProcessingInstruction self)))
 
foreign import javascript unsafe "$1[\"sheet\"]" js_getSheet ::
        JSRef ProcessingInstruction -> IO (JSRef StyleSheet)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/ProcessingInstruction.sheet Mozilla ProcessingInstruction.sheet documentation> 
getSheet ::
         (MonadIO m) => ProcessingInstruction -> m (Maybe StyleSheet)
getSheet self
  = liftIO
      ((js_getSheet (unProcessingInstruction self)) >>= fromJSRef)
#else
module GHCJS.DOM.ProcessingInstruction (
  module Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
  ) where
import Graphics.UI.Gtk.WebKit.DOM.ProcessingInstruction
#endif
