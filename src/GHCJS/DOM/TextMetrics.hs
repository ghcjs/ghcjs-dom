{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.TextMetrics
       (ghcjs_dom_text_metrics_get_width, textMetricsGetWidth,
        TextMetrics(..), IsTextMetrics, castToTextMetrics,
        gTypeTextMetrics, toTextMetrics)
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

 
foreign import javascript unsafe "$1[\"width\"]"
        ghcjs_dom_text_metrics_get_width :: JSRef TextMetrics -> IO Float

-- | <https://developer.mozilla.org/en-US/docs/Web/API/TextMetrics.width Mozilla TextMetrics.width documentation> 
textMetricsGetWidth ::
                    (MonadIO m, IsTextMetrics self) => self -> m Float
textMetricsGetWidth self
  = liftIO
      (ghcjs_dom_text_metrics_get_width
         (unTextMetrics (toTextMetrics self)))
#else
module GHCJS.DOM.TextMetrics (
  ) where
#endif
