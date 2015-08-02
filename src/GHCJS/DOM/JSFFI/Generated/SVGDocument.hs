{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.SVGDocument
       (js_createEvent, createEvent, js_getRootElement, getRootElement,
        SVGDocument, castToSVGDocument, gTypeSVGDocument)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
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
 
foreign import javascript unsafe "$1[\"createEvent\"]($2)"
        js_createEvent :: JSRef SVGDocument -> JSString -> IO (JSRef Event)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.createEvent Mozilla SVGDocument.createEvent documentation> 
createEvent ::
            (MonadIO m, ToJSString eventType) =>
              SVGDocument -> eventType -> m (Maybe Event)
createEvent self eventType
  = liftIO
      ((js_createEvent (unSVGDocument self) (toJSString eventType)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"rootElement\"]"
        js_getRootElement :: JSRef SVGDocument -> IO (JSRef SVGSVGElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGDocument.rootElement Mozilla SVGDocument.rootElement documentation> 
getRootElement ::
               (MonadIO m) => SVGDocument -> m (Maybe SVGSVGElement)
getRootElement self
  = liftIO ((js_getRootElement (unSVGDocument self)) >>= fromJSRef)