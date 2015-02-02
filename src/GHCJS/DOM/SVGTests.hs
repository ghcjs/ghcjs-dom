{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGTests
       (ghcjs_dom_svg_tests_has_extension, svgTestsHasExtension,
        ghcjs_dom_svg_tests_get_required_features,
        svgTestsGetRequiredFeatures,
        ghcjs_dom_svg_tests_get_required_extensions,
        svgTestsGetRequiredExtensions,
        ghcjs_dom_svg_tests_get_system_language, svgTestsGetSystemLanguage,
        SVGTests, IsSVGTests, castToSVGTests, gTypeSVGTests, toSVGTests)
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

 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)"
        ghcjs_dom_svg_tests_has_extension ::
        JSRef SVGTests -> JSString -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.hasExtension Mozilla SVGTests.hasExtension documentation> 
svgTestsHasExtension ::
                     (IsSVGTests self, ToJSString extension) =>
                       self -> extension -> IO Bool
svgTestsHasExtension self extension
  = ghcjs_dom_svg_tests_has_extension (unSVGTests (toSVGTests self))
      (toJSString extension)
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        ghcjs_dom_svg_tests_get_required_features ::
        JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredFeatures Mozilla SVGTests.requiredFeatures documentation> 
svgTestsGetRequiredFeatures ::
                            (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetRequiredFeatures self
  = (ghcjs_dom_svg_tests_get_required_features
       (unSVGTests (toSVGTests self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        ghcjs_dom_svg_tests_get_required_extensions ::
        JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.requiredExtensions Mozilla SVGTests.requiredExtensions documentation> 
svgTestsGetRequiredExtensions ::
                              (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetRequiredExtensions self
  = (ghcjs_dom_svg_tests_get_required_extensions
       (unSVGTests (toSVGTests self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        ghcjs_dom_svg_tests_get_system_language ::
        JSRef SVGTests -> IO (JSRef SVGStringList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGTests.systemLanguage Mozilla SVGTests.systemLanguage documentation> 
svgTestsGetSystemLanguage ::
                          (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetSystemLanguage self
  = (ghcjs_dom_svg_tests_get_system_language
       (unSVGTests (toSVGTests self)))
      >>= fromJSRef
#else
module GHCJS.DOM.SVGTests (
  ) where
#endif
