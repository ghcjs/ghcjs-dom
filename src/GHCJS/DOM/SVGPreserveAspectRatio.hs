{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPreserveAspectRatio
       (cSVG_PRESERVEASPECTRATIO_UNKNOWN, cSVG_PRESERVEASPECTRATIO_NONE,
        cSVG_PRESERVEASPECTRATIO_XMINYMIN,
        cSVG_PRESERVEASPECTRATIO_XMIDYMIN,
        cSVG_PRESERVEASPECTRATIO_XMAXYMIN,
        cSVG_PRESERVEASPECTRATIO_XMINYMID,
        cSVG_PRESERVEASPECTRATIO_XMIDYMID,
        cSVG_PRESERVEASPECTRATIO_XMAXYMID,
        cSVG_PRESERVEASPECTRATIO_XMINYMAX,
        cSVG_PRESERVEASPECTRATIO_XMIDYMAX,
        cSVG_PRESERVEASPECTRATIO_XMAXYMAX, cSVG_MEETORSLICE_UNKNOWN,
        cSVG_MEETORSLICE_MEET, cSVG_MEETORSLICE_SLICE,
        ghcjs_dom_svg_preserve_aspect_ratio_set_align,
        svgPreserveAspectRatioSetAlign,
        ghcjs_dom_svg_preserve_aspect_ratio_get_align,
        svgPreserveAspectRatioGetAlign,
        ghcjs_dom_svg_preserve_aspect_ratio_set_meet_or_slice,
        svgPreserveAspectRatioSetMeetOrSlice,
        ghcjs_dom_svg_preserve_aspect_ratio_get_meet_or_slice,
        svgPreserveAspectRatioGetMeetOrSlice, SVGPreserveAspectRatio,
        IsSVGPreserveAspectRatio, castToSVGPreserveAspectRatio,
        gTypeSVGPreserveAspectRatio, toSVGPreserveAspectRatio)
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

cSVG_PRESERVEASPECTRATIO_UNKNOWN = 0
cSVG_PRESERVEASPECTRATIO_NONE = 1
cSVG_PRESERVEASPECTRATIO_XMINYMIN = 2
cSVG_PRESERVEASPECTRATIO_XMIDYMIN = 3
cSVG_PRESERVEASPECTRATIO_XMAXYMIN = 4
cSVG_PRESERVEASPECTRATIO_XMINYMID = 5
cSVG_PRESERVEASPECTRATIO_XMIDYMID = 6
cSVG_PRESERVEASPECTRATIO_XMAXYMID = 7
cSVG_PRESERVEASPECTRATIO_XMINYMAX = 8
cSVG_PRESERVEASPECTRATIO_XMIDYMAX = 9
cSVG_PRESERVEASPECTRATIO_XMAXYMAX = 10
cSVG_MEETORSLICE_UNKNOWN = 0
cSVG_MEETORSLICE_MEET = 1
cSVG_MEETORSLICE_SLICE = 2
 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_svg_preserve_aspect_ratio_set_align ::
        JSRef SVGPreserveAspectRatio -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
svgPreserveAspectRatioSetAlign ::
                               (IsSVGPreserveAspectRatio self) => self -> Word -> IO ()
svgPreserveAspectRatioSetAlign self val
  = ghcjs_dom_svg_preserve_aspect_ratio_set_align
      (unSVGPreserveAspectRatio (toSVGPreserveAspectRatio self))
      val
 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_svg_preserve_aspect_ratio_get_align ::
        JSRef SVGPreserveAspectRatio -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.align Mozilla SVGPreserveAspectRatio.align documentation> 
svgPreserveAspectRatioGetAlign ::
                               (IsSVGPreserveAspectRatio self) => self -> IO Word
svgPreserveAspectRatioGetAlign self
  = ghcjs_dom_svg_preserve_aspect_ratio_get_align
      (unSVGPreserveAspectRatio (toSVGPreserveAspectRatio self))
 
foreign import javascript unsafe "$1[\"meetOrSlice\"] = $2;"
        ghcjs_dom_svg_preserve_aspect_ratio_set_meet_or_slice ::
        JSRef SVGPreserveAspectRatio -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
svgPreserveAspectRatioSetMeetOrSlice ::
                                     (IsSVGPreserveAspectRatio self) => self -> Word -> IO ()
svgPreserveAspectRatioSetMeetOrSlice self val
  = ghcjs_dom_svg_preserve_aspect_ratio_set_meet_or_slice
      (unSVGPreserveAspectRatio (toSVGPreserveAspectRatio self))
      val
 
foreign import javascript unsafe "$1[\"meetOrSlice\"]"
        ghcjs_dom_svg_preserve_aspect_ratio_get_meet_or_slice ::
        JSRef SVGPreserveAspectRatio -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGPreserveAspectRatio.meetOrSlice Mozilla SVGPreserveAspectRatio.meetOrSlice documentation> 
svgPreserveAspectRatioGetMeetOrSlice ::
                                     (IsSVGPreserveAspectRatio self) => self -> IO Word
svgPreserveAspectRatioGetMeetOrSlice self
  = ghcjs_dom_svg_preserve_aspect_ratio_get_meet_or_slice
      (unSVGPreserveAspectRatio (toSVGPreserveAspectRatio self))
#else
module GHCJS.DOM.SVGPreserveAspectRatio (
  ) where
#endif
