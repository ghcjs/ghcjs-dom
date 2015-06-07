{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.HTMLLegendElement
       (js_getForm, getForm, js_setAlign, setAlign, js_getAlign, getAlign,
        HTMLLegendElement, castToHTMLLegendElement, gTypeHTMLLegendElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        JSRef HTMLLegendElement -> IO (JSRef HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.form Mozilla HTMLLegendElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLLegendElement -> m (Maybe HTMLFormElement)
getForm self
  = liftIO ((js_getForm (unHTMLLegendElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLLegendElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLLegendElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLLegendElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLLegendElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLLegendElement.align Mozilla HTMLLegendElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLLegendElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLLegendElement self)))