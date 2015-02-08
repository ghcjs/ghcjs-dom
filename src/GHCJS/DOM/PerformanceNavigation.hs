{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.PerformanceNavigation
       (cTYPE_NAVIGATE, cTYPE_RELOAD, cTYPE_BACK_FORWARD, cTYPE_RESERVED,
        ghcjs_dom_performance_navigation_get_redirect_count,
        performanceNavigationGetRedirectCount, PerformanceNavigation,
        IsPerformanceNavigation, castToPerformanceNavigation,
        gTypePerformanceNavigation, toPerformanceNavigation)
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

cTYPE_NAVIGATE = 0
cTYPE_RELOAD = 1
cTYPE_BACK_FORWARD = 2
cTYPE_RESERVED = 255
 
foreign import javascript unsafe "$1[\"redirectCount\"]"
        ghcjs_dom_performance_navigation_get_redirect_count ::
        JSRef PerformanceNavigation -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation.redirectCount Mozilla PerformanceNavigation.redirectCount documentation> 
performanceNavigationGetRedirectCount ::
                                      (MonadIO m, IsPerformanceNavigation self) => self -> m Word
performanceNavigationGetRedirectCount self
  = liftIO
      (ghcjs_dom_performance_navigation_get_redirect_count
         (unPerformanceNavigation (toPerformanceNavigation self)))
#else
module GHCJS.DOM.PerformanceNavigation (
  ) where
#endif
