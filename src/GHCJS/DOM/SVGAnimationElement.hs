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

 
foreign import javascript unsafe "$1[\"getStartTime\"]()"
        ghcjs_dom_svg_animation_element_get_start_time ::
        JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.startTime Mozilla SVGAnimationElement.startTime documentation> 
svgAnimationElementGetStartTime ::
                                (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetStartTime self
  = ghcjs_dom_svg_animation_element_get_start_time
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getCurrentTime\"]()"
        ghcjs_dom_svg_animation_element_get_current_time ::
        JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.currentTime Mozilla SVGAnimationElement.currentTime documentation> 
svgAnimationElementGetCurrentTime ::
                                  (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetCurrentTime self
  = ghcjs_dom_svg_animation_element_get_current_time
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"getSimpleDuration\"]()"
        ghcjs_dom_svg_animation_element_get_simple_duration ::
        JSRef SVGAnimationElement -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.simpleDuration Mozilla SVGAnimationElement.simpleDuration documentation> 
svgAnimationElementGetSimpleDuration ::
                                     (IsSVGAnimationElement self) => self -> IO Float
svgAnimationElementGetSimpleDuration self
  = ghcjs_dom_svg_animation_element_get_simple_duration
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElement\"]()"
        ghcjs_dom_svg_animation_element_begin_element ::
        JSRef SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElement Mozilla SVGAnimationElement.beginElement documentation> 
svgAnimationElementBeginElement ::
                                (IsSVGAnimationElement self) => self -> IO ()
svgAnimationElementBeginElement self
  = ghcjs_dom_svg_animation_element_begin_element
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"beginElementAt\"]($2)"
        ghcjs_dom_svg_animation_element_begin_element_at ::
        JSRef SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.beginElementAt Mozilla SVGAnimationElement.beginElementAt documentation> 
svgAnimationElementBeginElementAt ::
                                  (IsSVGAnimationElement self) => self -> Float -> IO ()
svgAnimationElementBeginElementAt self offset
  = ghcjs_dom_svg_animation_element_begin_element_at
      (unSVGAnimationElement (toSVGAnimationElement self))
      offset
 
foreign import javascript unsafe "$1[\"endElement\"]()"
        ghcjs_dom_svg_animation_element_end_element ::
        JSRef SVGAnimationElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElement Mozilla SVGAnimationElement.endElement documentation> 
svgAnimationElementEndElement ::
                              (IsSVGAnimationElement self) => self -> IO ()
svgAnimationElementEndElement self
  = ghcjs_dom_svg_animation_element_end_element
      (unSVGAnimationElement (toSVGAnimationElement self))
 
foreign import javascript unsafe "$1[\"endElementAt\"]($2)"
        ghcjs_dom_svg_animation_element_end_element_at ::
        JSRef SVGAnimationElement -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.endElementAt Mozilla SVGAnimationElement.endElementAt documentation> 
svgAnimationElementEndElementAt ::
                                (IsSVGAnimationElement self) => self -> Float -> IO ()
svgAnimationElementEndElementAt self offset
  = ghcjs_dom_svg_animation_element_end_element_at
      (unSVGAnimationElement (toSVGAnimationElement self))
      offset
 
foreign import javascript unsafe "$1[\"targetElement\"]"
        ghcjs_dom_svg_animation_element_get_target_element ::
        JSRef SVGAnimationElement -> IO (JSRef SVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimationElement.targetElement Mozilla SVGAnimationElement.targetElement documentation> 
svgAnimationElementGetTargetElement ::
                                    (IsSVGAnimationElement self) => self -> IO (Maybe SVGElement)
svgAnimationElementGetTargetElement self
  = (ghcjs_dom_svg_animation_element_get_target_element
       (unSVGAnimationElement (toSVGAnimationElement self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGAnimationElement (
  ) where
#endif