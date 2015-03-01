{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.OverflowEvent
       (pattern HORIZONTAL, pattern VERTICAL, pattern BOTH, js_getOrient,
        getOrient, js_getHorizontalOverflow, getHorizontalOverflow,
        js_getVerticalOverflow, getVerticalOverflow, OverflowEvent,
        castToOverflowEvent, gTypeOverflowEvent)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern HORIZONTAL = 0
pattern VERTICAL = 1
pattern BOTH = 2
 
foreign import javascript unsafe "$1[\"orient\"]" js_getOrient ::
        JSRef OverflowEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.orient Mozilla OverflowEvent.orient documentation> 
getOrient :: (MonadIO m) => OverflowEvent -> m Word
getOrient self = liftIO (js_getOrient (unOverflowEvent self))
 
foreign import javascript unsafe
        "($1[\"horizontalOverflow\"] ? 1 : 0)" js_getHorizontalOverflow ::
        JSRef OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.horizontalOverflow Mozilla OverflowEvent.horizontalOverflow documentation> 
getHorizontalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getHorizontalOverflow self
  = liftIO (js_getHorizontalOverflow (unOverflowEvent self))
 
foreign import javascript unsafe
        "($1[\"verticalOverflow\"] ? 1 : 0)" js_getVerticalOverflow ::
        JSRef OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.verticalOverflow Mozilla OverflowEvent.verticalOverflow documentation> 
getVerticalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getVerticalOverflow self
  = liftIO (js_getVerticalOverflow (unOverflowEvent self))
#else
module GHCJS.DOM.OverflowEvent (
  ) where
#endif
