{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.DOMSettableTokenList
       (js__get, _get, js_setValue, setValue, js_getValue, getValue,
        DOMSettableTokenList, castToDOMSettableTokenList,
        gTypeDOMSettableTokenList)
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
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef DOMSettableTokenList -> Word -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList._get Mozilla DOMSettableTokenList._get documentation> 
_get ::
     (MonadIO m, FromJSString result) =>
       DOMSettableTokenList -> Word -> m result
_get self index
  = liftIO
      (fromJSString <$> (js__get (unDOMSettableTokenList self) index))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef DOMSettableTokenList -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList.value Mozilla DOMSettableTokenList.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) => DOMSettableTokenList -> val -> m ()
setValue self val
  = liftIO
      (js_setValue (unDOMSettableTokenList self) (toJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef DOMSettableTokenList -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DOMSettableTokenList.value Mozilla DOMSettableTokenList.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           DOMSettableTokenList -> m result
getValue self
  = liftIO
      (fromJSString <$> (js_getValue (unDOMSettableTokenList self)))
#else
module GHCJS.DOM.DOMSettableTokenList (
  module Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
  ) where
import Graphics.UI.Gtk.WebKit.DOM.DOMSettableTokenList
#endif
