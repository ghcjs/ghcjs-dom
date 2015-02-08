{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSFilterValue
       (ghcjs_dom_webkit_css_filter_value_get, webKitCSSFilterValue_get,
        cCSS_FILTER_REFERENCE, cCSS_FILTER_GRAYSCALE, cCSS_FILTER_SEPIA,
        cCSS_FILTER_SATURATE, cCSS_FILTER_HUE_ROTATE, cCSS_FILTER_INVERT,
        cCSS_FILTER_OPACITY, cCSS_FILTER_BRIGHTNESS, cCSS_FILTER_CONTRAST,
        cCSS_FILTER_BLUR, cCSS_FILTER_DROP_SHADOW,
        ghcjs_dom_webkit_css_filter_value_get_operation_type,
        webKitCSSFilterValueGetOperationType, WebKitCSSFilterValue,
        IsWebKitCSSFilterValue, castToWebKitCSSFilterValue,
        gTypeWebKitCSSFilterValue, toWebKitCSSFilterValue)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_webkit_css_filter_value_get ::
        JSRef WebKitCSSFilterValue -> Word -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue._get Mozilla WebKitCSSFilterValue._get documentation> 
webKitCSSFilterValue_get ::
                         (MonadIO m, IsWebKitCSSFilterValue self) =>
                           self -> Word -> m (Maybe CSSValue)
webKitCSSFilterValue_get self index
  = liftIO
      ((ghcjs_dom_webkit_css_filter_value_get
          (unWebKitCSSFilterValue (toWebKitCSSFilterValue self))
          index)
         >>= fromJSRef)
cCSS_FILTER_REFERENCE = 1
cCSS_FILTER_GRAYSCALE = 2
cCSS_FILTER_SEPIA = 3
cCSS_FILTER_SATURATE = 4
cCSS_FILTER_HUE_ROTATE = 5
cCSS_FILTER_INVERT = 6
cCSS_FILTER_OPACITY = 7
cCSS_FILTER_BRIGHTNESS = 8
cCSS_FILTER_CONTRAST = 9
cCSS_FILTER_BLUR = 10
cCSS_FILTER_DROP_SHADOW = 11
 
foreign import javascript unsafe "$1[\"operationType\"]"
        ghcjs_dom_webkit_css_filter_value_get_operation_type ::
        JSRef WebKitCSSFilterValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSFilterValue.operationType Mozilla WebKitCSSFilterValue.operationType documentation> 
webKitCSSFilterValueGetOperationType ::
                                     (MonadIO m, IsWebKitCSSFilterValue self) => self -> m Word
webKitCSSFilterValueGetOperationType self
  = liftIO
      (ghcjs_dom_webkit_css_filter_value_get_operation_type
         (unWebKitCSSFilterValue (toWebKitCSSFilterValue self)))
#else
module GHCJS.DOM.WebKitCSSFilterValue (
  ) where
#endif
