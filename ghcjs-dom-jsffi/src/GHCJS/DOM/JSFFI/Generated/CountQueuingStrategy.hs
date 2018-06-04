{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.CountQueuingStrategy
       (js_newCountQueuingStrategy, newCountQueuingStrategy, js_size,
        size, size_, CountQueuingStrategy(..), gTypeCountQueuingStrategy)
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
        "new window[\"CountQueuingStrategy\"]()" js_newCountQueuingStrategy
        :: IO CountQueuingStrategy

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy Mozilla CountQueuingStrategy documentation> 
newCountQueuingStrategy :: (MonadIO m) => m CountQueuingStrategy
newCountQueuingStrategy = liftIO (js_newCountQueuingStrategy)
 
foreign import javascript unsafe "$1[\"size\"]()" js_size ::
        CountQueuingStrategy -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy.size Mozilla CountQueuingStrategy.size documentation> 
size :: (MonadIO m) => CountQueuingStrategy -> m Double
size self = liftIO (js_size self)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CountQueuingStrategy.size Mozilla CountQueuingStrategy.size documentation> 
size_ :: (MonadIO m) => CountQueuingStrategy -> m ()
size_ self = liftIO (void (js_size self))