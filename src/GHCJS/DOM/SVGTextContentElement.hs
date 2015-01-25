{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTextContentElement
       (ghcjs_dom_svg_text_content_element_get_number_of_chars,
        svgTextContentElementGetNumberOfChars,
        ghcjs_dom_svg_text_content_element_get_computed_text_length,
        svgTextContentElementGetComputedTextLength,
        ghcjs_dom_svg_text_content_element_get_sub_string_length,
        svgTextContentElementGetSubStringLength,
        ghcjs_dom_svg_text_content_element_get_start_position_of_char,
        svgTextContentElementGetStartPositionOfChar,
        ghcjs_dom_svg_text_content_element_get_end_position_of_char,
        svgTextContentElementGetEndPositionOfChar,
        ghcjs_dom_svg_text_content_element_get_extent_of_char,
        svgTextContentElementGetExtentOfChar,
        ghcjs_dom_svg_text_content_element_get_rotation_of_char,
        svgTextContentElementGetRotationOfChar,
        ghcjs_dom_svg_text_content_element_get_char_num_at_position,
        svgTextContentElementGetCharNumAtPosition,
        ghcjs_dom_svg_text_content_element_select_sub_string,
        svgTextContentElementSelectSubString, cLENGTHADJUST_UNKNOWN,
        cLENGTHADJUST_SPACING, cLENGTHADJUST_SPACINGANDGLYPHS,
        ghcjs_dom_svg_text_content_element_get_text_length,
        svgTextContentElementGetTextLength,
        ghcjs_dom_svg_text_content_element_get_length_adjust,
        svgTextContentElementGetLengthAdjust, SVGTextContentElement,
        IsSVGTextContentElement, castToSVGTextContentElement,
        gTypeSVGTextContentElement, toSVGTextContentElement)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe "$1[\"getNumberOfChars\"]()"
        ghcjs_dom_svg_text_content_element_get_number_of_chars ::
        JSRef SVGTextContentElement -> IO Int
 
svgTextContentElementGetNumberOfChars ::
                                      (IsSVGTextContentElement self) => self -> IO Int
svgTextContentElementGetNumberOfChars self
  = ghcjs_dom_svg_text_content_element_get_number_of_chars
      (unSVGTextContentElement (toSVGTextContentElement self))
 
foreign import javascript unsafe "$1[\"getComputedTextLength\"]()"
        ghcjs_dom_svg_text_content_element_get_computed_text_length ::
        JSRef SVGTextContentElement -> IO Float
 
svgTextContentElementGetComputedTextLength ::
                                           (IsSVGTextContentElement self) => self -> IO Float
svgTextContentElementGetComputedTextLength self
  = ghcjs_dom_svg_text_content_element_get_computed_text_length
      (unSVGTextContentElement (toSVGTextContentElement self))
 
foreign import javascript unsafe
        "$1[\"getSubStringLength\"]($2, $3)"
        ghcjs_dom_svg_text_content_element_get_sub_string_length ::
        JSRef SVGTextContentElement -> Word -> Word -> IO Float
 
svgTextContentElementGetSubStringLength ::
                                        (IsSVGTextContentElement self) =>
                                          self -> Word -> Word -> IO Float
svgTextContentElementGetSubStringLength self offset length
  = ghcjs_dom_svg_text_content_element_get_sub_string_length
      (unSVGTextContentElement (toSVGTextContentElement self))
      offset
      length
 
foreign import javascript unsafe
        "$1[\"getStartPositionOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_start_position_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)
 
svgTextContentElementGetStartPositionOfChar ::
                                            (IsSVGTextContentElement self) =>
                                              self -> Word -> IO (Maybe SVGPoint)
svgTextContentElementGetStartPositionOfChar self offset
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_text_content_element_get_start_position_of_char
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset)
 
foreign import javascript unsafe "$1[\"getEndPositionOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_end_position_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGPoint)
 
svgTextContentElementGetEndPositionOfChar ::
                                          (IsSVGTextContentElement self) =>
                                            self -> Word -> IO (Maybe SVGPoint)
svgTextContentElementGetEndPositionOfChar self offset
  = fmap SVGPoint . maybeJSNull <$>
      (ghcjs_dom_svg_text_content_element_get_end_position_of_char
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset)
 
foreign import javascript unsafe "$1[\"getExtentOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_extent_of_char ::
        JSRef SVGTextContentElement -> Word -> IO (JSRef SVGRect)
 
svgTextContentElementGetExtentOfChar ::
                                     (IsSVGTextContentElement self) =>
                                       self -> Word -> IO (Maybe SVGRect)
svgTextContentElementGetExtentOfChar self offset
  = fmap SVGRect . maybeJSNull <$>
      (ghcjs_dom_svg_text_content_element_get_extent_of_char
         (unSVGTextContentElement (toSVGTextContentElement self))
         offset)
 
foreign import javascript unsafe "$1[\"getRotationOfChar\"]($2)"
        ghcjs_dom_svg_text_content_element_get_rotation_of_char ::
        JSRef SVGTextContentElement -> Word -> IO Float
 
svgTextContentElementGetRotationOfChar ::
                                       (IsSVGTextContentElement self) => self -> Word -> IO Float
svgTextContentElementGetRotationOfChar self offset
  = ghcjs_dom_svg_text_content_element_get_rotation_of_char
      (unSVGTextContentElement (toSVGTextContentElement self))
      offset
 
foreign import javascript unsafe "$1[\"getCharNumAtPosition\"]($2)"
        ghcjs_dom_svg_text_content_element_get_char_num_at_position ::
        JSRef SVGTextContentElement -> JSRef SVGPoint -> IO Int
 
svgTextContentElementGetCharNumAtPosition ::
                                          (IsSVGTextContentElement self, IsSVGPoint point) =>
                                            self -> Maybe point -> IO Int
svgTextContentElementGetCharNumAtPosition self point
  = ghcjs_dom_svg_text_content_element_get_char_num_at_position
      (unSVGTextContentElement (toSVGTextContentElement self))
      (maybe jsNull (unSVGPoint . toSVGPoint) point)
 
foreign import javascript unsafe "$1[\"selectSubString\"]($2, $3)"
        ghcjs_dom_svg_text_content_element_select_sub_string ::
        JSRef SVGTextContentElement -> Word -> Word -> IO ()
 
svgTextContentElementSelectSubString ::
                                     (IsSVGTextContentElement self) => self -> Word -> Word -> IO ()
svgTextContentElementSelectSubString self offset length
  = ghcjs_dom_svg_text_content_element_select_sub_string
      (unSVGTextContentElement (toSVGTextContentElement self))
      offset
      length
cLENGTHADJUST_UNKNOWN = 0
cLENGTHADJUST_SPACING = 1
cLENGTHADJUST_SPACINGANDGLYPHS = 2
 
foreign import javascript unsafe "$1[\"textLength\"]"
        ghcjs_dom_svg_text_content_element_get_text_length ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedLength)
 
svgTextContentElementGetTextLength ::
                                   (IsSVGTextContentElement self) =>
                                     self -> IO (Maybe SVGAnimatedLength)
svgTextContentElementGetTextLength self
  = fmap SVGAnimatedLength . maybeJSNull <$>
      (ghcjs_dom_svg_text_content_element_get_text_length
         (unSVGTextContentElement (toSVGTextContentElement self)))
 
foreign import javascript unsafe "$1[\"lengthAdjust\"]"
        ghcjs_dom_svg_text_content_element_get_length_adjust ::
        JSRef SVGTextContentElement -> IO (JSRef SVGAnimatedEnumeration)
 
svgTextContentElementGetLengthAdjust ::
                                     (IsSVGTextContentElement self) =>
                                       self -> IO (Maybe SVGAnimatedEnumeration)
svgTextContentElementGetLengthAdjust self
  = fmap SVGAnimatedEnumeration . maybeJSNull <$>
      (ghcjs_dom_svg_text_content_element_get_length_adjust
         (unSVGTextContentElement (toSVGTextContentElement self)))
#else
module GHCJS.DOM.SVGTextContentElement (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTextContentElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTextContentElement
#endif
