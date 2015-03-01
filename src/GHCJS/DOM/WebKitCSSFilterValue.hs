{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSFilterValue
       (js__get, _get, pattern CSS_FILTER_REFERENCE,
        pattern CSS_FILTER_GRAYSCALE, pattern CSS_FILTER_SEPIA,
        pattern CSS_FILTER_SATURATE, pattern CSS_FILTER_HUE_ROTATE,
        pattern CSS_FILTER_INVERT, pattern CSS_FILTER_OPACITY,
        pattern CSS_FILTER_BRIGHTNESS, pattern CSS_FILTER_CONTRAST,
        pattern CSS_FILTER_BLUR, pattern CSS_FILTER_DROP_SHADOW,
        js_getOperationType, getOperationType, WebKitCSSFilterValue,
        castToWebKitCSSFilterValue, gTypeWebKitCSSFilterValue)
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
        JSRef WebKitCSSFilterValue -> Word -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
_get ::
     (MonadIO m) => WebKitCSSFilterValue -> Word -> m (Maybe CSSValue)
_get self index
  = liftIO
      ((js__get (unWebKitCSSFilterValue self) index) >>= fromJSRef)
pattern CSS_FILTER_REFERENCE = 1
pattern CSS_FILTER_GRAYSCALE = 2
pattern CSS_FILTER_SEPIA = 3
pattern CSS_FILTER_SATURATE = 4
pattern CSS_FILTER_HUE_ROTATE = 5
pattern CSS_FILTER_INVERT = 6
pattern CSS_FILTER_OPACITY = 7
pattern CSS_FILTER_BRIGHTNESS = 8
pattern CSS_FILTER_CONTRAST = 9
pattern CSS_FILTER_BLUR = 10
pattern CSS_FILTER_DROP_SHADOW = 11
 
foreign import javascript unsafe "$1[\"operationType\"]"
        js_getOperationType :: JSRef WebKitCSSFilterValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue.operationType Mozilla WebKitCSSFilterValue.operationType documentation> 
getOperationType :: (MonadIO m) => WebKitCSSFilterValue -> m Word
getOperationType self
  = liftIO (js_getOperationType (unWebKitCSSFilterValue self))
#else
module GHCJS.DOM.WebKitCSSFilterValue (
  ) where
#endif
