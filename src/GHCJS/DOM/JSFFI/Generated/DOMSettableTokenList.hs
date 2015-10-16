{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.DOMSettableTokenList
       (js__get, _get, js_setValue, setValue, js_getValue, getValue,
        DOMSettableTokenList, castToDOMSettableTokenList,
        gTypeDOMSettableTokenList)
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
 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        DOMSettableTokenList -> Word -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList._get Mozilla DOMSettableTokenList._get documentation> 
_get ::
     (MonadIO m, FromJSString result) =>
       DOMSettableTokenList -> Word -> m (Maybe result)
_get self index
  = liftIO (fromMaybeJSString <$> (js__get (self) index))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: DOMSettableTokenList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList.value Mozilla DOMSettableTokenList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => DOMSettableTokenList -> val -> m ()
setValue self val = liftIO (js_setValue (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        DOMSettableTokenList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList.value Mozilla DOMSettableTokenList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           DOMSettableTokenList -> m result
getValue self = liftIO (fromJSString <$> (js_getValue (self)))