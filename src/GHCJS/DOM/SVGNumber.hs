{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGNumber
       (ghcjs_dom_svg_number_set_value, svgNumberSetValue,
        ghcjs_dom_svg_number_get_value, svgNumberGetValue, SVGNumber,
        IsSVGNumber, castToSVGNumber, gTypeSVGNumber, toSVGNumber)
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

 
foreign import javascript unsafe "$1[\"value\"] = $2;"
        ghcjs_dom_svg_number_set_value :: JSRef SVGNumber -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber.value Mozilla SVGNumber.value documentation> 
svgNumberSetValue :: (IsSVGNumber self) => self -> Float -> IO ()
svgNumberSetValue self val
  = ghcjs_dom_svg_number_set_value (unSVGNumber (toSVGNumber self))
      val
 
foreign import javascript unsafe "$1[\"value\"]"
        ghcjs_dom_svg_number_get_value :: JSRef SVGNumber -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGNumber.value Mozilla SVGNumber.value documentation> 
svgNumberGetValue :: (IsSVGNumber self) => self -> IO Float
svgNumberGetValue self
  = ghcjs_dom_svg_number_get_value (unSVGNumber (toSVGNumber self))
#else
module GHCJS.DOM.SVGNumber (
  ) where
#endif
