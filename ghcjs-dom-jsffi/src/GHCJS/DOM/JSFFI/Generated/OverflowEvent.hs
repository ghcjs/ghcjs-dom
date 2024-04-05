{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.OverflowEvent
       (js_newOverflowEvent, newOverflowEvent, pattern HORIZONTAL,
        pattern VERTICAL, pattern BOTH, js_getOrient, getOrient,
        js_getHorizontalOverflow, getHorizontalOverflow,
        js_getVerticalOverflow, getVerticalOverflow, OverflowEvent(..),
        gTypeOverflowEvent)
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
        "new window[\"OverflowEvent\"]($1,\n$2)" js_newOverflowEvent ::
        JSString -> Optional OverflowEventInit -> IO OverflowEvent

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent Mozilla OverflowEvent documentation> 
newOverflowEvent ::
                 (MonadIO m, ToJSString type') =>
                   type' -> Maybe OverflowEventInit -> m OverflowEvent
newOverflowEvent type' eventInitDict
  = liftIO
      (js_newOverflowEvent (toJSString type')
         (maybeToOptional eventInitDict))
pattern HORIZONTAL = 0
pattern VERTICAL = 1
pattern BOTH = 2
 
foreign import javascript unsafe "$1[\"orient\"]" js_getOrient ::
        OverflowEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.orient Mozilla OverflowEvent.orient documentation> 
getOrient :: (MonadIO m) => OverflowEvent -> m Word
getOrient self = liftIO (js_getOrient self)
 
foreign import javascript unsafe
        "($1[\"horizontalOverflow\"] ? 1 : 0)" js_getHorizontalOverflow ::
        OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.horizontalOverflow Mozilla OverflowEvent.horizontalOverflow documentation> 
getHorizontalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getHorizontalOverflow self = liftIO (js_getHorizontalOverflow self)
 
foreign import javascript unsafe
        "($1[\"verticalOverflow\"] ? 1 : 0)" js_getVerticalOverflow ::
        OverflowEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/OverflowEvent.verticalOverflow Mozilla OverflowEvent.verticalOverflow documentation> 
getVerticalOverflow :: (MonadIO m) => OverflowEvent -> m Bool
getVerticalOverflow self = liftIO (js_getVerticalOverflow self)