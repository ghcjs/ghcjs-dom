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
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

 
foreign import javascript unsafe
        "($1[\"hasExtension\"]($2) ? 1 : 0)"
        ghcjs_dom_svg_tests_has_extension ::
        JSRef SVGTests -> JSString -> IO Bool
 
svgTestsHasExtension ::
                     (IsSVGTests self, ToJSString extension) =>
                       self -> extension -> IO Bool
svgTestsHasExtension self extension
  = ghcjs_dom_svg_tests_has_extension (unSVGTests (toSVGTests self))
      (toJSString extension)
 
foreign import javascript unsafe "$1[\"requiredFeatures\"]"
        ghcjs_dom_svg_tests_get_required_features ::
        JSRef SVGTests -> IO (JSRef SVGStringList)
 
svgTestsGetRequiredFeatures ::
                            (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetRequiredFeatures self
  = fmap SVGStringList . maybeJSNull <$>
      (ghcjs_dom_svg_tests_get_required_features
         (unSVGTests (toSVGTests self)))
 
foreign import javascript unsafe "$1[\"requiredExtensions\"]"
        ghcjs_dom_svg_tests_get_required_extensions ::
        JSRef SVGTests -> IO (JSRef SVGStringList)
 
svgTestsGetRequiredExtensions ::
                              (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetRequiredExtensions self
  = fmap SVGStringList . maybeJSNull <$>
      (ghcjs_dom_svg_tests_get_required_extensions
         (unSVGTests (toSVGTests self)))
 
foreign import javascript unsafe "$1[\"systemLanguage\"]"
        ghcjs_dom_svg_tests_get_system_language ::
        JSRef SVGTests -> IO (JSRef SVGStringList)
 
svgTestsGetSystemLanguage ::
                          (IsSVGTests self) => self -> IO (Maybe SVGStringList)
svgTestsGetSystemLanguage self
  = fmap SVGStringList . maybeJSNull <$>
      (ghcjs_dom_svg_tests_get_system_language
         (unSVGTests (toSVGTests self)))
#else
module GHCJS.DOM.SVGTests (
  module Graphics.UI.Gtk.WebKit.DOM.SVGTests
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGTests
#endif
