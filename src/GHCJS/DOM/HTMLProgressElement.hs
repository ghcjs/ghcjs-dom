{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLProgressElement
       (js_setValue, setValue, js_getValue, getValue, js_setMax, setMax,
        js_getMax, getMax, js_getPosition, getPosition, js_getLabels,
        getLabels, HTMLProgressElement, castToHTMLProgressElement,
        gTypeHTMLProgressElement)
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

 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: JSRef HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
setValue :: (MonadIO m) => HTMLProgressElement -> Double -> m ()
setValue self val
  = liftIO (js_setValue (unHTMLProgressElement self) val)
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.value Mozilla HTMLProgressElement.value documentation> 
getValue :: (MonadIO m) => HTMLProgressElement -> m Double
getValue self = liftIO (js_getValue (unHTMLProgressElement self))
 
foreign import javascript unsafe "$1[\"max\"] = $2;" js_setMax ::
        JSRef HTMLProgressElement -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
setMax :: (MonadIO m) => HTMLProgressElement -> Double -> m ()
setMax self val
  = liftIO (js_setMax (unHTMLProgressElement self) val)
 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.max Mozilla HTMLProgressElement.max documentation> 
getMax :: (MonadIO m) => HTMLProgressElement -> m Double
getMax self = liftIO (js_getMax (unHTMLProgressElement self))
 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: JSRef HTMLProgressElement -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.position Mozilla HTMLProgressElement.position documentation> 
getPosition :: (MonadIO m) => HTMLProgressElement -> m Double
getPosition self
  = liftIO (js_getPosition (unHTMLProgressElement self))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        JSRef HTMLProgressElement -> IO (JSRef NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLProgressElement.labels Mozilla HTMLProgressElement.labels documentation> 
getLabels ::
          (MonadIO m) => HTMLProgressElement -> m (Maybe NodeList)
getLabels self
  = liftIO
      ((js_getLabels (unHTMLProgressElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLProgressElement (
  ) where
#endif
