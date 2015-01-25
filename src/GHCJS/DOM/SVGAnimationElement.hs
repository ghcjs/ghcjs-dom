{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimationElement
       (ghcjs_dom_svg_animation_element_get_start_time,
        svgAnimationElementGetStartTime,
        ghcjs_dom_svg_animation_element_get_current_time,
        svgAnimationElementGetCurrentTime,
        ghcjs_dom_svg_animation_element_get_simple_duration,
        svgAnimationElementGetSimpleDuration,
        ghcjs_dom_svg_animation_element_begin_element,
        svgAnimationElementBeginElement,
        ghcjs_dom_svg_animation_element_begin_element_at,
        svgAnimationElementBeginElementAt,
        ghcjs_dom_svg_animation_element_end_element,
        svgAnimationElementEndElement,
        ghcjs_dom_svg_animation_element_end_element_at,
        svgAnimationElementEndElementAt,
        ghcjs_dom_svg_animation_element_get_target_element,
        svgAnimationElementGetTargetElement, SVGAnimationElement,
        IsSVGAnimationElement, castToSVGAnimationElement,
        gTypeSVGAnimationElement, toSVGAnimationElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"getStartTime\"]()"
        ghcjs_dom_svg_animation_element_get_start_time ::
        JSRef SVGAnimationElement -> IO Float
 
svgAnimationElementGetStartTime ::
                                (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetStartTime self
  = ghcjs_dom_svg_animation_element_get_start_time
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        ghcjs_dom_svg_animation_element_get_current_time ::
        JSRef SVGAnimationElement -> IO Float
 
svgAnimationElementGetCurrentTime ::
                                  (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetCurrentTime self
  = ghcjs_dom_svg_animation_element_get_current_time
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getSimpleDuration\"]()"
        ghcjs_dom_svg_animation_element_get_simple_duration ::
        JSRef SVGAnimationElement -> IO Float
 
svgAnimationElementGetSimpleDuration ::
                                     (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetSimpleDuration self
  = ghcjs_dom_svg_animation_element_get_simple_duration
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElement\"]()"
        ghcjs_dom_svg_animation_element_begin_element ::
        JSRef SVGAnimationElement -> IO ()
 
svgAnimationElementBeginElement ::
                                (IsSVGAnimationElement self) => self -> IO ()
svgAnimationElementBeginElement self
  = ghcjs_dom_svg_animation_element_begin_element
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElementAt\"]($2)"
        ghcjs_dom_svg_animation_element_begin_element_at ::
        JSRef SVGAnimationElement -> Float -> IO ()
 
svgAnimationElementBeginElementAt ::
                                  (IsSVGAnimationElement self) => self -> Float -> IO ()
svgAnimationElementBeginElementAt self offset
  = ghcjs_dom_svg_animation_element_begin_element_at
      (unSVGAnimationElement (toSVGAnimationElement self))
      offset
 
foreign import javascript unsafe "$1[\"endElement\"]()"
        ghcjs_dom_svg_animation_element_end_element ::
        JSRef SVGAnimationElement -> IO ()
 
svgAnimationElementEndElement ::
                              (IsSVGAnimationElement self) => self -> IO ()
svgAnimationElementEndElement self
  = ghcjs_dom_svg_animation_element_end_element
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"endElementAt\"]($2)"
        ghcjs_dom_svg_animation_element_end_element_at ::
        JSRef SVGAnimationElement -> Float -> IO ()
 
svgAnimationElementEndElementAt ::
                                (IsSVGAnimationElement self) => self -> Float -> IO ()
svgAnimationElementEndElementAt self offset
  = ghcjs_dom_svg_animation_element_end_element_at
      (unSVGAnimationElement (toSVGAnimationElement self))
      offset
 
foreign import javascript unsafe "$1[\"targetElement\"]"
        ghcjs_dom_svg_animation_element_get_target_element ::
        JSRef SVGAnimationElement -> IO (JSRef SVGElement)
 
svgAnimationElementGetTargetElement ::
                                    (IsSVGAnimationElement self) => self -> IO (Maybe SVGElement)
svgAnimationElementGetTargetElement self
  = fmap SVGElement . maybeJSNull <$>
      (ghcjs_dom_svg_animation_element_get_target_element
         (unSVGAnimationElement (toSVGAnimationElement self)))
#else
module GHCJS.DOM.SVGAnimationElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGAnimationElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGAnimationElement
#endif
