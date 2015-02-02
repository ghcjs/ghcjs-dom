{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Rect
       (ghcjs_dom_rect_get_top, rectGetTop, ghcjs_dom_rect_get_right,
        rectGetRight, ghcjs_dom_rect_get_bottom, rectGetBottom,
        ghcjs_dom_rect_get_left, rectGetLeft, Rect, IsRect, castToRect,
        gTypeRect, toRect)
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

 
foreign import javascript unsafe "$1[\"top\"]"
        ghcjs_dom_rect_get_top ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.top Mozilla Rect.top documentation> 
rectGetTop :: (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetTop self
  = (ghcjs_dom_rect_get_top (unRect (toRect self))) >>= fromJSRef
 
foreign import javascript unsafe "$1[\"right\"]"
        ghcjs_dom_rect_get_right ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.right Mozilla Rect.right documentation> 
rectGetRight ::
             (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetRight self
  = (ghcjs_dom_rect_get_right (unRect (toRect self))) >>= fromJSRef
 
foreign import javascript unsafe "$1[\"bottom\"]"
        ghcjs_dom_rect_get_bottom ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.bottom Mozilla Rect.bottom documentation> 
rectGetBottom ::
              (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetBottom self
  = (ghcjs_dom_rect_get_bottom (unRect (toRect self))) >>= fromJSRef
 
foreign import javascript unsafe "$1[\"left\"]"
        ghcjs_dom_rect_get_left ::
        JSRef Rect -> IO (JSRef CSSPrimitiveValue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Rect.left Mozilla Rect.left documentation> 
rectGetLeft ::
            (IsRect self) => self -> IO (Maybe CSSPrimitiveValue)
rectGetLeft self
  = (ghcjs_dom_rect_get_left (unRect (toRect self))) >>= fromJSRef
#else
module GHCJS.DOM.Rect (
  ) where
#endif
