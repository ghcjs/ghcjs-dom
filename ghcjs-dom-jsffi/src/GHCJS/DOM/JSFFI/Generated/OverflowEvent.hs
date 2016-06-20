{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.OverflowEvent
       (pattern HORIZONTAL, pattern VERTICAL, pattern BOTH, js_getOrient,
        getOrient, js_getHorizontalOverflow, getHorizontalOverflow,
        js_getVerticalOverflow, getVerticalOverflow, OverflowEvent,
        castToOverflowEvent, gTypeOverflowEvent)
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
pattern HORIZONTAL = 0
pattern VERTICAL = 1
pattern BOTH = 2
 
foreign import javascript unsafe "$1[\"orient\"]" js_getOrient ::
        OverflowEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.orient Mozilla OverflowEvent.orient documentation> 
getOrient :: (MonadIO m) => OverflowEvent -> m Word
getOrient self = liftIO (js_getOrient (self))
 
foreign import javascript unsafe
        "($1[\"horizontalOverflow\"] ? 1 : 0)" js_getHorizontalOverflow ::
        OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.horizontalOverflow Mozilla OverflowEvent.horizontalOverflow documentation> 
getHorizontalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getHorizontalOverflow self
  = liftIO (js_getHorizontalOverflow (self))
 
foreign import javascript unsafe
        "($1[\"verticalOverflow\"] ? 1 : 0)" js_getVerticalOverflow ::
        OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.verticalOverflow Mozilla OverflowEvent.verticalOverflow documentation> 
getVerticalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getVerticalOverflow self = liftIO (js_getVerticalOverflow (self))