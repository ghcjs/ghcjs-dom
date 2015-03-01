{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.RadioNodeList
       (js__get, _get, js_setValue, setValue, js_getValue, getValue,
        RadioNodeList, castToRadioNodeList, gTypeRadioNodeList)
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

 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef RadioNodeList -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList._get Mozilla RadioNodeList._get documentation> 
_get :: (MonadIO m) => RadioNodeList -> Word -> m (Maybe Node)
_get self index
  = liftIO ((js__get (unRadioNodeList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef RadioNodeList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => RadioNodeList -> val -> m ()
setValue self val
  = liftIO (js_setValue (unRadioNodeList self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef RadioNodeList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/RadioNodeList.value Mozilla RadioNodeList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) => RadioNodeList -> m result
getValue self
  = liftIO (fromJSString <$> (js_getValue (unRadioNodeList self)))
#else
module GHCJS.DOM.RadioNodeList (
  ) where
#endif
