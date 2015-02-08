{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGStyleElement
       (ghcjs_dom_svg_style_element_set_disabled,
        svgStyleElementSetDisabled,
        ghcjs_dom_svg_style_element_get_disabled,
        svgStyleElementGetDisabled, ghcjs_dom_svg_style_element_set_media,
        svgStyleElementSetMedia, ghcjs_dom_svg_style_element_get_media,
        svgStyleElementGetMedia, ghcjs_dom_svg_style_element_set_title,
        svgStyleElementSetTitle, ghcjs_dom_svg_style_element_get_title,
        svgStyleElementGetTitle, SVGStyleElement, IsSVGStyleElement,
        castToSVGStyleElement, gTypeSVGStyleElement, toSVGStyleElement)
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

 
foreign import javascript unsafe "$1[\"disabled\"] = $2;"
        ghcjs_dom_svg_style_element_set_disabled ::
        JSRef SVGStyleElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
svgStyleElementSetDisabled ::
                           (MonadIO m, IsSVGStyleElement self) => self -> Bool -> m ()
svgStyleElementSetDisabled self val
  = liftIO
      (ghcjs_dom_svg_style_element_set_disabled
         (unSVGStyleElement (toSVGStyleElement self))
         val)
 
foreign import javascript unsafe "($1[\"disabled\"] ? 1 : 0)"
        ghcjs_dom_svg_style_element_get_disabled ::
        JSRef SVGStyleElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.disabled Mozilla SVGStyleElement.disabled documentation> 
svgStyleElementGetDisabled ::
                           (MonadIO m, IsSVGStyleElement self) => self -> m Bool
svgStyleElementGetDisabled self
  = liftIO
      (ghcjs_dom_svg_style_element_get_disabled
         (unSVGStyleElement (toSVGStyleElement self)))
 
foreign import javascript unsafe "$1[\"media\"] = $2;"
        ghcjs_dom_svg_style_element_set_media ::
        JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
svgStyleElementSetMedia ::
                        (MonadIO m, IsSVGStyleElement self, ToJSString val) =>
                          self -> val -> m ()
svgStyleElementSetMedia self val
  = liftIO
      (ghcjs_dom_svg_style_element_set_media
         (unSVGStyleElement (toSVGStyleElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"media\"]"
        ghcjs_dom_svg_style_element_get_media ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.media Mozilla SVGStyleElement.media documentation> 
svgStyleElementGetMedia ::
                        (MonadIO m, IsSVGStyleElement self, FromJSString result) =>
                          self -> m result
svgStyleElementGetMedia self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_style_element_get_media
            (unSVGStyleElement (toSVGStyleElement self))))
 
foreign import javascript unsafe "$1[\"title\"] = $2;"
        ghcjs_dom_svg_style_element_set_title ::
        JSRef SVGStyleElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
svgStyleElementSetTitle ::
                        (MonadIO m, IsSVGStyleElement self, ToJSString val) =>
                          self -> val -> m ()
svgStyleElementSetTitle self val
  = liftIO
      (ghcjs_dom_svg_style_element_set_title
         (unSVGStyleElement (toSVGStyleElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]"
        ghcjs_dom_svg_style_element_get_title ::
        JSRef SVGStyleElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGStyleElement.title Mozilla SVGStyleElement.title documentation> 
svgStyleElementGetTitle ::
                        (MonadIO m, IsSVGStyleElement self, FromJSString result) =>
                          self -> m result
svgStyleElementGetTitle self
  = liftIO
      (fromJSString <$>
         (ghcjs_dom_svg_style_element_get_title
            (unSVGStyleElement (toSVGStyleElement self))))
#else
module GHCJS.DOM.SVGStyleElement (
  ) where
#endif
