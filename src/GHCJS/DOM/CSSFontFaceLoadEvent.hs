{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSFontFaceLoadEvent
       (ghcjs_dom_css_font_face_load_event_get_fontface,
        cssFontFaceLoadEventGetFontface,
        ghcjs_dom_css_font_face_load_event_get_error,
        cssFontFaceLoadEventGetError, CSSFontFaceLoadEvent,
        IsCSSFontFaceLoadEvent, castToCSSFontFaceLoadEvent,
        gTypeCSSFontFaceLoadEvent, toCSSFontFaceLoadEvent)
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

 
foreign import javascript unsafe "$1[\"fontface\"]"
        ghcjs_dom_css_font_face_load_event_get_fontface ::
        JSRef CSSFontFaceLoadEvent -> IO (JSRef CSSFontFaceRule)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.fontface Mozilla CSSFontFaceLoadEvent.fontface documentation> 
cssFontFaceLoadEventGetFontface ::
                                (IsCSSFontFaceLoadEvent self) => self -> IO (Maybe CSSFontFaceRule)
cssFontFaceLoadEventGetFontface self
  = (ghcjs_dom_css_font_face_load_event_get_fontface
       (unCSSFontFaceLoadEvent (toCSSFontFaceLoadEvent self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"error\"]"
        ghcjs_dom_css_font_face_load_event_get_error ::
        JSRef CSSFontFaceLoadEvent -> IO (JSRef DOMError)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSFontFaceLoadEvent.error Mozilla CSSFontFaceLoadEvent.error documentation> 
cssFontFaceLoadEventGetError ::
                             (IsCSSFontFaceLoadEvent self) => self -> IO (Maybe DOMError)
cssFontFaceLoadEventGetError self
  = (ghcjs_dom_css_font_face_load_event_get_error
       (unCSSFontFaceLoadEvent (toCSSFontFaceLoadEvent self)))
      >>= fromJSRef
#else
module GHCJS.DOM.CSSFontFaceLoadEvent (
  ) where
#endif
