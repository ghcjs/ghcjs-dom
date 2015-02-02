{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHRElement
       (ghcjs_dom_htmlhr_element_set_align, htmlhrElementSetAlign,
        ghcjs_dom_htmlhr_element_get_align, htmlhrElementGetAlign,
        ghcjs_dom_htmlhr_element_set_no_shade, htmlhrElementSetNoShade,
        ghcjs_dom_htmlhr_element_get_no_shade, htmlhrElementGetNoShade,
        ghcjs_dom_htmlhr_element_set_size, htmlhrElementSetSize,
        ghcjs_dom_htmlhr_element_get_size, htmlhrElementGetSize,
        ghcjs_dom_htmlhr_element_set_width, htmlhrElementSetWidth,
        ghcjs_dom_htmlhr_element_get_width, htmlhrElementGetWidth,
        HTMLHRElement, IsHTMLHRElement, castToHTMLHRElement,
        gTypeHTMLHRElement, toHTMLHRElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_htmlhr_element_set_align ::
        JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
htmlhrElementSetAlign ::
                      (IsHTMLHRElement self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetAlign self val
  = ghcjs_dom_htmlhr_element_set_align
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_htmlhr_element_get_align ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.align Mozilla HTMLHRElement.align documentation> 
htmlhrElementGetAlign ::
                      (IsHTMLHRElement self, FromJSString result) => self -> IO result
htmlhrElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_htmlhr_element_get_align
         (unHTMLHRElement (toHTMLHRElement self)))
 
foreign import javascript unsafe "$1[\"noShade\"] = $2;"
        ghcjs_dom_htmlhr_element_set_no_shade ::
        JSRef HTMLHRElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
htmlhrElementSetNoShade ::
                        (IsHTMLHRElement self) => self -> Bool -> IO ()
htmlhrElementSetNoShade self val
  = ghcjs_dom_htmlhr_element_set_no_shade
      (unHTMLHRElement (toHTMLHRElement self))
      val
 
foreign import javascript unsafe "($1[\"noShade\"] ? 1 : 0)"
        ghcjs_dom_htmlhr_element_get_no_shade ::
        JSRef HTMLHRElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.noShade Mozilla HTMLHRElement.noShade documentation> 
htmlhrElementGetNoShade ::
                        (IsHTMLHRElement self) => self -> IO Bool
htmlhrElementGetNoShade self
  = ghcjs_dom_htmlhr_element_get_no_shade
      (unHTMLHRElement (toHTMLHRElement self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;"
        ghcjs_dom_htmlhr_element_set_size ::
        JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
htmlhrElementSetSize ::
                     (IsHTMLHRElement self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetSize self val
  = ghcjs_dom_htmlhr_element_set_size
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"size\"]"
        ghcjs_dom_htmlhr_element_get_size ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.size Mozilla HTMLHRElement.size documentation> 
htmlhrElementGetSize ::
                     (IsHTMLHRElement self, FromJSString result) => self -> IO result
htmlhrElementGetSize self
  = fromJSString <$>
      (ghcjs_dom_htmlhr_element_get_size
         (unHTMLHRElement (toHTMLHRElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;"
        ghcjs_dom_htmlhr_element_set_width ::
        JSRef HTMLHRElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
htmlhrElementSetWidth ::
                      (IsHTMLHRElement self, ToJSString val) => self -> val -> IO ()
htmlhrElementSetWidth self val
  = ghcjs_dom_htmlhr_element_set_width
      (unHTMLHRElement (toHTMLHRElement self))
      (toJSString val)
 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_htmlhr_element_get_width ::
        JSRef HTMLHRElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHRElement.width Mozilla HTMLHRElement.width documentation> 
htmlhrElementGetWidth ::
                      (IsHTMLHRElement self, FromJSString result) => self -> IO result
htmlhrElementGetWidth self
  = fromJSString <$>
      (ghcjs_dom_htmlhr_element_get_width
         (unHTMLHRElement (toHTMLHRElement self)))
#else
module GHCJS.DOM.HTMLHRElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHRElement
#endif
