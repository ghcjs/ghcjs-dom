{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebKitCSSTransformValue
       (ghcjs_dom_webkit_css_transform_value_get,
        webKitCSSTransformValue_get, cCSS_TRANSLATE, cCSS_TRANSLATEX,
        cCSS_TRANSLATEY, cCSS_ROTATE, cCSS_SCALE, cCSS_SCALEX, cCSS_SCALEY,
        cCSS_SKEW, cCSS_SKEWX, cCSS_SKEWY, cCSS_MATRIX, cCSS_TRANSLATEZ,
        cCSS_TRANSLATE3D, cCSS_ROTATEX, cCSS_ROTATEY, cCSS_ROTATEZ,
        cCSS_ROTATE3D, cCSS_SCALEZ, cCSS_SCALE3D, cCSS_PERSPECTIVE,
        cCSS_MATRIX3D,
        ghcjs_dom_webkit_css_transform_value_get_operation_type,
        webKitCSSTransformValueGetOperationType, WebKitCSSTransformValue,
        IsWebKitCSSTransformValue, castToWebKitCSSTransformValue,
        gTypeWebKitCSSTransformValue, toWebKitCSSTransformValue)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"_get\"]($2)"
        ghcjs_dom_webkit_css_transform_value_get ::
        JSRef WebKitCSSTransformValue -> Word -> IO (JSRef CSSValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue._get Mozilla WebKitCSSTransformValue._get documentation> 
webKitCSSTransformValue_get ::
                            (IsWebKitCSSTransformValue self) =>
                              self -> Word -> IO (Maybe CSSValue)
webKitCSSTransformValue_get self index
  = (ghcjs_dom_webkit_css_transform_value_get
       (unWebKitCSSTransformValue (toWebKitCSSTransformValue self))
       index)
      >>= fromJSRef
cCSS_TRANSLATE = 1
cCSS_TRANSLATEX = 2
cCSS_TRANSLATEY = 3
cCSS_ROTATE = 4
cCSS_SCALE = 5
cCSS_SCALEX = 6
cCSS_SCALEY = 7
cCSS_SKEW = 8
cCSS_SKEWX = 9
cCSS_SKEWY = 10
cCSS_MATRIX = 11
cCSS_TRANSLATEZ = 12
cCSS_TRANSLATE3D = 13
cCSS_ROTATEX = 14
cCSS_ROTATEY = 15
cCSS_ROTATEZ = 16
cCSS_ROTATE3D = 17
cCSS_SCALEZ = 18
cCSS_SCALE3D = 19
cCSS_PERSPECTIVE = 20
cCSS_MATRIX3D = 21
 
foreign import javascript unsafe "$1[\"operationType\"]"
        ghcjs_dom_webkit_css_transform_value_get_operation_type ::
        JSRef WebKitCSSTransformValue -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebKitCSSTransformValue.operationType Mozilla WebKitCSSTransformValue.operationType documentation> 
webKitCSSTransformValueGetOperationType ::
                                        (IsWebKitCSSTransformValue self) => self -> IO Word
webKitCSSTransformValueGetOperationType self
  = ghcjs_dom_webkit_css_transform_value_get_operation_type
      (unWebKitCSSTransformValue (toWebKitCSSTransformValue self))
#else
module GHCJS.DOM.WebKitCSSTransformValue (
  ) where
#endif
