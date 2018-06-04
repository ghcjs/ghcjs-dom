{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.TouchList
       (js_item, item, item_, js_getLength, getLength, TouchList(..),
        gTypeTouchList)
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
 
foreign import javascript unsafe "$1[$2]" js_item ::
        TouchList -> Word -> IO Touch

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.item Mozilla TouchList.item documentation> 
item :: (MonadIO m) => TouchList -> Word -> m Touch
item self index = liftIO (js_item self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.item Mozilla TouchList.item documentation> 
item_ :: (MonadIO m) => TouchList -> Word -> m ()
item_ self index = liftIO (void (js_item self index))
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        TouchList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TouchList.length Mozilla TouchList.length documentation> 
getLength :: (MonadIO m) => TouchList -> m Word
getLength self = liftIO (js_getLength self)