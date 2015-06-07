{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.EventListener
       (js_handleEvent, handleEvent, EventListener, castToEventListener,
        gTypeEventListener)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"handleEvent\"]($2)"
        js_handleEvent :: JSRef EventListener -> JSRef Event -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventListener.handleEvent Mozilla EventListener.handleEvent documentation> 
handleEvent ::
            (MonadIO m, IsEvent evt) => EventListener -> Maybe evt -> m ()
handleEvent self evt
  = liftIO
      (js_handleEvent (unEventListener self)
         (maybe jsNull (unEvent . toEvent) evt))