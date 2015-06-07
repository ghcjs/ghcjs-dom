{-# LANGUAGE CPP #-}
module GHCJS.DOM.SpeechSynthesisUtterance (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.SpeechSynthesisUtterance
#else
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.SpeechSynthesisUtterance
#else
#endif
