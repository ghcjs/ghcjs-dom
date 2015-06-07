{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.TextEvent
       (js_initTextEvent, initTextEvent, js_getData, getData, TextEvent,
        castToTextEvent, gTypeTextEvent)
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
 
foreign import javascript unsafe
        "$1[\"initTextEvent\"]($2, $3, $4,\n$5, $6)" js_initTextEvent ::
        JSRef TextEvent ->
          JSString -> Bool -> Bool -> JSRef Window -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.initTextEvent Mozilla TextEvent.initTextEvent documentation> 
initTextEvent ::
              (MonadIO m, ToJSString typeArg, ToJSString dataArg) =>
                TextEvent ->
                  typeArg -> Bool -> Bool -> Maybe Window -> dataArg -> m ()
initTextEvent self typeArg canBubbleArg cancelableArg viewArg
  dataArg
  = liftIO
      (js_initTextEvent (unTextEvent self) (toJSString typeArg)
         canBubbleArg
         cancelableArg
         (maybe jsNull pToJSRef viewArg)
         (toJSString dataArg))
 
foreign import javascript unsafe "$1[\"data\"]" js_getData ::
        JSRef TextEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextEvent.data Mozilla TextEvent.data documentation> 
getData ::
        (MonadIO m, FromJSString result) => TextEvent -> m result
getData self
  = liftIO (fromJSString <$> (js_getData (unTextEvent self)))