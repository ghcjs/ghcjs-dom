{-# LANGUAGE CPP #-}
module GHCJS.DOM.WebKitSubtleCrypto (
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
  module GHCJS.DOM.JSFFI.Generated.WebKitSubtleCrypto
#else
#endif
  ) where
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
import GHCJS.DOM.JSFFI.Generated.WebKitSubtleCrypto
#else
#endif
