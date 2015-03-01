{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CanvasGradient
       (js_addColorStop, addColorStop, CanvasGradient,
        castToCanvasGradient, gTypeCanvasGradient)
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
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"addColorStop\"]($2, $3)"
        js_addColorStop ::
        JSRef CanvasGradient -> Float -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CanvasGradient.addColorStop Mozilla CanvasGradient.addColorStop documentation> 
addColorStop ::
             (MonadIO m, ToJSString color) =>
               CanvasGradient -> Float -> color -> m ()
addColorStop self offset color
  = liftIO
      (js_addColorStop (unCanvasGradient self) offset (toJSString color))
#else
module GHCJS.DOM.CanvasGradient (
  ) where
#endif
