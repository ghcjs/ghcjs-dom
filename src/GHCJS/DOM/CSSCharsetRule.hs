{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CSSCharsetRule
       (js_setEncoding, setEncoding, js_getEncoding, getEncoding,
        CSSCharsetRule, castToCSSCharsetRule, gTypeCSSCharsetRule)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"encoding\"] = $2;"
        js_setEncoding :: JSRef CSSCharsetRule -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
setEncoding ::
            (MonadIO m, ToJSString val) => CSSCharsetRule -> val -> m ()
setEncoding self val
  = liftIO (js_setEncoding (unCSSCharsetRule self) (toJSString val))
 
foreign import javascript unsafe "$1[\"encoding\"]" js_getEncoding
        :: JSRef CSSCharsetRule -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CSSCharsetRule.encoding Mozilla CSSCharsetRule.encoding documentation> 
getEncoding ::
            (MonadIO m, FromJSString result) => CSSCharsetRule -> m result
getEncoding self
  = liftIO
      (fromJSString <$> (js_getEncoding (unCSSCharsetRule self)))
#else
module GHCJS.DOM.CSSCharsetRule (
  ) where
#endif
