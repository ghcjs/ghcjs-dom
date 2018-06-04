{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.RadioNodeList
       (js_get, get, get_, js_setValue, setValue, js_getValue, getValue,
        RadioNodeList(..), gTypeRadioNodeList)
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
 
foreign import javascript unsafe "$1[$2]" js_get ::
        RadioNodeList -> Word -> IO HTMLElement

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.get Mozilla RadioNodeList.get documentation> 
get :: (MonadIO m) => RadioNodeList -> Word -> m HTMLElement
get self index = liftIO (js_get self index)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.get Mozilla RadioNodeList.get documentation> 
get_ :: (MonadIO m) => RadioNodeList -> Word -> m ()
get_ self index = liftIO (void (js_get self index))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: RadioNodeList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val = liftIO (js_setValue self (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        RadioNodeList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => RadioNodeList -> m result
getValue self = liftIO (fromJSString <$> (js_getValue self))